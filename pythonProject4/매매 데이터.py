import win32com.client
import pandas as pd
import time
instCpSvr7254 = win32com.client.Dispatch("CpSysDib.CpSvr7254")
instCpCybos = win32com.client.Dispatch("CpUtil.CpCybos")
instCpStockCode = win32com.client.Dispatch("CpUtil.CpStockCode")
columns = ['종목코드', '종목명', '날짜', '개인 순매수', '외국인 순매수', '기관 순매수']

stockNum = instCpStockCode.GetCount()

# for stock in range(stockNum):
for stock in range(stockNum):
    code = instCpStockCode.GetData(0, stock)  # 종목코드
    name = instCpStockCode.CodeToName(code)

    instCpSvr7254.SetInputValue(0, code) # 종목코드
    instCpSvr7254.SetInputValue(1, 4) # 기간선택구분
    instCpSvr7254.SetInputValue(4, ord('0')) # 매매비중구분
    instCpSvr7254.SetInputValue(5, 0) # 투자자
    instCpSvr7254.SetInputValue(6, ord('1'))

    instCpSvr7254.BlockRequest()

    cnt = instCpSvr7254.GetHeaderValue(1)  # 수신 개수
    list1 = []
    while(instCpSvr7254.Continue):
        limit = instCpCybos.GetLimitRemainCount(1)
        print("남은 주문 횟수 : {}회".format(limit))
        time.sleep(0.25)
        for i in range(cnt):
            date = instCpSvr7254.GetDataValue(0, i) # 일자
            start = instCpSvr7254.GetDataValue(1, i) # 개인
            high = instCpSvr7254.GetDataValue(2, i) # 외국인
            three = instCpSvr7254.GetDataValue(3, i) # 기관
            list1.append([code, name, date, start, high, three])
        instCpSvr7254.BlockRequest()
    df = pd.DataFrame(list1, columns=columns)
    df.to_csv('매매 데이터/{}_순매수.csv'.format(name), encoding="")
    print(stock)
