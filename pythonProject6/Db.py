import cx_Oracle

sql =   """
        select * 
        from tab
        """

# conn = cx_Oracle.connect('접속이름/비밀번호@호스트이름:포트번호/SID)
conn = cx_Oracle.connect('cgi_7_2/smhrd2@project-db-stu.ddns.net:1524/xe')
cs = conn.cursor()
rs = cs.execute(sql)

print(type(rs))

col1 = []
col2 = []

for record in rs:
    col1.append(record[0])
    col2.append(record[1])
print("col1 : ", col1)
print("col2 : ", col2)