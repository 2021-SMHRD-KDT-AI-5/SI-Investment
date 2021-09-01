<%@page import="java.util.ArrayList"%>
<%@page import="model.JugadataDAO"%>
<%@page import="model.JugadataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 투자별거래량 DAO,DTO,ArrayList생성 -->
<%
//String jongmokName = request.getParameter("jongmokName");
String test = request.getParameter("realtime");
String jongmokName = request.getParameter("jongmokname");

session.setAttribute("jongmokname", jongmokName);

JugadataDAO dao = new JugadataDAO();
JugadataDTO dto = dao.price(jongmokName);
int price = dto.getClosePrice();
ArrayList<JugadataDTO> list = new ArrayList<JugadataDTO>();
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
                  <div class="col-lg-6" >
                    <div class="card card-large-icons">
                      <!-- card-icon bg-primary text-white 태그 수정
                          card-iconPre bg-primary text-white 로 수정-->

                      <!-- 기업 로고 -->
                      <div >
                        <img src="../assets/img/avatar/avatar-1.png" 
                        style="height: 100px; height: 100px; margin: 20px;">
                      </div>

                      <div class="card-body">
                        <h4 id="jonkmok"><%=jongmokName %></h4>
                        <h3 id="realtime"><%=price %></h3> <span id="realtime"></span>
                         <p><!--General settings such as, site title, site description, address and so on.--></p>
                           <%-- <a id="predict" href="Predict.jsp" class="card-cta">--%>
                        	 <a id="predict" href=<%="http://127.0.0.1:5000/predict?jongmokname="+jongmokName%> class="card-cta"> 
                          <!-- <a href="2Predict.html" class="card-cta"></a> -->
                          예측결과 더보기 <i class="fas fa-chevron-right"></i>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                
                
                
          <!-- End 주식 종목 정보 -->

<%-- 
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
                <!-- 이 안에 차트 들어오면 돼요 -->
                  <canvas id="myChart" height="182"></canvas>                  
                </div>
              </div>
            </div>
          </class>

            <!-- End 차트부분 끝 -->
--%>
          <!-- Start 사용자 커스텀 -->
          
          
            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>사용자 커스텀하는 공간</h4>
                    <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                      </button>
                  </div>

                  <div class="card-body">
                    
                    <!-- 알람
                    <div class="alert alert-info">
                      <b>Note!</b> Not all browsers support HTML5 type input.
                    </div> -->
					<form action="CustomCon.do">
	                    <div class="form-group">
	                      <label>항목 값</label>
	                      <input type="text" name="value" class="form-control">
	                    </div>
	
	                    <div class="form-group">
	                      <label>항목 이름</label>
	                      <input type="text" name="name" class="form-control">
	                    </div>
	
	                    <div class="form-group">
	                      <label>시작날짜</label>
	                      <input type="date" name="startday" class="form-control">
	                    </div>
	
	                    <div class="form-group">
	                      <label>종료날짜</label>
	                      <input type="date" name="endday" class="form-control">
	                    </div>
					</form>
                      <div style="text-align: center;">
                      	<%-- <a href="Predict.jsp" class="btn btn-primary mt-4">결과 보러가기</a><br><br> --%>
                         <a href=<%="http://127.0.0.1:5000/predict?jongmokname="+jongmokName%> class="btn btn-primary mt-4">결과 보러가기</a><br><br>
                        <a href="#" class="mt-4 bb">Need Help?</a>
                      </div>
                  </div>
                </div>
          
          <!-- End 사용자 커스텀 -->

			<%-- 
            <!-- Start 최대손실예상금액 -->
            <div class="row">
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>최대손실예상금액</h4>
                    <div>
                      <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="최대손실예상금액에 대한 설명을 짤막하게 써두면 좋을듯">
                        ?
                      </button>
                    </div>

                  </div>
                  <div class="card-body">

                  <!-- Start 결과값 -->
                  <div class="card-footer card-footer-grey pt-0">
                    <div class="statistic-details mt-4 align-items-center justify-content-center" style="margin-top: 0px;">
                      <div class="statistic-details-item col-sm-4 col-12">
                        <div class="detail-value"><h3>00,000</h3></div>
                        <div class="detail-name">종목A이름</div>
                      </div>
                      <div class="statistic-details-item col-sm-4 col-12">
                        <div class="detail-chart">
                          <div class="sparkline-line-chart"></div>
                        </div>
                        <div class="detail-value"><h3>00,000</h3></div>
                        <div class="detail-name">종목 3개 포트폴리오</div>
                      </div> 
                    </div>
                  </div>


                    <!-- <div class="alert alert-info">
                      <b>최대손실예상금액</b> :  3개의 종목의 ~를 입력했을 때 최대 손실 금액을 알려줍니다.(알림)
                    </div> -->

                    <div class="row">
                      <div class="form-group col-6">
                        <label > 종목A 이름</label>
                        <input type="text" class="form-control" placeholder="예시 : 삼성전자" >
                      </div>
                      <div class="form-group col-6">
                        <label>종목A 비율</label>
                        <input type="text" class="form-control" placeholder="예시 : 0.35" >
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-6">
                        <label> 종목B 이름</label>
                        <input type="text" class="form-control">
                      </div>
                      <div class="form-group col-6">
                        <label>종목B 비율</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>
					
                    <div class="row">
                      <div class="form-group col-6">
                        <label > 종목C 이름</label>
                        <input type="text" class="form-control" >
                      </div>
                      <div class="form-group col-6">
                        <label>종목C 비율</label>
                        <input type="text" class="form-control">
                      </div>
                    </div>

                    <div class="form-group">
                      <label>가격</label>
                      <input type="text" class="form-control" placeholder="총 투자금액을 입력하세요.">
                    </div>

                    <div class="form-group">
                      <label>보유기간</label>
                      <input type="date" class="form-control">
                    </div>
                  </div>

                  <!-- 제출버튼 -->
                  <div  style="text-align: center; padding-bottom: 30px;">
                    <button class="btn btn-primary mr-1" type="submit">결과보기</button>
                    <!-- <button class="btn btn-secondary" type="reset">Reset</button> -->
                  </div>

                </div>
              </div>
             </div>
              <!-- End 최대손실예상금액 -->
              --%> 


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
                       
                      <%for(int i=0;i<10;i++){ %>
                      <tr>
                        <td><%=i+1 %></td>
                        <td><%=list.get(i).getStockTime() %></td>
                        <td><%=list.get(i).getPersonalVolume()%></td>
                        <td><%=list.get(i).getForeignerVolume() %></td>
                        <td><%=list.get(i).getAgencyVolume() %></td>
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
  $(function (){
	  timer = setInterval( function () {
		  let jongmokName = $("h4#realtime").text()
 	 $.ajax({
 		 type: "get",
 		 data: {"jonkmokname":jongmokName},
 		 url: "http://127.0.0.1:5005/realtime",
 		 dataType: "text",
 	     success:function(data){
 	    	 $("h4#realtime").text(data)
 	     }
 	 });
  },1000);
 });
  
  </script>
  <script type="text/javascript">
  
  </script>
  
</body>
</html>