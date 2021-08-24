<%@page import="java.util.ArrayList"%>
<%@page import="model.StockTermsDAO"%>
<%@page import="model.StockTermsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
StockTermsDTO term = (StockTermsDTO)session.getAttribute("term");//용어사전 DTO 
StockTermsDAO dao = new StockTermsDAO(); //용어사전 DAO
ArrayList<StockTermsDTO> list = new ArrayList<StockTermsDTO>(); //ArrayList생성
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
            <h1>주식용어정리</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Bootstrap Components</a></div>
              <div class="breadcrumb-item">Collapse</div>
            </div>
          </div>

          <div class="section-body">
            <h2 class="section-title">주식 용어 정리</h2>
            <p class="section-lead">
              주린이도 이해하기 쉽게 주식 용어를 풀어서 설명해드려요 어쩌구 ~ 
            </p>

            <div class="row">


              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>용어정리</h4>
                  </div>
                  <div class="card-body">
                    <div id="accordion">
                <!--       <div class="accordion">
                        <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-1" aria-expanded="true">
                          <h4>코스피와 코스닥</h4>
                        </div>
                        <div class="accordion-body collapse show" id="panel-body-1" data-parent="#accordion">
                          <p class="mb-0">보통 사람들이 주식한다고 했을 때 거래하는 코피와 코스닥을 소개할려고 해요.
                            <br>
                            -코스피(KOSPI): 대기업 등 *우량주가 거래되는 시장을 말해요 그리고 주식 가격을 표시한 지수를 말하기도 해요.
                            <br>
                            -코스닥(KOSDAQ): IT,바이오,엔터테인먼트 등 코스피보다 중소, 벤처기업의 주식들이 주로 거래되는 시장을 말해요.
                            <br>
                            *우량주: 타 기업에 비해 수익성,안전성,성장성 등이 좋은 기업</p>
                        </div>
                      </div>
                      <div class="accordion">
                        <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-2">
                          <h4>매수와 매도</h4>
                        </div>
                        <div class="accordion-body collapse" id="panel-body-2" data-parent="#accordion">
                          <p class="mb-0">매수와 매도의 사전적용어는 물건을 사고 파는 것을 의미해요. 그러면 주식에서 매수와 매도의 뜻을 소개할려고 해요.
                            <br>매수:주식을 사는 것을 말해요 
                            <br>매도:주식을 파는 것을 말해요</p>
                        </div>
                      </div> -->
                      <!-- 주식용어정리 -->
                      <%for(int i=0 ; i<list.size();i++){ %>
                      <div class="accordion">
                        <div class="accordion-header" role="button" data-toggle="collapse" data-target="#panel-body-3">
                          <h4><%=list.get(i).getTerm() %></h4> <!-- 주식용어제목 -->
                        </div>
                        <div class="accordion-body collapse" id="panel-body-3" data-parent="#accordion">
                          <pre class="mb-0"><%=list.get(i).getCommentary() %></pre> <!-- 주식용어 해설 -->
                        </div>
                      </div>
                      <%} %>
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