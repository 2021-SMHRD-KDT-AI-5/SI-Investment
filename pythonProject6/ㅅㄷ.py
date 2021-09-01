from flask import Flask, request, session, render_template, redirect

import pandas as pd
import numpy as np
from tensorflow.keras.models import load_model

def jonkMokPredict(jonkMokName):
    juga = pd.read_csv('../pythonProject4/주가 데이터 20년/{}_주가.csv'.format(jonkMokName)
                       , encoding='euc-kr', index_col=0)
    juga = np.array(juga)
    predictData = juga[-21:-1,3:7]
    predictData = predictData.reshape(-1,20,4)
    print(predictData.shape)
    model = load_model('예측 모델/CJ대한통운_checkpoint.h5')
    pred = model.predict(predictData)
    return pred

app = Flask(__name__)

@app.route('/predict', methods=['GET', 'POST'])
def jonkmok():
    if request.method == 'GET':
        jonkmokname = request.args['jonkmokname']

    else:
        jonkmokname = request.form['jonkmokname']

    pred = jonkMokPredict(jonkmokname)
    pred = pred.reshape(1)

    url = 'http://localhost:8090/3rdProejct2/pages/Predict.jsp?predict={}'.format(pred)
    print(url)

    return redirect(url)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port='5000')