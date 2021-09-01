<%@page import="model.statDataDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.statDataDAO"%>
<%@page import="model.snsDataDTO"%>
<%@page import="model.snsDataDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//국내 종목 BEST 불러오기
statDataDAO dao = new statDataDAO();
ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
list= dao.select();
int nowPrice = 3000;
int upDown = 160;
double upDownRate = 1.5;

//sns신뢰도 불러오기
snsDataDAO snsdao = new snsDataDAO();
ArrayList<snsDataDTO> snsList = new ArrayList<snsDataDTO>();
snsList = snsdao.select();
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
          <div class="section-header">
            <h1>시장정보</h1>
          </div>
          <!-- <div class="row">
          </div> -->
          <div class="row">
            <div class="col-lg-4 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>SNS 트렌드 분석</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="SNS데이터를 기반으로 소비자들이 가지는 기업신뢰도를 5단계로 표시해줍니다.">
                        ?
                    </button>
                </div>
                <div class="card-body">
                  <ul class="list-unstyled list-unstyled-border">
                    <%
                          if(snsList != null && snsList.size() > 3){ 
                         for (int i = 0; i < 4; i++) {
                     		System.out.println(i+1+"번째 snsList");%>
                     <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/posco.png" alt="avatar">
                        <div class="media-body">
                        
                          <div class="float-right"><img src="../assets/img/감정분석/<%=snsList.get(i).getEmotion() %>.png"></div>
                          <div class="media-title"><%=snsList.get(i).getJongmokName() %></div>
                          <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                        </div>
                      </li>
                     <%}}%> 
                  </ul>
                  <div class="card-body p-0">
                    <div class="tickets-list">
                      <a href="Sns.jsp" class="ticket-item ticket-more">
                        View All <i class="fas fa-chevron-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-12 col-lg-6">
              <div class="card">
                <div class="card-header">
                  <h4>업종별 주가 예측</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                </div>
                <div class="card-body">
                  <ul class="nav nav-tabs">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">1일 후</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1주 후</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1달 후</a>
                    </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link disabled" href="#">Disabled</a>
                    </li> -->
                  </ul>
                  <div class="summary">
                    <div class="summary-item">
                      <ul class="list-unstyled list-unstyled-border">
                        <li class="media">
                          <a href="#">
                            <img alt="image" class="mr-3 rounded" width="50" src="../assets/img/products/product-4-50.png">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+3.7%</div>
                            <div class="media-title"><a href="#">컴퓨터</a></div>
                            <!-- <div class="text-small text-muted">by <a href="#">Ahmad Sutisna</a> <div class="bullet"></div> Sunday</div> -->
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img alt="image" class="mr-3 rounded" width="50" src="../assets/img/products/product-1-50.png">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+3.2%</div>
                            <div class="media-title"><a href="#">오디오</a></div>
                            <!-- <div class="text-small text-muted">by <a href="#">Hasan Basri</a> <div class="bullet"></div> Sunday</div> -->
                          </div>
                        </li>
                        <li class="media">
                          <a href="#">
                            <img alt="image" class="mr-3 rounded" width="50" src="../assets/img/products/product-3-50.png">
                          </a>
                          <div class="media-body">
                            <div class="media-right">+2.8%</div>
                            <div class="media-title"><a href="#">스마트 폰</a></div>
                            <!-- <div class="text-small text-muted">by <a href="#">Kusnaedi</a> <div class="bullet"></div> Tuesday -->
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>국내 종목 실시간 Best</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                </div>
                
                <!--국내 변경 best table시작 -->
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
                      <%
                         for(int i=0; i<list.size();i++){
                      %>
                        <tr>
                          <th scope="row"><%=i+1 %></th>
                          <td><%=list.get(i).getJongmokName() %></td>
                          <td><%=nowPrice %></td>
                          <td><div class="text-small text-muted"><%=upDown %> <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td><%=upDownRate%>%</td>
                        </tr>
                        <%} %>
                     <!--     <tr>
                          <th scope="row">2</th>
                          <td>aaa</td>
                          <td>aaa</td>
                          <td><div class="text-small text-muted">11 <i class="fas fa-caret-up text-danger"></i></div></td>
                          <td>123</td>
                        </tr> -->
                        <%-- <tr>
                          <th scope="row">3</th>
                          <td><%= %></td>
                          <td><%= %></td>
                          <td><div class="text-small text-muted"><%= %><i class="fas fa-caret-down text-danger"></i></div></td>
                          <td><%= %></td>
                        </tr>
                        <tr>
                          <th scope="row">4</th>
                          <td><%= %></td>
                          <td><%= %></td>
                          <td><div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td><%= %></td>
                        </tr>
                        <tr>
                          <th scope="row">5</th>
                          <td><%= %></td>
                          <td><%= %></td>
                          <td><div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div></td>
                          <td><%= %></td>
                        </tr>  --%>
                      </tbody>
                    </table>
                  </div> 
                <!--국내 변경 best table종료 -->
                
                <div class="card-body p-0">
                  <div class="tickets-list">
                    <a href="StockBest.jsp" class="ticket-item ticket-more">
                      View All <i class="fas fa-chevron-right"></i>
                    </a>
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