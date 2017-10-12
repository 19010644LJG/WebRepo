<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

</head>
<body>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="blogbasic.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Career.html">Career</a>	
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Com_Security.html">Computer Security</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="HarryPotter.html">Harry Potter</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Register.html">Register</a>
    </li>
  <li class="nav-item">
    <a class="nav-link active" href="login.jsp">login</a>
</ul>

<div class="container">
	<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Welcome to my site</h3>
                </div>
                <div class="panel-body">
                    <form id ="loginForm" method="post" action="">
                            <div class="form-group">
                                <input class="form-control" placeholder="ID" name="id" id="id" /autofocus required>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="pwd" id="pwd" type="password" value="" required>
                            </div>
                        
                            <input type="submit" class="btn btn-success btn-block" value="Login">
                      
                    </form>
                </div>
            </div>
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
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="../js/login&register.js"></script>
</body>

</html>