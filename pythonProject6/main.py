from flask import Flask
from flask import Flask, request, session, render_template, redirect
from flask import session
from urllib import parse

import joblib
import pandas as pd
import numpy as np
from tensorflow.keras.models import load_model
import matplotlib.pyplot as plt

# jonkMok = pd.read_csv('../pythonProject4/주식 종목.csv', encoding='euc-kr', index_col = 0)
# jonkMok = np.array(jonkMok)

def jonkMokPredict(jonkMokName):
    juga = pd.read_csv('../pythonProject4/주가 데이터 20년/{}_주가.csv'.format(jonkMokName), encoding='euc-kr', index_col=0)
    juga = np.array(juga)
    predictData = juga[-21:-1,3:7]
    predictData = predictData.reshape(-1,20,4)
    print(predictData.shape)
    # print( predictData)
    # model = joblib.load('예측 모델/{}_checkpoint.h5'.format(jonkMokName))
    # model = joblib.load('예측 모델/CJ대한통운_checkpoint.h5')
    model = load_model('예측 모델/CJ대한통운_checkpoint.h5')
    pred = model.predict(predictData)
    return pred

app = Flask(__name__)

@app.route('/predict', methods=['GET', 'POST'])
def jonkmok():
    if request.method == 'GET':
        jonkmokname = request.args['jongmokname']

    else:
        jonkmokname = request.form['jongmokname']

    pred = jonkMokPredict(jonkmokname)
    pred = int(pred[0])

    url = 'http://localhost:8090/3rdProejct2/pages/Predict.jsp?predict={}'.format(pred)
    print(url)

    return redirect(url)

@app.route('/users') # route 데코레이터
def user_id(): # View 함수

    return render_template('http://localhost:8090/3rdProejct2/pages/Predict.jsp', userid='정선일')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port='5000')