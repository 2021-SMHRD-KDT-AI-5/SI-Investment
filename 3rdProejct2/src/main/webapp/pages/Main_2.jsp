<%@page import="model.StockBestDTO"%>
<%@page import="model.StockBestDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//사용자 최근 예측 종목 불러오기
StockBestDAO dao = new StockBestDAO();
ArrayList<StockBestDTO> predictList = new ArrayList<StockBestDTO>();
predictList = dao.predictJongMok_select();


%>

%>
<html>
<head>
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
          <class class="row">
            <div class="col-lg-6 col-md-6 col-12">
              <div class="card">
                <div class="card-header">
                  <h4>보유종목</h4>
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
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>AI추천 종목</h4>
                  <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                  </button>
                </div>
                <div class="card card-statistic-2">
                  <div class="card-stats">
                    <!-- <div class="card-stats-title">AI추천 종목</div> -->
                    <div class="card-icon shadow-primary bg-primary">
                      <img src="../assets/img/naver.png"  width="60px" height="60px">
                    </div>
                    <!-- <div class="card-icon shadow-primary bg-primary">
                      <img src="/assets/img/naver.png" width="60px" height="60px">
                    </div> -->
                    <div class="card-wrap">
                      <div class="card-header">
                      <div class="text-muted text-small"><span class="text-primary"><i class="fas fa-caret-down"></i></span> 48%</div>
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
                      <div class="text-muted text-small"><span class="text-danger"><i class="fas fa-caret-up"></i></span> 14%</div>
                    </div>
                    <div class="card-body">
                      포스코
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>사용자 최근 예측 종목</h4>
                </div>
                <div class="card card-statistic-2">
                  <div class="card-stats">
                    <!-- <div class="card-stats-title">사용자 최근 예측 종목</div> -->
                    <%for(int i=0;i<predictList.size();i++){ %>
                    <div class="card-icon shadow-primary bg-primary">
                      <img src="../assets/img/<%=predictList.get(i).getJongMokName() %>.png" width="60px" height="60px">
                    </div>
                    <div class="card-wrap">
                      <div class="card-header">
                        <h4><%=predictList.get(i).getKos()%> <%=predictList.get(i).getJongmokCode() %></h4>
                      </div>
                      <div class="card-body">
                        <%=predictList.get(i).getJongMokName() %>
                      </div>
                    </div>
                    <div class="card-wrap">
                    </div>
                  </div>
                  <%} %>
