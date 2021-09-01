import cx_Oracle
import pandas as pd
import numpy as np
from tqdm import tqdm

# conn = cx_Oracle.connect('접속이름/비밀번호@호스트이름:포트번호/SID)
conn = cx_Oracle.connect('cgi_7_2/smhrd2@project-db-stu.ddns.net:1524/xe')
cs = conn.cursor()
# 최상 상 중 하 최하
df_price = pd.read_csv('../sns분석(기업별 감성수치결과).csv', encoding='utf-8')
price = np.array(df_price)

for i in range(len(price)):

    emotion = ""
    if (price[i][1] >200):
        emotion = "최상"
    elif (price[i][1] >100):
        emotion = "상"
    elif (price[i][1] > -100):
        emotion = "중"
    elif (price[i][1] > -200):
        emotion = "하"
    else :
        emotion = "최하"
    print(emotion)

for stock in tqdm(price):
    emotion = ""
    if (stock[1] > 200):
        emotion = "최상"
    elif (stock[1] > 100):
        emotion = "상"
    elif (stock[1] > -100):
        emotion = "중"
    elif (stock[1] > -200):
        emotion = "하"
    else:
        emotion = "최하"

    data = (stock[0], emotion, 'tw', '없음')
    sql = 'INSERT INTO snsdata VALUES(:1,:2,:3,:4)'  # 종목명, 감정, 플랫폼, 내용
    cs.execute(sql, data)

cs.close()
conn.commit()
conn.close()
