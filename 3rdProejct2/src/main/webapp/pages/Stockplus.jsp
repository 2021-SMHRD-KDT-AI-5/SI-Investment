<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Tickets &mdash; Stisla</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="../node_modules/summernote/dist/summernote-bs4.css">
  <link rel="stylesheet" href="../node_modules/chocolat/dist/css/chocolat.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets/css/components.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      
      <!-- header -->
      <%@ include file = "Header.jsp"%>
      
      <!-- Sidebar -->
		<%@ include file = "Sidebar.jsp"%>
		
		<div class="main-content">
        <section class="section">
          <div class="section-body">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <h4>보유 종목 추가</h4>
                  </div>
                  <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">
                      <div class="card-body">
                        <div class="form-group">
                          <label>종목명</label>
                          <input type="text" class="form-control">
                        </div>
                        <div class="form-group">
                          <label>구매 날짜</label>
                          <input type="date" class="form-control">
                        </div>
                        <div class="form-group">
                          <label>잔고</label>
                          <input type="number" class="form-control">
                        </div>
                        <div class="form-group">
                          <label>매입가</label>
                          <input type="number" class="form-control">
                        </div>
                      <div class="card-footer text-right">
                        <button class="btn btn-primary mr-1" type="submit">OK</button>
                        <button class="btn btn-secondary" type="reset">Reset</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
		<!-- Footer -->
		<%@ include file = "Footer.jsp"%>
		
		
	</div>
</div>

</body>
</html>