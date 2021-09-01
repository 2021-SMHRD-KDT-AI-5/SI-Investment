import cx_Oracle
import pandas as pd
import numpy as np
from tqdm import tqdm

# conn = cx_Oracle.connect('접속이름/비밀번호@호스트이름:포트번호/SID)
conn = cx_Oracle.connect('cgi_7_2/smhrd2@project-db-stu.ddns.net:1524/xe')
cs = conn.cursor()

df_price = pd.read_csv('../../pythonProject4/주식 종목.csv', encoding='euc-kr', index_col = 0)
price = np.array(df_price)

# for stock in tqdm(price):
# jonkMokName = stock[1]

jonkMokName = '삼성카드'
juga = pd.read_csv('../../pythonProject4/주가 데이터 20년/{}_주가.csv'.format(jonkMokName), encoding='euc-kr', index_col=0)
juga = np.array(juga)
sale = pd.read_csv('../../pythonProject4/매매 데이터/{}_순매수.csv'.format(jonkMokName), encoding='euc-kr', index_col=0)
sale = np.array(sale)
# print(juga[3])
for i in range(119):
    predict = int(juga[i][3])+400
    data = (juga[i][0], juga[i][1], juga[i][2], juga[i][3], juga[i][6], juga[i][4], juga[i][5], juga[i][7], sale[i][3], sale[i][4], sale[i][5], predict)
    sql = 'INSERT INTO jugadata VALUES(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12)'  # 종목코드, 종목명 날짜, 시가, 종가, 고가, 저가, 총 거래량, 개인 거래량, 기관 거래량, 외국인 거래량, 예측 종가
    cs.execute(sql, data)

cs.close()
conn.commit()
conn.close()
