import win32com.client
import pandas as pd
import time
instCpCybos = win32com.client.Dispatch("CpUtil.CpCybos")
instStockChart = win32com.client.Dispatch("CpSysDib.StockChart")
instCpStockCode = win32com.client.Dispatch("CpUtil.CpStockCode")
instCpMgr = win32com.client.Dispatch('CpUtil.CpCodeMgr')
columns = ['종목코드', '종목명', '날짜', '시가', '고가', '저가', '종가',
           '거래량', '증권전산업종코드', '발행주식수', '수정주가일자', '수정주가 비율']

stockNum = instCpStockCode.GetCount()
instStockChart.SetInputValue(1, ord('1')) # 요청구분 2-개수, 1-기간
instStockChart.SetInputValue(3, 20000101) # 요청 시작날짜
instStockChart.SetInputValue(5, (0,2,3,4,5,8,12,18,19))
# 날짜, 시가, 고가, 저가, 종가, 거래량, 상장 주식수, 수정주가일자, 수정주가 비율
instStockChart.SetInputValue(6, ord('D')) # 차트구분 D-일별
instStockChart.SetInputValue(9, ord('0')) # 수정주가여부 0-비수정 1-수정주가

for stock in range(stockNum):
    limit = instCpCybos.GetLimitRemainCount(1)
    print("남은 주문 횟수 : {}회".format(limit))
    time.sleep(0.15)

    code = instCpStockCode.GetData(0, stock) # 종목코드
    shop = instCpMgr.GetStockIndustryCode(code)  # 증권전산업종코드
    instStockChart.SetInputValue(0, code) # 종목코드 설정
    name = instCpStockCode.CodeToName(code) # 종목 이름

    instStockChart.BlockRequest()
    cnt = instStockChart.GetHeaderValue(3)  # 수신 개수
    list1 = []

    print(name)
    for i in range(cnt):
        date = instStockChart.GetDataValue(0, i) # 날짜
        start = instStockChart.GetDataValue(1, i) # 시가
        high = instStockChart.GetDataValue(2, i) # 고가
        low = instStockChart.GetDataValue(3, i) # 저가
        value = instStockChart.GetDataValue(4, i) # 종가
        sale = instStockChart.GetDataValue(5, i) # 거래량
        total = instStockChart.GetDataValue(6, i) # 상장 주식수
        change = instStockChart.GetDataValue(7, i) # 수정주가일자
        changeRate = instStockChart.GetDataValue(8, i) # 수정주가 비율
        list1.append([code, name, date, start, high, low, value, sale, shop, total, change, changeRate])

    df2 = pd.DataFrame(list1, columns=columns)
    # df1 = pd.concat([df1,df2])
    df2.to_csv('주가 데이터 20년/{}_주가.csv'.format(name), encoding="")
    print(stock)