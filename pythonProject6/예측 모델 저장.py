import predict
import pandas as pd
import numpy as np

jonkMok = pd.read_csv('../pythonProject4/주식 종목.csv', encoding='euc-kr', index_col = 0)
jonkMok = np.array(jonkMok)

for jonkMokName in jonkMok:
    predict.jonkmokPredict(jonkMokName[1])