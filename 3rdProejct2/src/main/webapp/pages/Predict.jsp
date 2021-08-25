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

    <!-- icon fontawesome -->
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
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
            <h1>주가 예측 결과</h1>
          </div>

              <!-- Start 주식 종목 정보 -->

                  <div class="section-body">
                    <h2 class="section-title">Stock Prediction</h2>
                    <p class="section-lead">
                      주가예측 결과를 보여주는 페이지입니다.
                    </p>
        
                    <div class="row">
                      <div class="col-lg-6" >
                        <div class="card card-large-icons">
                          <!-- card-icon bg-primary text-white 태그 수정
                              card-iconPre bg-primary text-white 로 수정-->

                          <!-- 기업 로고 -->
                          <div >
                            <img src="../assets/img/avatar/avatar-1.png" 
                            style="height: 100px; height: 100px; margin: 20px;">
                            <i class="fas fa-bookmark fa-2x" style="position: relative; left:170px; bottom: 25px;"></i>
                            <!-- <i class="fas fa-cog"></i> -->
                          </div>

                          <div class="card-body">
                            <h4>Netflix</h4>
                            <h3>123,456</h3> <span>▼ 2.3%</span>
                            <p>General settings such as, site title, site description, address and so on.</p>
                            <!-- <a href="features-setting-detail.html" class="card-cta">정보 더보기<i class="fas fa-chevron-right"></i></a> -->
                          </div>
                        </div>
                      </div>
                    </div>

                      <!-- End 주식 종목 정보 -->

                      <!-- Start 차트부분 -->
                      <div class="row">
                        <div class="col-lg-8 col-md-12 col-12 col-sm-12">
                          <div class="card">
                            <div class="card-header">
                              <h4>예측 차트</h4>
                              <div class="card-header-action">
                                <div class="btn-group">
                                  <a href="#" class="btn btn-primary">일반</a>
                                  <!-- 실시간을 클릭하면 안에 차트만 바뀌도록 설정하는 방법 찾아보기(페이지 전체 새로고침 XX) -->
                                  <a href="#" class="btn">봉</a> 
                                </div>
                              </div>
                            </div>
                            <div class="card-body">
                              <canvas id="myChart" height="182"></canvas>
                              <div class="statistic-details mt-sm-4">
                                <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 7%</span>
                                  <div class="detail-value">2021-08-08</div>
                                  <div class="detail-name">매수 시점</div>
                                </div>
                                <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-danger"><i class="fas fa-caret-down"></i></span> 23%</span>
                                  <div class="detail-value">2021-09-15</div>
                                  <div class="detail-name">매도 시점</div>
                                </div>
                                <!-- 매매 시점 관련 추가하고 싶은 항목 html은 여기! 
                                  <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span>9%</span>
                                  <div class="detail-value">$12,821</div>
                                  <div class="detail-name">2021-08-12</div>
                                </div>
                                <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 19%</span>
                                  <div class="detail-value">$92,142</div>
                                  <div class="detail-name">2021-09-23</div>
                                </div> -->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                        <!-- End 차트부분 끝 -->


                      <!-- Start 예측 수치 -->

                      <div class="card">
                        <div class="card-header">
                          <h4>예측 수치</h4>
                        </div>
                        <div class="card-body" id="top-5-scroll">
                          <div class="section-title mt-0">Netflix</div>
                          <table class="table table-hover" style="width: 100%;">
                            <thead>
                              <tr>
                                <th scope="col">날짜</th>
                                <th scope="col">현재가</th>
                                <th scope="col">예측가</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">2020.08.15</th>
                                <td>123,456</td>
                                <td>123,456</td>
                              </tr>
                              <tr>
                                <th scope="row">2020.8.16</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                              </tr>

                              <tr>
                                <th scope="row">2020.8.16</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                              </tr>
                              <tr>
                                <th scope="row">2020.8.16</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                              </tr>
                              <tr>
                                <th scope="row">2020.8.16</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                              </tr>
                              <tr>
                                <th scope="row">2020.8.16</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                              </tr>

                            </tbody>
                          </table>

                        </div>
                      </div>
                                        
                      <!-- End 예측 수치 -->

                      <!-- Start 적중률 -->
                      <div class ="row">
                        <div class="col-12 col-md-6 col-lg-6">
                          <div class="card">
                            <div class="card-header">
                              <h4>적중률</h4>
                              <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                                data-content="종목별 종가 데이터를 수집하여 예측가와 실제 증감폭 비교를 통해 적중률 예측">
                                ?
                              </button>
                            </div>
                            <div class="card-body">
                              <table style="text-align:center; width:100%;">
                                <tbody>
                                    <tr style="font-size: 15px; ">
                                    <th>00일간 평균 적중률은</th>
                                    </tr>
                                    <tr>
                                      <!-- 글자 색에 조건주기 상향가:빨강 / 하향가:파랑 -->
                                      <td style="font-size: 30px; color: #6777ef;"><strong>
                                        87.95%
                                      </strong></td>
                                    </tr>
                                </tbody>
                              </table>
                            </div>
      
                          </div>
                        </div>
                      </div>

                      <!-- End 적중률 -->

                    

                      <!-- Start 예상 수익률 -->
                    <div class ="row">
                      <div class="col-12 col-md-6 col-lg-6">
                        <div class="card">
                          <div class="card-header">
                            <h4>미래 수익률</h4>
                            <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                                data-content="미래 수익률에 대한 정보 어쩌구 라고 설명">
                                ?
                              </button>
                          </div>
                          <div class="card-body">
                            <ul class="nav nav-tabs">
                              <li class="nav-item">
                                <a class="nav-link active" href="#">3달 후</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">6달 후</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">1년 후</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">3년 후 </a>
                              </li>
                            </ul>
                          </div>
                            
                          <div>
                              <table style="text-align:center; width:100%; margin-top: 20px; margin-bottom: 20px;">
                                <tbody>
                                    <tr style="font-size: 15px; ">
                                    <th>3달 후에는</th>
                                    </tr>
                                    <tr>
                                      <!-- 글자 색에 조건주기 상향가:빨강 / 하향가:파랑 -->
                                      <td style="font-size: 30px; color: red;"><strong>
                                        ▲ 30.4%
                                      </strong></td>
                                    </tr>
                                </tbody>
                              </table>
                          </div>

                        </div>
                      </div>
                    </div>
                      <!-- End 예상 수익률 -->




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
  <script src="../node_modules/simpleweather/jquery.simpleWeather.min.js"></script>
  <script src="../node_modules/chart.js/dist/Chart.min.js"></script>
  <script src="../node_modules/jqvmap/dist/jquery.vmap.min.js"></script>
  <script src="../node_modules/jqvmap/dist/maps/jquery.vmap.world.js"></script>
  <script src="../node_modules/summernote/dist/summernote-bs4.js"></script>
  <script src="../node_modules/chocolat/dist/js/jquery.chocolat.min.js"></script>

  <!-- Template JS File -->
  <script src="../assets/js/scripts.js"></script>
  <script src="../assets/js/custom.js"></script>

  <!-- Page Specific JS File -->
  <script src="../assets/js/page/index-0.js"></script>

</body>
</html>