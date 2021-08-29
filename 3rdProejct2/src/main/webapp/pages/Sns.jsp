<%@page import="model.snsDataDTO"%>
<%@page import="model.snsDataDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//sns신뢰도 불러오기
snsDataDAO dao = new snsDataDAO();
ArrayList<snsDataDTO> snsList = new ArrayList<snsDataDTO>();
snsList = dao.select();
%>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Tickets &mdash; Stisla</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="../node_modules/summernote/dist/summernote-bs4.css">
  <link rel="stylesheet" href="../node_modules/chocolat/dist/css/chocolat.css">

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
          <div class="section-body">
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
                          if(snsList != null){ 
                         for (int i = 0; i < snsList.size(); i++) {
                     		System.out.println(i+1+"번째 snsList");%>
                     <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/posco.png" alt="avatar">
                        <div class="media-body">
                        
                          <div class="float-right"><img src="../assets/img/감정분석/<%=snsList.get(i).getEmotion() %>.png"></div>
                          <div class="media-title"><%=snsList.get(i).getJongmokCode() %></div>
                          <!-- <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span> -->
                        </div>
                      </li>
                     <%}}%> 
                     <!--  <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/Kakao.png" alt="avatar">
                        <div class="media-body">
                          <div class="float-right text-primary"><img src="../assets/img/감정분석/최상.png"></div>
                          <div class="media-title">카카오</div>
                          <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/posco.png" alt="avatar">
                        <div class="media-body">
                          <div class="float-right"><img src="../assets/img/감정분석/상.png"></div>
                          <div class="media-title">POSCO</div>
                          <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/samsung.png" alt="avatar">
                        <div class="media-body">
                          <div class="float-right"><img src="../assets/img/감정분석/중.png"></div>
                          <div class="media-title">삼성전자</div>
                          <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span>
                        </div>
                      </li>
                      <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/kakaobank.png" alt="avatar">
                        <div class="media-body">
                          <div class="float-right"><img src="../assets/img/감정분석/하.png"></div>
                          <div class="media-title">카카오뱅크</div>
                          <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span>
                        </div>
                      </li>
                    
                    <li class="media">
                        <img class="mr-3 rounded-circle" width="50" src="../assets/img/kakaobank.png" alt="avatar">
                        <div class="media-body">
                          <div class="float-right"><img src="../assets/img/감정분석/최하.png"></div>
                          <div class="media-title">카카오뱅크</div>
                          <span class="text-small text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</span>
                        </div>
                      </li> -->
                      
                    </ul>
                    <!-- <div class="card-body p-0">
                      <div class="tickets-list">
                        <a href="트렌드 분석(sns).html" class="ticket-item ticket-more">
                          View All <i class="fas fa-chevron-right"></i>
                        </a>
                      </div>
                    </div> -->
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

</body>
</html>