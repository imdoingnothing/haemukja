<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*"%>
<% 
	Member loginMember = (Member)session.getAttribute("loginMember");
	Seller loginSeller = (Seller)session.getAttribute("loginSeller");
	
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>문의게시판</title>

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
</head>

<body>

  <!-- Navigation -->
  <%@ include file="../static/top.jsp"%>

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
        <%@ include file="../static/sideMenu.jsp"%>
      </div>
      <!-- /.col-lg-2 -->

      <div class="col-lg-9">
        <div class="panel panel-default">
          <div class="panel-heading">문의게시판</div>
          <div class="notice">!공지! vpoqnpoqwfeopwqjheofpwqf</div>
          <div class="notice">!공지! meoqwpnqwfenwqfopwfnqhpw</div>
        </div>
        <!-- /panel -->
          <!-- table 게시글 -->
          <table class="table">
            <thead>
              <tr>
                <th>No</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일자</th>
                <th>답변여부</th>
              </tr>
            </thead>
            <tbody>
              <!-- <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#">여기 조장님이 누구에요?</a></td>
                <td><a href="#">고범석</a></td>
                <td>2020.05.07</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>3</td>
                <td><a href="#">조장이 누구에요?</a></td>
                <td><a href="#">김범석</a></td>
                <td>2020.05.06</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>2</td>
                <td><a href="#">조장빌런 : 조장이 누구에요?</a></td>
                <td><a href="#">조장빌런</a></td>
                <td>2020.05.06</td>
                <td>답변완료</td>
              </tr>
              <tr>
                <td>1</td>
                <td><a href="#">조장님!</a></td>
                <td><a href="#">김조장</a></td>
                <td>2020.05.05</td>
                <td>답변완료</td>
              </tr> -->
              
            </tbody>
          </table>
          <!-- /table -->
          <div class="row">
          <%if(loginMember != null || loginSeller != null) {%>
            <div class="col-sm-12" align="right">
              <button type="button">글쓰기</button>
            </div>
          <%} %>
          </div>
          <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-8">
              <form>
                <div class="input-group">
                  <select id="searchOption">
                    <option id="id" name="id">ID</option>
                    <option id="title" name="title">제목</option>
                    <option id="content" name="content">내용</option>
                  </select>&nbsp;
                  <input type="text"placeholder="검색어를 입력하세요">
                  <span class="input-group-btn">
                    &nbsp;<button type="submit">찾기</button>
                  </span>
                </div>
              </form>
            </div>
          </div>
      </div>
      <!-- /.col-lg-9 -->
      <div class="col-lg-1">
		<%if(loginMember != null && loginSeller == null) { %>
        <div id="login">
          <br>
          <i class="fas fa-user" style="font-size: 30px;"></i>
          <br><br>
          	<%=loginMember.getMnickname() %><br>반갑습니다!<br><br>
          <a href="sellerpage_register.html" style="color: white; margin-bottom: 10px;">판매관리페이지</a>
          <br>
          <button type="button" id="loginBtn" onclick="logout();">로그아웃</button>
        </div>
        <%} else if (loginMember == null && loginSeller != null){ %>
          <div id="login">
          <br>
          <i class="fas fa-user" style="font-size: 30px;"></i>
          <br><br>
          	<%=loginSeller.getCompany() %><br>반갑습니다!<br><br>
          <a href="sellerpage_register.html" style="color: white; margin-bottom: 10px;">판매관리페이지</a>
          <br>
          <button type="button" id="loginBtn" onclick="logout();">로그아웃</button>
        </div>
		<%} else if (loginMember == null && loginSeller == null) { %>
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
    <div class="row">
      <div class="col-sm-12" style="text-align: center; font-size: 25px;">
        <a href="#"><<</a>&nbsp;&nbsp;
        <a href="#"><</a>&nbsp;&nbsp;
        <a href="#">1</a>&nbsp;&nbsp;
        <a href="#">2</a>&nbsp;&nbsp;
        <a href="#">3</a>&nbsp;&nbsp;
        <a href="#">4</a>&nbsp;&nbsp;
        <a href="#">5</a>&nbsp;&nbsp;
        <a href="#">></a>&nbsp;&nbsp;
        <a href="#">>></a>
      </div>
    </div>
  </div>
  <!-- /.container -->
  <br><br>
  <!-- Footer -->
  <%@ include file="../static/bottom.jsp"%>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
  	function login(){
  		location.href="<%=request.getContextPath()%>/member/loginHaemukja.jsp";
  	}
  	function logout(){
  		location.href="<%=request.getContextPath()%>/logout.me";
  	}
  </script>
</body>

</html>