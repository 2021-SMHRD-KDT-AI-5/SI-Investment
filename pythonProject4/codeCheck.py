import win32com.client
import pandas as pd
import numpy as np
instCpMgr = win32com.client.Dispatch('CpUtil.CpCodeMgr')
shop = instCpMgr.GetStockIndustryCode('A108450')

instCpStockCode = win32com.client.Dispatch("CpUtil.CpStockCode")
cnt = instCpStockCode.GetCount();
print("종목 개수 : " + str(cnt))
stockList = []

for i in range(cnt):
    code = instCpStockCode.GetData(0,i)
    name = instCpStockCode.GetData(1, i)
    shop = instCpMgr.GetStockIndustryCode(code)
    fullcode = instCpStockCode.GetData(2, i)
    stock = [i+1, code, name, fullcode, shop]
    stockList.append(stock)

index = ['번호', '종목코드', '종목명', 'fullcode', '상업코드']
st = pd.DataFrame(stockList, columns=index)
st.set_index('번호', inplace=True)
st.to_csv('주식 종목.csv',encoding="")