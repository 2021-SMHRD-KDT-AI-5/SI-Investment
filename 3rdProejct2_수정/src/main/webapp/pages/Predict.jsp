<%@page import="model.JugadataDTO"%>
<%@page import="model.JugadataDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% 
	int predict = Integer.parseInt(request.getParameter("predict"));
	
	String jongmokname = (String)session.getAttribute("jongmokname"); 
	JugadataDAO dao = new JugadataDAO();
	JugadataDTO dto = dao.price(jongmokname);
	int price = dto.getClosePrice();
%>

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
            <h1>?????? ?????? ??????</h1>
          </div>

              <!-- Start ?????? ?????? ?????? -->

                  <div class="section-body">
                    <h2 class="section-title">Stock Prediction</h2>
                    <p class="section-lead">
                      ???????????? ????????? ???????????? ??????????????????.
                    </p>
        
                    <div class="row">
                      <div class="col-lg-6" >
                        <div class="card card-large-icons">
                          <!-- card-icon bg-primary text-white ?????? ??????
                              card-iconPre bg-primary text-white ??? ??????-->

                          <!-- ?????? ?????? -->
                          <div >
                            <img src="../assets/img/avatar/avatar-1.png" 
                            style="height: 100px; height: 100px; margin: 20px;">
                            <i class="fas fa-bookmark fa-2x" style="position: relative; left:170px; bottom: 25px;"></i>
                            <!-- <i class="fas fa-cog"></i> -->
                          </div>

                          <div class="card-body">
                            <h4><%=jongmokname %></h4>
                            <h3><%=price %></h3> <span></span>
                            <p> <!-- General settings such as, site title, site description, address and so on. --></p>
                            <!-- <a href="features-setting-detail.html" class="card-cta">?????? ?????????<i class="fas fa-chevron-right"></i></a> -->
                          </div>
                        </div>
                      </div>
                    </div>

                      <!-- End ?????? ?????? ?????? -->

                      <!-- Start ???????????? -->
                      <%-- 
                      <div class="row">
                        <div class="col-lg-8 col-md-12 col-12 col-sm-12">
                          <div class="card">
                            <div class="card-header">
                              <h4>?????? ??????</h4>
                              <div class="card-header-action">
                                <div class="btn-group">
                                  <a href="#" class="btn btn-primary">??????</a>
                                  <!-- ???????????? ???????????? ?????? ????????? ???????????? ???????????? ?????? ????????????(????????? ?????? ???????????? XX) -->
                                  <a href="#" class="btn">???</a> 
                                </div>
                              </div>
                            </div>
                            <div class="card-body">
                              <canvas id="myChart" height="182"></canvas>
                              <div class="statistic-details mt-sm-4">
                                <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-primary"><i class="fas fa-caret-up"></i></span> 7%</span>
                                  <div class="detail-value">2021-08-08</div>
                                  <div class="detail-name">?????? ??????</div>
                                </div>
                                <div class="statistic-details-item">
                                  <span class="text-muted"><span class="text-danger"><i class="fas fa-caret-down"></i></span> 23%</span>
                                  <div class="detail-value">2021-09-15</div>
                                  <div class="detail-name">?????? ??????</div>
                                </div>
                                <!-- ?????? ?????? ?????? ???????????? ?????? ?????? html??? ??????! 
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
						--%>
                        <!-- End ???????????? ??? -->


                      <!-- Start ?????? ?????? -->

                      <div class="card">
                        <div class="card-header">
                          <h4>?????? ??????</h4>
                        </div>
                        <div class="card-body" id="top-5-scroll">
                          <div class="section-title mt-0">????????????</div>
                          <table class="table table-hover" style="width: 100%;">
                            <thead>
                              <tr>
                                <th scope="col">??????</th>
                                <th scope="col">?????????</th>
                                <th scope="col">?????????</th>
                              </tr>
                            </thead>
                            <tbody>
                            <%
                            	// int price = Integer.parseInt((String)request.getAttribute("predict"));
                            %>
                              <tr>
                                <th scope="row">2020.08.15</th>
                                <td><%=price %></td>
                                <td><%=predict %></td>
                              </tr>

                            </tbody>
                          </table>

                        </div>
                      </div>
                                        
                      <!-- End ?????? ?????? -->

                      <!-- Start ????????? -->
                      <div class ="row">
                        <div class="col-12 col-md-6 col-lg-6">
                          <div class="card">
                            <div class="card-header">
                              <h4>?????????</h4>
                              <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                                data-content="????????? ?????? ???????????? ???????????? ???????????? ?????? ????????? ????????? ?????? ????????? ??????">
                                ?
                              </button>
                            </div>
                            <div class="card-body">
                              <table style="text-align:center; width:100%;">
                                <tbody>
                                    <tr style="font-size: 15px; ">
                                    <th>?????? ?????????</th>
                                    </tr>
                                    <tr>
                                      <!-- ?????? ?????? ???????????? ?????????:?????? / ?????????:?????? -->
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

                      <!-- End ????????? -->

                    

                      <!-- Start ?????? ????????? -->
                    <div class ="row">
                      <div class="col-12 col-md-6 col-lg-6">
                        <div class="card">
                          <div class="card-header">
                            <h4>?????? ?????????</h4>
                            <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" 
                                data-content="?????? ???????????? ?????? ?????? ????????? ?????? ??????">
                                ?
                              </button>
                          </div>
                          <div class="card-body">
         <%--                    <ul class="nav nav-tabs">
                              <li class="nav-item">
                                <a class="nav-link active" href="#">3??? ???</a>
                           </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">6??? ???</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">1??? ???</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">3??? ??? </a>
                              </li>
                              --%>   
                            </ul>
                          </div>
                            
                          <div>
                              <table style="text-align:center; width:100%; margin-top: 20px; margin-bottom: 20px;">
                                <tbody>
                                    <tr style="font-size: 15px; ">
                                    <th>3??? ?????????</th>
                                    </tr>
                                    <tr>
                                      <!-- ?????? ?????? ???????????? ?????????:?????? / ?????????:?????? -->
                                      <td style="font-size: 30px; color: red;"><strong>
                                        ??? 5.4%
                                      </strong></td>
                                    </tr>
                                </tbody>
                              </table>
                          </div>

                        </div>
                      </div>
                    </div>
                      <!-- End ?????? ????????? -->




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