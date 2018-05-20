<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Travellover</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="/resources/css/layout.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/index.html">Travellover</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/attraction/list.do">여행지
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/mypage.do">마이페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login.do">로그인</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row" style="margin-top:50px">

        
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <div class="col-lg-3">

<div class="dropdown">
  
  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    
  </ul>
</div>

<ul class="nav nav-tabs" >
  
  <li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
      테마별 <span class="caret"></span>
   
    <ul class="dropdown-menu" role="menu">
      	 <li><a href="#">가족과</a></li>
  		 <li><a href="#">친구와</a></li>
  		 <li><a href="#">맛집</a></li>
    </ul>
    </a>
  </li>
  <li role="presentation" class="dropdown">
  <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
      지역별 <span class="caret"></span>
        <ul class="dropdown-menu" role="menu">
      	 <li><a href="#">서울</a></li>
  		 <li><a href="#">경기</a></li>
  		 <li><a href="#">부산</a></li>
    	</ul>
 	</a>
</li>
</ul>
</div>
<div style="text-align:right">
<button type="submit" class="btn btn-default" style="text-align:center"><a href="/attraction/post.do">여행지등록</a></button>
</div>
</div>
     
   
    

          <div class="row">
                        
                      
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">                
                <div class="card-body">
                 <img class="card-img-top" alt="bukchon" src="/img/bukchon.jpg" style="width:220px; height:230px">
                 <hr>
                  <h4 class="card-title">
                   <button type="button" class="btn btn-link"><a href="read.do">여행지1</a></button>
                  </h4>                  
                 
                </div>
               
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="namsan" src="/img/namsan.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="read.do">여행지2</a></button>
                  </h4>
                  
                
                </div>
                
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="busan" src="/img/busan.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                  <button type="button" class="btn btn-link"><a href="read.do">여행지3</a></button>
                  </h4>
                 
                 
                </div>
                
              </div>
            </div>
            



        </div>
        
        <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="busan2" src="/img/busan2.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="read.do">여행지4</a></button>
                  </h4>
                  
  
                </div>
              
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="nami" src="/img/nami.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="read.do">여행지5</a></button>
                  </h4>
                 
               
                </div>
                
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="pocheon" src="/img/pocheon.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="read.do">여행지6</a></button>
                  </h4>
                
               
                </div>
                
              </div>
            </div>
                <!-- /.row -->
 		</div>
 
  <nav>
<div id="container">
<ul class="pagination" style=" margin-left:auto; margin-right:auto">
    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
    </li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
     
    <li class="active"><a href="#">2</a></li>
    
    <li class="active"><a href="#">3 </a></li>
    
    <li class="active"><a href="#">4 </a></li>
     
    <li class="active"><a href="#">5 </a></li>
    
   
    <li>
      <a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
    </li>
  </ul>
  
  </div>
  </nav>


         
       

    <!-- /.col-lg-9 -->
        </div>
        
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-left text-white">Copyright &copy; Travellover</p>
              <p class="m-0 text-right text-white">Tel:010-xxxx-xxxx / 대표 : 차준웅 김지수 진미령</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>

</html>