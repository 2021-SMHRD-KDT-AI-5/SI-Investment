import win32com.client
import numpy as np
# CYBOS의각종상태를확인
instCpCybos = win32com.client.Dispatch("CpUtil.CpCybos")
stockPrice = win32com.client.Dispatch('Dscbo1.StockMst')
# cybos 주식코드 조회
instCpStockCode = win32com.client.Dispatch("CpUtil.CpStockCode")
print('총 종목 수 : {}'.format(instCpStockCode.GetCount()))
stockChart = win32com.client.Dispatch('CpSysDib.StockChart')

svrNew = win32com.client.Dispatch('CpSysDib.CpSvrNew7221S')
# print(instCpCybos.ServerType) # 0 : 연결 끊김, 1: cybosplus 서버, 2: HTS 보통서버
# limitType에대한 제한을 하기까지 남은 요청개수를 반환  0: 주문 / 계좌 관련 RQ 요청, 1:시세관련 RQ 요청, 2:시세관련 SB
print(instCpCybos.GetLimitRemainCount(1))
# print(svrNew.GetHeaderValue(2))
# print(svrNew.GetDataValue(0,1))
# svrNew.SetInputValue(0,'A000150')

# for i in range(100):
#     print(instCpStockCode.GetData(0,i))

stockPrice.SetInputValue(0,'A001000')
data = stockPrice.GetDataValue(0,0)
# data = np.array(data)
# print(data.shape)
# print(data)
# print(type(data))
# for i in range(100):
#     print(stockPrice.GetHeaderValue(i))

# stockChart.SetInputValue(0,'A000150')
# stockChart.SetInputValue(1,2)
# stockChart.SetInputValue(4,1000)
# stockChart.SetInputValue(5,5)
#
# print(stockChart.GetHeaderValue(1))
# print(stockChart.GetDataValue(0,1))

temp = win32com.client.Dispatch('CpUtil.CpCodeMgr')

list1 = temp.GetMemberList()

code = instCpStockCode.NameToCode('청광건설')
print(code)

# for i in list1:
#     value = temp.GetMemberName(i)
#     print(value)