<%@page import="model.StockBestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.StockBestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 국내 종목 BEST 불러오기 -->
<%
StockBestDAO dao = new StockBestDAO();
ArrayList<StockBestDTO> list = new ArrayList<StockBestDTO>();
list= dao.select();
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
            <div class="col-lg-8 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>코스피/코스닥 예측</h4>
                </div>
                <div class="card-body">
                  <ul class="nav nav-tabs">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">현재가</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1일 후</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">1주 후</a>
                    </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link disabled" href="#">Disabled</a>
                    </li> -->
                  </ul>
                  <div class="card-body">
                    <!-- <canvas id="myChart" height="182"></canvas> -->
                    <div class="statistic-details mt-sm-4">
                      <div class="statistic-details-item">
                        <div class="detail-value">코스피</div>
                        <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span>8.15 / 0.27%</span>
                        <div class="detail-value">3,146.81</div>
                        <div class="detail-name">(단위: 백만원)</div>
                      </div>
                      <div class="statistic-details-item">
                        <div class="detail-value">코스닥</div>
                        <span class="text-muted"><span class="text-danger"><i class="fas fa-caret-down"></i></span>4.60 / 0.45%</span>
                        <div class="detail-value">1,017.78</div>
                        <div class="detail-name">(단위: 백만원)</div>
                      </div>
                      <!-- <div class="statistic-details-item">
                        <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span>9%</span>
                        <div class="detail-value">$12,821</div>
                        <div class="detail-name">This Month's Sales</div>
                      </div>
                      <div class="statistic-details-item">
                        <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 19%</span>
                        <div class="detail-value">$92,142</div>
                        <div class="detail-name">This Year's Sales</div>
                      </div> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>SNS 트렌드 분석</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                </div>
                <div class="card-body">
                  <ul class="list-unstyled list-unstyled-border">
                    <li class="media">
                      <img class="mr-3 rounded-circle" width="50" src="../assets/img/Kakao.png" alt="avatar">
                      <div class="media-body">
                        <div class="float-right text-primary"><img src="../assets/img/감정분석/매우좋음.png"></div>
                        <div class="media-title">카카오</div>
                        <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded-circle" width="50" src="../assets/img/posco.png" alt="avatar">
                      <div class="media-body">
                        <div class="float-right"><img src="../assets/img/감정분석/좋음.png"></div>
                        <div class="media-title">POSCO</div>
                        <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded-circle" width="50" src="../assets/img/samsung.png" alt="avatar">
                      <div class="media-body">
                        <div class="float-right"><img src="../assets/img/감정분석/보통.png"></div>
                        <div class="media-title">삼성전자</div>
                        <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded-circle" width="50" src="../assets/img/kakaobank.png" alt="avatar">
                      <div class="media-body">
                        <div class="float-right"><img src="../assets/img/감정분석/하.png"></div>
                        <div class="media-title">카카오뱅크</div>
                        <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                      </div>
                    </li>
                  </ul>
                  <div class="card-body p-0">
                    <div class="tickets-list">
                      <a href="트렌드 분석(sns).html" class="ticket-item ticket-more">
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
          <div class="row">
            <div id="best" class="col-md-6">
              <div class="card">
                <div class="card-header">
                  <h4>국내 종목 실시간 Best</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                </div>
                <div id="test" class="card-body">
                  <table class="table">
                    <tbody>
                       <%
                        for(int i=0; i<list.size();i++){
                      %>
                      <tr>
                         <th id=best scope="row"><%=i+1 %></th>
                        <td id=best><%=list.get(i).getJongMokName() %></td>
                        <td id=best><%=list.get(i).getNowPrice() %></td>
                       <td id=best>
                            <%=list.get(i).getUpDownRate()%>%
                            <div class="text-small text-muted"><%=list.get(i).getUpDown() %> <i class="fas fa-caret-down text-danger"></i></div>
                          </td>
                      </tr>
                        <%} %>
                     <!--  <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>
                          1.91%
                          <div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>
                          1.91%
                          <div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>
                          1.91%
                          <div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>
                          1.91%
                          <div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr> -->
                    </tbody>
                  </table>
                </div>
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

</body>
</html>