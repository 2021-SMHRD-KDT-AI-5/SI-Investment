<%@page import="java.util.ArrayList"%>
<%@page import="model.statDataDAO"%>
<%@page import="model.statDataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 투자별거래량 DAO,DTO,ArrayList생성 -->
<%
statDataDTO volume = (statDataDTO)application.getAttribute("stat");
statDataDAO dao = new statDataDAO();
ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
list=dao.select();
%>

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
            <h1>종목 정보</h1>
          </div>

          <!-- Start 주식 종목 정보 -->

              <div class="section-body">
                <h2 class="section-title">Stock Information</h2>
                <p class="section-lead">
                  주가정보를 알려주고 주가 예측 변수를 입력하는 페이지
                </p>
    
                <div class="row">
                  <div class="col-lg-6">
                    <div class="card card-large-icons">
                      <!-- card-icon bg-primary text-white 태그 수정
                          card-iconPre bg-primary text-white 로 수정-->
                      <div class="card-iconPre bg-primary text-white">
                        <!-- 종목의 로고 같은거 img태그로 들어가면 됨 -->
                        <i class="fas fa-cog"></i>
                      </div>
                      <div class="card-body">
                        <h4>Netflix</h4>
                        <h4>123,456</h4> <span>▼ 2.3%</span>
                        <p>General settings such as, site title, site description, address and so on.</p>
                        <a href="Predict.jsp" class="card-cta">
                          <!-- <a href="2Predict.html" class="card-cta"></a> -->
                          예측결과 더보기 <i class="fas fa-chevron-right"></i></a>
                      </div>
                    </div>
                  </div>
    
                </div>
                
          <!-- End 주식 종목 정보 -->

          <!-- Start 차트부분 -->
          <class class="row">
            <div class="col-lg-8 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>실시간 차트</h4>
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
                      <div class="detail-value">$243</div>
                      <div class="detail-name">Today's Sales</div>
                    </div>
                    <div class="statistic-details-item">
                      <span class="text-muted"><span class="text-danger"><i class="fas fa-caret-down"></i></span> 23%</span>
                      <div class="detail-value">$2,902</div>
                      <div class="detail-name">This Week's Sales</div>
                    </div>
                    <div class="statistic-details-item">
                      <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span>9%</span>
                      <div class="detail-value">$12,821</div>
                      <div class="detail-name">This Month's Sales</div>
                    </div>
                    <div class="statistic-details-item">
                      <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 19%</span>
                      <div class="detail-value">$92,142</div>
                      <div class="detail-name">This Year's Sales</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </class>

            <!-- End 차트부분 끝 -->

          <!-- 클릭하면 커스텀 하는 부분 쫙 펼쳐지는 기능 뭔지 찾아보기 -->
          <!-- Start 사용자 커스텀 -->
          <!-- <class class="section-body"> -->
            
            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>사용자 커스텀하는 공간</h4>
                  </div>

                  <div class="card-body">
                    
                    <!-- 알람
                    <div class="alert alert-info">
                      <b>Note!</b> Not all browsers support HTML5 type input.
                    </div> -->

                    <div class="form-group">
                      <label>변수추가하기</label>
                      <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Select</label>
                      <select class="form-control">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Select Multiple</label>
                      <select class="form-control" multiple="" data-height="100%">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                        <option>Option 3</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label class="d-block">Checkbox</label>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="defaultCheck1">
                        <label class="form-check-label" for="defaultCheck1">
                          Checkbox 1
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="defaultCheck3">
                        <label class="form-check-label" for="defaultCheck3">
                          Checkbox 2
                        </label>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="d-block">Radio</label>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                          Radio 1
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" checked>
                        <label class="form-check-label" for="exampleRadios2">
                          Radio 2
                        </label>
                      </div>
                    </div>

                      <div style="text-align: center;">
                        <a href="2Predict.html" class="btn btn-primary mt-4">예측결과보기</a><br><br>
                        <a href="#" class="mt-4 bb">Need Help?</a>
                      </div>
                  </div>

                </div>
          <!-- End 사용자 커스텀 -->

          <!-- Start 거래량 -->

          <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
              <div class="card">
                <div class="card-header">
                  <h4>투자자별 거래량</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-bordered table-md" style="text-align: center;">
                      <tr>
                        <th>#</th>
                        <th>날짜</th>
                        <th>개인</th>
                        <th>외국인</th>
                        <th>기관계</th>
                      </tr>
                      <!-- 투자별 거래량 조회 -->
                       
                      <%for(int i=0;i<list.size();i++){ %>
                      <tr>
                        <td><%=i+1 %></td>
                        <td><%=list.get(i).getDate() %></td>
                        <td><%=list.get(i).getPersonalVolume()%></td>
                        <td><%=list.get(i).getForeignerVolume() %><</td>
                        <td><a href="#" class="btn btn-secondary"><%=list.get(i).getAgencyVolume() %></a></td>
                      </tr>
                      <%} %>
                      <!-- <tr>
                        <td>2</td>
                        <td>2021-08-09</td>
                        <td></td>
                        <td><div class="badge badge-success">Active</div></td>
                        <td><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Kusnadi</td>
                        <td>2017-01-11</td>
                        <td><div class="badge badge-danger">Not Active</div></td>
                        <td><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Rizal Fakhri</td>
                        <td>2017-01-11</td>
                        <td><div class="badge badge-success">Active</div></td>
                        <td><a href="#" class="btn btn-secondary">Detail</a></td>
                      </tr> -->
                    </table>
                  </div>
                </div>
                <div class="card-footer text-right">
                  <nav class="d-inline-block">
                    <ul class="pagination mb-0">
                      <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1"><i class="fas fa-chevron-left"></i></a>
                      </li>
                      <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">2</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#"><i class="fas fa-chevron-right"></i></a>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
            
          </div>
          <!-- End 거래량 -->
  
          </div>
        </section>
      </div>

	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

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
  
  <!-- 투자별 거래량 API데이터를 Ajax로 가져오기-->
  <script type="text/javascript">
  function (){
 	 $.ajax({
 		 type: "post",
 		 data: 
 		 url: 
 		 dataType:
 	     sucess:
 	     error:
 	 })
  }
  
  </script>
  
  
</body>
</html>