<%@page import="java.util.ArrayList"%>
<%@page import="model.StockSearchListDAO"%>
<%@page import="model.StockSearchListDTO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- member불러오기 -->
<% 
ArrayList<StockSearchListDTO> list = (ArrayList<StockSearchListDTO>)session.getAttribute("selectList");
//String searchtext = "은행";
StockSearchListDAO dao = new StockSearchListDAO();

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
<meta charset="utf-8">
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
            
              <div id="best" class="col-md-6">
                <div class="card">
                  <div class="card-header">
                    <h4>주식종목 검색결과</h4>
                  </div>
                  <div id="test" class="card-body">
                    <table class="table">
                      <tbody>
                       <tr>
                          <th scope="row"></th>
                          <td>종목명</td>
                          <td>종목코드</td>
                          <td>현재가</td>
                        </tr>  
                         <%
                         /* if(list != null){ */
                         for (int i = 0; i < list.size(); i++) {
                     System.out.println("listNO : "+i+1);%>   
                        <tr>
                          <th scope="row"><%=i%></th>
                          <td><%=list.get(i).getJongmokName()%></td>
                          <td><%=list.get(i).getJongmokCode()%></td>
                          <td>
                            현재가표시
                          </td>
                        </tr>
                      <%}%>
                      </tbody>
                    </table>
                  </div>
                  <div class="card-body p-0">
                    <div class="tickets-list">
                      <a href="종목 best.html" class="ticket-item ticket-more">
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
</body>
</html>