<!--                   <div class="card-icon shadow-primary bg-primary">
                    <img id ="img" src="../assets/img/samsung.png" width="60px" height="60px">
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>KOSPI 005930</h4>
                    </div>
                    <div class="card-body">
                      삼성전자
                    </div>
                  </div> -->
                </div>
              </div>
            </div>
              <div class="col-lg-4">
                <div class="card gradient-bottom">
                  <div class="card-header">
                    <h4>주가 예측 TOP5</h4>
                    <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                    <div class="card-header-action dropdown">
                      <a href="#" data-toggle="dropdown" class="btn btn-danger dropdown-toggle">급등률</a>
                      <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                        <!-- <li class="dropdown-title">????</li> -->
                        <li><a href="#" class="dropdown-item">수익률</a></li>
                        <li><a href="#" class="dropdown-item">최근거래량</a></li>
                        <li><a href="#" class="dropdown-item active">급등률</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body" id="top-5-scroll">
                    <ul class="list-unstyled list-unstyled-border">
                      <li class="media">
                        <img class="mr-3 rounded" width="55" src="../assets/img/kakaobank.png" alt="product">
                        <div class="media-body">
                          <div class="float-right"><div class="font-weight-600 text-muted text-small">+12%</div></div>
                          <div class="media-title">카카오뱅크</div>
                          <div class="mt-1">
                            <div class="budget-price">
                              <div class="budget-price-square bg-primary" data-width="30%"></div>
                              <div class="budget-price-label">83,100</div>
                            </div>
                            <div class="budget-price">
                              <div class="budget-price-square bg-danger" data-width="30%"></div>
                              <div class="budget-price-label">83,000</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded" width="55" src="../assets/img/HMM.png" alt="product">
                        <div class="media-body">
                          <div class="float-right"><div class="font-weight-600 text-muted text-small">+4%</div></div>
                          <div class="media-title">HMM</div>
                          <div class="mt-1">
                            <div class="budget-price">
                              <div class="budget-price-square bg-primary" data-width="30%"></div>
                              <div class="budget-price-label">39,650</div>
                            </div>
                            <div class="budget-price">
                              <div class="budget-price-square bg-danger" data-width="30%"></div>
                              <div class="budget-price-label">39,430</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded" width="55" src="../assets/img/posco.png" alt="product">
                        <div class="media-body">
                          <div class="float-right"><div class="font-weight-600 text-muted text-small">+6%</div></div>
                          <div class="media-title">POSCO</div>
                          <div class="mt-1">
                            <div class="budget-price">
                              <div class="budget-price-square bg-primary" data-width="30%"></div>
                              <div class="budget-price-label">326,000</div>
                            </div>
                            <div class="budget-price">
                              <div class="budget-price-square bg-danger" data-width="30%"></div>
                              <div class="budget-price-label">324,300</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded" width="55" src="../assets/img/naver.png" alt="product">
                        <div class="media-body">
                          <div class="float-right"><div class="font-weight-600 text-muted text-small">+8%</div></div>
                          <div class="media-title">네이버</div>
                          <div class="mt-1">
                            <div class="budget-price">
                              <div class="budget-price-square bg-primary" data-width="30%"></div>
                              <div class="budget-price-label">430,500</div>
                            </div>
                            <div class="budget-price">
                              <div class="budget-price-square bg-danger" data-width="30%"></div>
                              <div class="budget-price-label">431,200</div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded" width="55" src="../assets/img/samsung.png" alt="product">
                        <div class="media-body">
                          <div class="float-right"><div class="font-weight-600 text-muted text-small">+10%</div></div>
                          <div class="media-title">카메라</div>
                          <div class="mt-1">
                            <div class="budget-price">
                              <div class="budget-price-square bg-primary" data-width="30%"></div>
                              <div class="budget-price-label">75,700</div>
                            </div>
                            <div class="budget-price">
                              <div class="budget-price-square bg-danger" data-width="30%"></div>
                              <div class="budget-price-label">73,530</div>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="card-footer pt-3 d-flex justify-content-center">
                    <div class="budget-price justify-content-center">
                      <div class="budget-price-square bg-primary" data-width="20"></div>
                      <div class="budget-price-label">현재가</div>
                    </div>
                    <div class="budget-price justify-content-center">
                      <div class="budget-price-square bg-danger" data-width="20"></div>
                      <div class="budget-price-label">예측가</div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>과거 수익률</h4>
                    <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                      data-content="커스텀에 대한 설명">
                        ?
                    </button>
                  </div>
                  <div class="card-body">
                    <ul class="nav nav-tabs">
                      <li class="nav-item">
                        <a class="nav-link active current" href="#" data-tab="tab-1">어제</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" data-tab="tab-2">1달전</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">3달전</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" >1년전</a>
                      </li>
                    </ul>
                
                  <!-- 어제 -->
                  <div class="card-bodyy current" id="tab-1">
                    <div class="summary">
                      <div class="summary-item" >
                        <ul class="list-unstyled list-unstyled-border">
                          <li class="media">
                            <a href="#">
                              <img class="mr-3 rounded" width="50" src="../assets/img/kakaobank.png" alt="product">
                            </a>
                            <div class="media-body" >
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
                  <!-- 1달전 -->
                    <div class="card-bodyy" id="tab-2">
                    <div class="summary">
                      <div class="summary-item" >
                        <ul class="list-unstyled list-unstyled-border">
                          <li class="media">
                            <a href="#">
                              <img class="mr-3 rounded" width="50" src="../assets/img/kakaobank.png" alt="product">
                            </a>
                            <div class="media-body" >
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
                  
                  </div> <!-- card-body ul -->
                  
                  
                </div>
              </div>
          </class>
            <!-- </div>
          </div>
          </div> -->
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
  
  <script type="text/javascript">
  $(document).ready(function(){
		
		$('ul.nav-tabs a').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.nav-tabs a').removeClass('current');
			$('.card-bodyy').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		})

	});
  </script>

</body>
</html>