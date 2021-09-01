from flask import Flask
from flask import request, redirect, make_response, Response, jsonify, render_template
import pythoncom
from flask import session
from urllib import parse

import pandas as pd
import numpy as np

import win32com.client
import pandas as pd
import time

jonkmokname = '카카오'

instStockChart = win32com.client.Dispatch("CpSysDib.StockChart")
instCpStockCode = win32com.client.Dispatch("CpUtil.CpStockCode")

instStockChart.SetInputValue(1, ord('2'))  # 요청구분 2-개수, 1-기간
instStockChart.SetInputValue(4, 1)  # 요청 개수
instStockChart.SetInputValue(5, (0, 2, 3, 4, 5, 8))  # 날짜, 시가, 고가, 저가, 종가, 거래량, 상장 주식수, 수정주가일자, 수정주가 비율
instStockChart.SetInputValue(6, ord('D'))  # 차트구분 D-일별
instStockChart.SetInputValue(9, ord('1'))  # 수정주가여부 0-비수정 1-수정주가

code = instCpStockCode.NameToCode(jonkmokname)
instStockChart.SetInputValue(0, code)  # 종목코드 설정
instStockChart.BlockRequest()

date = instStockChart.GetDataValue(0, 0)
start = instStockChart.GetDataValue(1, 0)
high = instStockChart.GetDataValue(2, 0)
low = instStockChart.GetDataValue(3, 0)
value = instStockChart.GetDataValue(4, 0)
sale = instStockChart.GetDataValue(5, 0)
