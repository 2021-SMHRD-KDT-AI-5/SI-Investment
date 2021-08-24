<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>General Dashboard &mdash; Stisla</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="../node_modules/jqvmap/dist/jqvmap.min.css">
  <link rel="stylesheet" href="../node_modules/weathericons/css/weather-icons.min.css">
  <link rel="stylesheet" href="../node_modules/weathericons/css/weather-icons-wind.min.css">
  <link rel="stylesheet" href="../node_modules/summernote/dist/summernote-bs4.css">

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

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>회원정보</h1>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
              <div class="card">
                <div class="card-header">
                  <h4>보유종목</h4>
                </div>
                <div class="card-body">
                  <div class="summary">
                    <!-- <div class="summary-info">
                      <h4>$1,053</h4>
                      <div class="text-muted">Sold 3 items on 2 customers</div>
                      <div class="d-block mt-2">
                        <a href="#">View All</a>
                      </div>
                    </div> -->
                    <div class="summary-item">
                      <!-- <h6>보유종목 <span class="text-muted">(3 Items)</span></h6> -->
                      <ul class="list-unstyled list-unstyled-border">
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/kakaobank.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">88,000 원</div>
                            <div class="media-title"><a href="#">카카오뱅크</a></div>
                            <div class="text-muted text-small">10주<div class="bullet"></div> -18,000 (-2.21%)</div>
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/posco.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">315,000 원</div>
                            <div class="media-title"><a href="#">POSCO</a></div>
                            <div class="text-muted text-small">20주<div class="bullet"></div> +110,000 (1.62%)</div>
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/HMM.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">39,200 원</div>
                            <div class="media-title"><a href="#">HMM</a></div>
                            <div class="text-muted text-small">30주<div class="bullet"></div> +55,000 (4.5%)</div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
              <div class="card">
                <div class="card-header">
                  <h4>과거 수익률</h4>
                </div>
                <div class="card-body">
                  <ul class="nav nav-tabs">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">어제</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1달전</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">3달전</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1년전</a>
                    </li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="summary">
                    <div class="summary-item">
                      <ul class="list-unstyled list-unstyled-border">
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/kakaobank.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+5.23%</div>
                            <div class="media-title"><a href="#">카카오뱅크</a></div>
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/posco.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+4.3%</div>
                            <div class="media-title"><a href="#">POSCO</a></div>
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img class="mr-3 rounded" width="50" src="../assets/img/HMM.png" alt="product">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+4.52%</div>
                            <div class="media-title"><a href="#">HMM</a></div>
                          </div>
                        </li>
                      </ul>
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

  <!-- General JS Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  <script src="../assets/js/stisla.js"></script>

  <!-- JS Libraies -->
  <script src="../node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
  <script src="../node_modules/chart.js/dist/Chart.min.js"></script>
  <script src="../node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="../node_modules/summernote/dist/summernote-bs4.js"></script>
  <script src="../node_modules/chocolat/dist/js/jquery.chocolat.min.js"></script>

  <!-- Template JS File -->
  <script src="../assets/js/scripts.js"></script>
  <script src="../assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
  <script src="../assets/js/page/index.js"></script>
</body>
</html>