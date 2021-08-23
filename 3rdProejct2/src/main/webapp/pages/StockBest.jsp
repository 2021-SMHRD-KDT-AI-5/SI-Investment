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
<meta charset="UTF-8">
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
		

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <!-- <div class="section-header">
            <h1>국내 종목 실시간Best</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="메인(index).html">메인</a></div>
              <div class="breadcrumb-item">Tickets</div>
            </div>
          </div> -->

          <div class="section-body">
            <!-- <h2 class="section-title">Help Your Customer</h2>
            <p class="section-lead">
              Some customers need your help.
            </p> -->

            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <h4>국내 종목 실시간Best</h4>
                  </div>
                  <div id="best" class="card-body">
                    <table class="table">
                      <thead>
                        <tr class="best_font">
                          <th scope="col">순위</th>
                          <th scope="col">종목명</th>
                          <th scope="col">현재가</th>
                          <th scope="col">등락</th>
                          <th scope="col">등락률</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td><div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td>1.91%</td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td><div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td>1.91%</td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td><div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td>1.91%</td>
                        </tr>
                        <tr>
                          <th scope="row">4</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td><div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td>1.91%</td>
                        </tr>
                        <tr>
                          <th scope="row">5</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td><div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td>1.91%</td>
                        </tr>
                      </tbody>
                    </table>
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

  <!-- General JS Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  <script src="../assets/js/stisla.js"></script>

  <!-- JS Libraies -->
  <script src="../node_modules/summernote/dist/summernote-bs4.js"></script>
  <script src="../node_modules/chocolat/dist/js/jquery.chocolat.min.js"></script>

  <!-- Template JS File -->
  <script src="../assets/js/scripts.js"></script>
  <script src="../assets/js/custom.js"></script>

  <!-- Page Specific JS File -->

</body>
</html>