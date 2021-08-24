<%@page import="model.StockBestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.StockBestDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- member불러오기 -->
<% MemberDTO member = (MemberDTO)session.getAttribute("member");
StockBestDAO dao = new StockBestDAO();
ArrayList<StockBestDTO> list = new ArrayList<StockBestDTO>();
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
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-stats">
                  <div class="card-stats-title">AI추천 종목
                  </div>
                  <div class="card-icon shadow-primary bg-primary">
                    <img src="/assets/img/kakao.png" width="60px" height="60px">
                    <!-- <i class="fas fa-dollar-sign"></i> -->
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>KOSPI 035720</h4>
                    </div>
                    <div class="card-body">
                      카카오
                    </div>
                  </div>
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <img id ="img" src="/assets/img/samsung.png" width="60px" height="60px">
                  <!-- <i class="fas fa-archive"></i> -->
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
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-stats">
                  <div class="card-stats-title">사용자 최근 예측 종목
                  </div>
                  <div class="card-icon shadow-primary bg-primary">
                    <i class="fas fa-dollar-sign"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>사용자 자산</h4>
                    </div>
                    <div class="card-body">
                      $187,13
                    </div>
                  </div>
                  <!-- <div class="card-stats-items">
                  </div> -->
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-archive"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>최근 예측 종목</h4>
                  </div>
                  <div class="card-body">
                    삼성전자
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="card gradient-bottom">
                <div class="card-header">
                  <h4>주가 예측 TOP5</h4>
                  <div class="card-header-action dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-danger dropdown-toggle">급등률</a>
                    <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                      <li class="dropdown-title">????</li>
                      <li><a href="#" class="dropdown-item">수익률</a></li>
                      <li><a href="#" class="dropdown-item">최근거래량</a></li>
                      <li><a href="#" class="dropdown-item active">급등률</a></li>
                    </ul>
                  </div>
                </div>
                <div class="card-body" id="top-5-scroll">
                  <ul class="list-unstyled list-unstyled-border">
                    <li class="media">
                      <img class="mr-3 rounded" width="55" src="../assets/img/products/product-3-50.png" alt="product">
                      <div class="media-body">
                        <div class="float-right"><div class="font-weight-600 text-muted text-small">+2%</div></div>
                        <div class="media-title">휴대폰</div>
                        <div class="mt-1">
                          <div class="budget-price">
                            <div class="budget-price-square bg-primary" data-width="65%"></div>
                            <div class="budget-price-label">65%</div>
                          </div>
                          <div class="budget-price">
                            <div class="budget-price-square bg-danger" data-width="63%"></div>
                            <div class="budget-price-label">63%</div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded" width="55" src="../assets/img/products/product-4-50.png" alt="product">
                      <div class="media-body">
                        <div class="float-right"><div class="font-weight-600 text-muted text-small">+4%</div></div>
                        <div class="media-title">컴퓨터</div>
                        <div class="mt-1">
                          <div class="budget-price">
                            <div class="budget-price-square bg-primary" data-width="84%"></div>
                            <div class="budget-price-label">84%</div>
                          </div>
                          <div class="budget-price">
                            <div class="budget-price-square bg-danger" data-width="80%"></div>
                            <div class="budget-price-label">80%</div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded" width="55" src="../assets/img/products/product-1-50.png" alt="product">
                      <div class="media-body">
                        <div class="float-right"><div class="font-weight-600 text-muted text-small">+6%</div></div>
                        <div class="media-title">오디오</div>
                        <div class="mt-1">
                          <div class="budget-price">
                            <div class="budget-price-square bg-primary" data-width="34%"></div>
                            <div class="budget-price-label">34%</div>
                          </div>
                          <div class="budget-price">
                            <div class="budget-price-square bg-danger" data-width="28%"></div>
                            <div class="budget-price-label">28%</div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded" width="55" src="../assets/img/products/product-3-50.png" alt="product">
                      <div class="media-body">
                        <div class="float-right"><div class="font-weight-600 text-muted text-small">+8%</div></div>
                        <div class="media-title">전자기기</div>
                        <div class="mt-1">
                          <div class="budget-price">
                            <div class="budget-price-square bg-primary" data-width="45%"></div>
                            <div class="budget-price-label">45%</div>
                          </div>
                          <div class="budget-price">
                            <div class="budget-price-square bg-danger" data-width="37%"></div>
                            <div class="budget-price-label">37%</div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li class="media">
                      <img class="mr-3 rounded" width="55" src="../assets/img/products/product-5-50.png" alt="product">
                      <div class="media-body">
                        <div class="float-right"><div class="font-weight-600 text-muted text-small">+10%</div></div>
                        <div class="media-title">카메라</div>
                        <div class="mt-1">
                          <div class="budget-price">
                            <div class="budget-price-square bg-primary" data-width="35%"></div>
                            <div class="budget-price-label">35%</div>
                          </div>
                          <div class="budget-price">
                            <div class="budget-price-square bg-danger" data-width="25%"></div>
                            <div class="budget-price-label">25%</div>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="card-footer pt-3 d-flex justify-content-center">
                  <div class="budget-price justify-content-center">
                    <div class="budget-price-square bg-primary" data-width="20"></div>
                    <div class="budget-price-label">실제 주가</div>
                  </div>
                  <div class="budget-price justify-content-center">
                    <div class="budget-price-square bg-danger" data-width="20"></div>
                    <div class="budget-price-label">예측 주가</div>
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
                </div>
                <div id="test" class="card-body">
                  <table class="table">
                    <!-- <thead>
                      <tr>
                        <th scope="col">순위</th>
                        <th scope="col">종목명</th>
                        <th scope="col">현재가</th>
                        <th scope="col">등락</th>
                        <th scope="col">등락률</th>
                      </tr>
                    </thead> -->
                    <tbody>
                    <%for(int i=0;i<5;i++){ %>
                      <tr>
                        <th scope="row"><%=i+1 %></th>
                        <td><%=list.get(i).getJongMokName() %></td>
                        <td><%=list.get(i).getNowPrice() %></td>
                        <td>
                          <%=list.get(i).getUpDown() %>
                          <div class="text-small text-muted"><%=list.get(i).getUpDownRate()+'%'%> <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <%} %>
                      <%-- <tr>
                        <th scope="row">2</th>
                        <td><%= %></td>
                        <td><%= %></td>
                        <td>
                          <%= %>
                          <div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td><%= %></td>
                        <td><%= %></td>
                        <td>
                          <%= %>
                          <div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td><%= %></td>
                        <td><%= %></td>
                        <td>
                          <%= %>
                          <div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td><%= %></td>
                        <td><%= %></td>
                        <td>
                          <%= %>
                          <div class="text-small text-muted"><%= %> <i class="fas fa-caret-down text-danger"></i></div>
                        </td>
                      </tr>
   --%>                  </tbody>
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
</body>
</html>