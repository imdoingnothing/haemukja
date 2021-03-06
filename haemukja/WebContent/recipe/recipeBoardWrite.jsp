<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member loginMember = (Member)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>레시피게시판</title>

  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../css/sellerAndStatic.css" rel="stylesheet">
  <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
    integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
    crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
    integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
    crossorigin="anonymous"></script>
  <style>

    .tag {
      text-align: center;
      background-color: rgb(230, 230, 230);
      width: 550px;
      padding: 5px;
      display: none;
    }

  </style>
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-default bg-white">
    <div class="container">
      <a class="navbar-brand" href="../index.html">
        <img class="logo" src="../images/haemukjalogo.png" />
      </a>
      <a class="navbar-brand" align="right" href="haemukshop_main.html">
        <img class="logo" src="../images/haemukshoplogo.png" />
      </a>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">

      <div class="col-lg-2">
        <form>
          <div class="input-group">
            <select id="searchOption">
              <option id="id" name="id">ID</option>
              <option id="title" name="title">제목</option>
              <option id="content" name="content">내용</option>
            </select>&nbsp;
            <input type="text"placeholder="검색어를 입력하세요" style="width: 100px;">
            <span class="input-group-btn" style="margin-top: 5px;">
              <button type="submit" style="background-color: orange; width: 160px;">레시피 찾기!</button>
            </span>
          </div>
        </form>
        <div class="list-group">
          <h4><a href="#">Asia</a></h4>
          <a href="#" class="list-group-item list-group-item-light">한국</a>
          <a href="#" class="list-group-item list-group-item-light">중국</a>
          <a href="#" class="list-group-item list-group-item-light">일본</a>
          <a href="#" class="list-group-item list-group-item-light">기타</a>
          <h4><a href="#">Europe</a></h4>
          <a href="#" class="list-group-item list-group-item-light">이탈리아</a>
          <a href="#" class="list-group-item list-group-item-light">스페인</a>
          <a href="#" class="list-group-item list-group-item-light">프랑스</a>
          <a href="#" class="list-group-item list-group-item-light">기타</a>
          <h4><a href="#">America</a></h4>
          <a href="#" class="list-group-item list-group-item-light">미국</a>
          <a href="#" class="list-group-item list-group-item-light">기타</a>
          <h4><a href="#">Other Countries</a></h4>
          <h4><a href="qnaboard.html">문의게시판</a></h4>
        </div>
      </div>
      <!-- /.col-lg-2 -->

      <div class="col-lg-9">
        <!-- panel -->
        <div class="panel panel-default">
          <div class="panel-heading">&nbsp;한국</div>
        </div>
        <br>
        <!-- /panel -->
        <div class="container">
          <div class="center-block">
            <form id="productExplainForm" action="<%=request.getContextPath()%>/insert.re" method="post" enctype="multipart/form-data">
              <label for="title"><h5>제목 : </h5></label>
              <input type="text" name="title" style="width: 740px">
              <label for="thumbnail"><h5>썸네일 : </h5></label>
              <input type="file" id="thumbnail" name="thumbnail">
              <br><br>
              <h6 style="color: red; font-weight: bold">
                ※ 최대 10개까지 업로드 가능. 태그는 이미지 하나당 최대 3개 ※<br>
                (태그 거는 법 : 해당 판매글 번호 입력)
              </h6>
              <h5>1.</h5>
              <input type="file" id="image1" name="image1"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>2.</h5>
              <input type="file" id="image2" name="image2"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>3.</h5>
              <input type="file" id="image3" name="image3"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>4.</h5>
              <input type="file" id="image4" name="image4"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>5.</h5>
              <input type="file" id="image5" name="image5"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>6.</h5>
              <input type="file" id="image6" name="image6"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>7.</h5>
              <input type="file" id="image7" name="image7"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>8.</h5>
              <input type="file" id="image8" name="image8"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>9.</h5>
              <input type="file" id="image9" name="image9"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br>
              <h5>10.</h5>
              <input type="file" id="image10" name="image10"><button type="button" class="tagBtn">태그달기</button>
              <div class="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
                <input type="text" name="tag">
              </div>
              <textarea name="content" cols="110" rows="3"></textarea>
              <br><br><br>
              <button type="submit" class="btn">저장</button>
            </form>
          </div>
        </div>
      </div>
      <!-- /.col-lg-9 -->
      <div class="col-lg-1">
        <!-- <div id="login">
          <br>
          <i class="fas fa-user" style="font-size: 30px;"></i>
          <br><br>
          예지푸드님<br>반갑습니다!<br><br>
          <a href="sellerpage_register.html" style="color: white; margin-bottom: 10px;">판매관리페이지</a>
          <br>
          <button type="button" id="loginBtn">로그아웃</button>
        </div> -->
        <%if(loginMember != null) { %>
        <div id="login">
          <br>
          <i class="fas fa-user" style="font-size: 30px;"></i>
          <br><br>
          	<%=loginMember.getMnickname() %><br>반갑습니다!<br><br>
          <a href="sellerpage_register.html" style="color: white; margin-bottom: 10px;">판매관리페이지</a>
          <br>
          <button type="button" id="loginBtn" onclick="logout();">로그아웃</button>
        </div>
		<%} else { %>
        <div id="login">
          <br>
          <i class="fas fa-user" style="font-size: 30px;"></i>
          <br><br>
          	<button onclick="login();">로그인</button>
        </div>	
        <%} %>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  <br><br>
  <!-- Footer -->
  <footer>
    <div class="container">
      <br>
      <div class="row">
        <div class="col-md-12" style="text-align: center">
          <h5>Copyright &copy; 2020</h5>
          <h5>김예지 지정수 조정규 박두리 김소현 고범석</h5>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script>
    $(function(){
      $(".tagBtn").click(function(){
        console.log($(this).next().toggle());
      });
    });
    
    function login(){
  		location.href="<%=request.getContextPath()%>/member/loginHaemukja.jsp";
  	}
  	function logout(){
  		location.href="<%=request.getContextPath()%>/logout.me";
  	}
  </script>

</body>
</html>