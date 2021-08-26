<%@page import="model.StockBestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.StockBestDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 국내 종목 BEST 불러오기 -->
<% 
StockBestDTO best = (StockBestDTO)application.getAttribute("juga");
StockBestDAO dao = new StockBestDAO();
ArrayList<StockBestDTO> list = new ArrayList<StockBestDTO>();
list= dao.select();

//사용자 최근 예측 종목 불러오기
ArrayList<StockBestDTO> predictList = new ArrayList<StockBestDTO>();
predictList = dao.predictJongMok_select();


%>


<html>
<head>
<meta charset="UTF-8">
    <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Ecommerce Dashboard &mdash; Stisla</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="../node_modules/jqvmap/dist/jqvmap.min.css">
  <link rel="stylesheet" href="../node_modules/summernote/dist/summernote-bs4.css">
  <link rel="stylesheet" href="../node_modules/owl.carousel/dist/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="../node_modules/owl.carousel/dist/assets/owl.theme.default.min.css">

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
          <div class="row">
          <form action="" method="post">
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-stats">
                  <div class="card-stats-title">AI추천 종목
                  </div>
                  <div class="card-icon shadow-primary bg-primary">

                    <img src="../assets/img/naver.png" width="60px" height="60px">
                    <img src="/assets/img/naver.png" width="60px" height="60px"> 
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                    <div class="text-muted text-small"><span class="text-primary"><i class="fas fa-caret-down"></i></span>48%</div>
                    </div>
                    <div class="card-body">
                      네이버
                    </div>
                  </div>
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <img id ="img" src="../assets/img/posco.png" width="60px" height="60px">
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <div class="text-muted text-small"><span class="text-danger"><i class="fas fa-caret-up"></i></span>14%  </div>
                  </div>
                  <div class="card-body">
                    포스코
                  </div>
                </div>
              </div>
            </div>
            </form>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-stats">
                  <div class="card-stats-title">사용자 최근 예측 종목
                  </div>
                  <%for(int i=0;i<predictList.size();i++){ %>
                  <div class="card-icon shadow-primary bg-primary">
                    <img src="/assets/img/<%=predictList.get(i).getJongMokName() %>.png" width="60px" height="60px">
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4><%=predictList.get(i).getKos()%> <%=predictList.get(i).getJongmokCode() %></h4>
                    </div>
                    <div class="card-body">
                    <div class="card-body">
                      <%=predictList.get(i).getJongMokName() %>
                    </div>
                  </div>
                  <div class="card-wrap">
                  </div>
                  <%} %>
                </div>
               <!--  <div class="card-icon shadow-primary bg-primary">
                  <img id ="img" src="/assets/img/samsung.png" width="60px" height="60px">
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>KOSPI 005930</h4>
                  </div>
                  <div class="card-body">
                    삼성전자
                  </div>
                </div>
                </div>
                <div class="card-wrap">
                </div>
              </div> -->
              
               <!-- 플라스크 데이터 가져오는 곳 --> 
            
              <form action="" method="post">
              <div class="col-lg-6 col-md-6 col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>주가예측 TOP5</h4>
                  </div>
                  <div class="card-body" id="top-5-scroll">
                    <div class="card-body">
                      <div class="summary">
                        <div class="summary-item">
                          <ul class="list-unstyled list-unstyled-border">
                            <li class="media">
                              <a href="#">
                                <img class="mr-3 rounded" width="50" src="../assets/img/kakaobank.png" alt="product">
                              </a>
                              <div class="media-body">
                                <div class="media-right">88,000 원</div>
                                <div class="media-title"><a href="#">카카오뱅크</a></div>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#">
                                <img class="mr-3 rounded" width="50" src="../assets/img/posco.png" alt="product">
                              </a>
                              <div class="media-body">
                                <div class="media-right">315,000 원</div>
                                <div class="media-title"><a href="#">POSCO</a></div>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#">
                                <img class="mr-3 rounded" width="50" src="../assets/img/HMM.png" alt="product">
                              </a>
                              <div class="media-body">
                                <div class="media-right">39,200 원</div>
                                <div class="media-title"><a href="#">HMM</a></div>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#">
                                <img class="mr-3 rounded" width="50" src="../assets/img/naver.png" alt="product">
                              </a>
                              <div class="media-body">
                                <div class="media-right">39,200 원</div>
                                <div class="media-title"><a href="#">네이버</a></div>
                              </div>
                            </li>
                            <li class="media">
                              <a href="#">
                                <img class="mr-3 rounded" width="50" src="../assets/img/samsung.png" alt="product">
                              </a>
                              <div class="media-body">
                                <div class="media-right">39,200 원</div>
                                <div class="media-title"><a href="#">삼성전자</a></div>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              </form>
              <div id="best" class="col-md-6">
                <div class="card">
                  <div class="card-header">
                    <h4>국내 종목 실시간 Best</h4>
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
                <!--          <tr>
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
                        </tr> -->
                       <!--  <tr>
                          <th scope="row">5</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td>
                            1.91%
                            <div class="text-small text-muted">3,282 <i class="fas fa-caret-down text-danger"></i></div>
                          </td>
                        </tr>  -->
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
  
    <!-- ajax로 실시간 주가 API데이터 요청 -->
  <script type="text/javascript">
     function (){
    	 $.ajax({
    		 type:
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