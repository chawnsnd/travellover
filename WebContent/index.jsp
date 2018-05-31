<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<script src="/lib/w3.js"></script>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="/resources/css/layout.css" rel="stylesheet">
  </head>

  <body>
	<!-- <include target="/main/header.html" /> -->
    <!-- Navigation -->
	<jsp:include page="/WEB-INF/view/main/header.jsp" />
    <!-- Page Content -->
    <div class="container-fluid">

      <div class="row">

        <!-- /.col-lg-3 -->

       

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel" style="text-align: center; margin: auto;">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
              <img class="img-fluid"  src="/img/danyang.jpg" alt="First slide"  >
              </div>
              <div class="carousel-item">
                <img class="img-fluid" src="/img/jeju.jpg" alt="Second slide" >
              </div>
              <div class="carousel-item">
                <img class="img-fluid" src="/img/pazu.jpg" alt="Third slide" >
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          
     </div>
     
		<div class="col-lg" style="text-align: center;">
 	 		<h5>테마별여행지</h5><br>
    	</div> 
       <div class="row align-items-start" style="text-align: center; margin: auto;">
               
            <div class=" col-md-3 mb-4">
             
                 
              <div class="card h-100">
                
                <div class="card-body" >
                  <h4 class="card-title">
                   <button type="button" class="btn btn-link"><a href="/attraction/list.do">가볼만한곳</a></button>
                  </h4>                  
                  <p class="card-text">맛집, 쇼핑 , 숙박을 제외한 여행지</p>
                </div>
                </div>
                </div>
                
                 <div class="col-md-3 mb-4">
             
                 
              <div class="card h-100">
                
                <div class="card-body" >
                  <h4 class="card-title">
                   <button type="button" class="btn btn-link"><a href="/attraction/list.do">맛집</a></button>
                  </h4>                  
                  <p class="card-text">추천 맛집들 리스트</p>
                </div>
                </div>
                </div>
                
                <div class=" col-md-3 mb-4">
                <div class="card h-100">
                  <div class="card-body">
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="/attraction/list.do">쇼핑</a></button>
                  </h4>
                  
                  <p class="card-text">추천 쇼핑지 리스트</p>
                </div>
                 </div>
                </div>
                
                <div class=" col-md-3 mb-4">                           
                <div class="card h-100">
                 <div class="card-body">
                  <h4 class="card-title">
                  <button type="button" class="btn btn-link"><a href="/attraction/list.do">숙박</a></button>
                  </h4>
                 
                  <p class="card-text">추천 숙박 리스트</p>
                </div>
                 </div>
                </div>
                
              </div>
            

            
               
              </div>
          
            

		
		

        
        
        
       	<div class="col-lg" style="text-align: center;" >
         <h5>지역별여행지</h5><br>               
         </div>
         
         <div class="row align-items-center" style="text-align: center; margin: auto;">
          
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="/attraction/list.do">서울</a></button>
                  </h4>
                  
                  <p class="card-text">우리나라의 수도 다이나믹 서울</p>
                </div>
              
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="/attraction/list.do">경기</a></button>
                  </h4>
                 
                  <p class="card-text">다양한 여행테마가 있는 경기</p>
                </div>
                
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="/attraction/list.do">부산</a></button>
                  </h4>
                
                  <p class="card-text">바다가 있는 아름다운 도시 부산</p>
                </div>
                
              </div>
            </div>

        
          <!-- /.row -->

        
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <jsp:include page="/WEB-INF/view/main/footer.html" />
 
    <!-- /.container -->
    

    <!-- Bootstrap core JavaScript -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>

</html>