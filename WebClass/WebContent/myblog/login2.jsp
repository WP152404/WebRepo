<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
  <head>
  <title>로그인 페이지</title>
  <link href ="../css/index.css" rel="stylesheet" media="all"/>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/font-awesome.min.css">
  <script>



  </script>

</head>
<body>

  <div class="main">

<div class="sub-main">


  <h1 id ="h1">Login required</h1>
  <br />
  <div id="account" >
  로그인이 필요합니다.
  </div>
  <br />
  <div class="col-sm-6 col-sm-offset-3">

<form id="loginForm" action="/WebClass/bloglogin" method="post">



  <input type="email" name="id" placeholder="Email..." class="form-username form-control" id="id" required>
  <br />
  <input type="password" name="pwd" placeholder="Password..." class="form-password form-control" id="pwd" required>
  <br />
  <button class="btn btn-success btn-md" type="submit"><i class="fa fa-circle-o-notch fa-spin"></i> Login</button>
  <button class="btn btn-danger btn-md">Signup</button>
</form>
</div>
</div>
  </div>


  <div class="modal" id="myModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">로그인 결과</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-success" data-dismiss="modal" onclick="gotomain();" >메인페이지로</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
<%@ include file="../jsp/modal.jsp" %>
 <script>
	<%-- 로그인이 실패한 경우 처리 추가 --%>
	<% if("error".equals(request.getAttribute("msg"))) { %>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
	<%  }  %>
</script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script src="../js/JQUERYindex.js"></script>

</body>
</html>
