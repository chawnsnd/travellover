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
<jsp:include page="/WEB-INF/view/main/header.jsp" />
    <!-- Page Content -->
    <div class="container">

      <div class="row" style="text-align: center; margin: auto;">

        
        <!-- /.col-lg-3 -->

        <div class="col-lg-12" style="margin:auto;">
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          

	<ul class="nav nav-tabs" >
  
 
    
    <li>
    <input type="radio" name="thema" value="all" id="all">
    <label for="all">전체</label>
    <input type="radio" name="thema" value="place" id="place">
    <label for="place">가볼만한 곳</label>
    <input type="radio" name="thema" value="dining" id="dining">
    <label for="dining">맛집</label>
    <input type="radio" name="thema" value="shopping" id="shopping">
    <label for="shopping">쇼핑</label>
    <input type="radio" name="thema" value="hotel" id="hotel">
    <label for="hotel">숙박</label>
    </li>
    </ul>
    
    <br>
    
 	<ul class="nav nav-tabs" >
    <li>
   
    <input type="radio" name="thema" value="all" id="all">
    <label for="all">전체</label>
    
    <input type="radio" name="thema" value="seoul" id="seoul">
    <label for="seoul">서울</label>
    
    <input type="radio" name="thema" value="busan" id="busan">
    <label for="busan">부산</label>
    
    <input type="radio" name="thema" value="daegu" id="daegu">
    <label for="daegu">대구</label>
    
    <input type="radio" name="thema" value="incheon" id="incheon">
    <label for="incheon">인천</label>
    
    <input type="radio" name="thema" value="kwangju" id="kwamgju">
    <label for="kwangju">광주</label>
    
    <input type="radio" name="thema" value="daejeon" id="daejeon">
    <label for="daejeon">대전</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">울산</label>
    
	<input type="radio" name="thema" value="region" id="region">
    <label for="region">세종</label>
    
    <br>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">경기</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">강원</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">충북</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">충남</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">전북</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">전남</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">경북</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">경남</label>
    
    <input type="radio" name="thema" value="region" id="region">
    <label for="region">제주</label>
    </li>
  	</ul>
   

  

</div>
<div style="text-align:right">
<button type="submit" class="btn btn-default" style="text-align:center"><a href="/attraction/post.do">여행지등록</a></button>
</div>
</div>
    
   
    

          <div class="row" style="margin:auto">
                        
                      
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">                
                <div class="card-body">
                 <img class="card-img-top" alt="bukchon" src="/img/bukchon.jpg" style="width:220px; height:230px">
                 <hr>
                  <h4 class="card-title">
                   <button type="button" class="btn btn-link"><a href="read.do">여행지1 :북촌한옥마을</a></button>
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
                    <button type="button" class="btn btn-link"><a href="read.do">여행지2 :남산타워</a></button>
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
                  <button type="button" class="btn btn-link"><a href="read.do">여행지3 :부산 용궁사</a></button>
                  </h4>
                 
                 
                </div>
                
              </div>
            </div>
            



        </div>
        
        <div class="row" style="margin: auto;">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                
                <div class="card-body">
                <img class="card-img-top" alt="busan2" src="/img/busan2.jpg" style="width:220px; height:230px">
                <hr>
                  <h4 class="card-title">
                    <button type="button" class="btn btn-link"><a href="read.do">여행지4 :부산 자갈치시장</a></button>
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
                    <button type="button" class="btn btn-link"><a href="read.do">여행지5 :남이섬</a></button>
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
                    <button type="button" class="btn btn-link"><a href="read.do">여행지6 :포천불빛축제</a></button>
                  </h4>
                
               
                </div>
                
              </div>
            </div>
                <!-- /.row -->
 		</div>
 
 

         
       

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