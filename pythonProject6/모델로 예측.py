import joblib
import pandas as pd
import numpy as np
from tensorflow.keras.models import load_model
import matplotlib.pyplot as plt

jonkMok = pd.read_csv('../pythonProject4/주식 종목.csv', encoding='euc-kr', index_col = 0)
jonkMok = np.array(jonkMok)

for jonkMokName in jonkMok:
    juga = pd.read_csv('../pythonProject4/주가 데이터 20년/{}_주가.csv'.format(jonkMokName[1]), encoding='euc-kr', index_col=0)
    juga = np.array(juga)
    predictData = juga[-21:-1,3:7]
    predictData = predictData.reshape(-1,20,4)
    print(predictData.shape)
    # print( predictData)
    # model = joblib.load('에측 모델/{}_checkpoint.h5'.format(jonkMokName[1]))
    # model = joblib.load('예측 모델/CJ대한통운_checkpoint.h5')
    model = load_model('예측 모델/CJ대한통운_checkpoint.h5')
    pred = model.predict(predictData)

    print(pred)