import cx_Oracle
import pandas as pd
import numpy as np
from tqdm import tqdm

# conn = cx_Oracle.connect('접속이름/비밀번호@호스트이름:포트번호/SID)
conn = cx_Oracle.connect('cgi_7_2/smhrd2@project-db-stu.ddns.net:1524/xe')
cs = conn.cursor()

df_price = pd.read_csv('../../pythonProject4/주식 종목.csv', encoding='euc-kr', index_col = 0)
price = np.array(df_price)

for stock in tqdm(price):
    data = (stock[0], stock[1], stock[3], 0)
    sql = 'INSERT INTO statdata VALUES(:1,:2,:3,:4)'  # 종목코드, 종목명, 업종코드
    cs.execute(sql, data)

cs.close()
conn.commit()
conn.close()
