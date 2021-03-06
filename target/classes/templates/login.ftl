<!doctype html>
<html lang="zh_CN">
  <head>
    <meta charset="utf-8">
    <title>登录 - 中科软测试工程</title>
    <link rel="stylesheet" href="/bootstrap-4.0.0-beta/css/bootstrap.min.css" />
    <style type="text/css">
      /* body */
      body {
        font-size: 14px;
        background-color: #f4f4f4;
        text-align: center;
      }

      /* title */
      h2.title {
        font-size: 2rem;
        text-align: center;
      }

      /* form */
      .login-container {
        background-color: #ffffff;
        display: inline-block;
        width: 38rem;
        padding: 4rem 4rem 2rem 4rem;
        text-align: left;
        position: relative;
      }
      .login-container .btn-login {
        width: 100%;
      }
      .alert{
        width:16rem;
        left:11rem;
        top: 1rem;
        text-align: center;
        position: absolute;
      }
    </style>
    <script type="text/javascript" src="/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="/bootstrap-4.0.0-beta/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      $(function(){
        if($('#errorMsg') != null){
          setTimeout(function(){
           $('#errorMsg').alert('close');
          },2000);
        }
      })
      function login(){
        var loginname = document.getElementById("name").value;
        var password = document.getElementById("password").value;
        if($.trim(loginname) != '' && $.trim(password) != ''){
          document.getElementById("loginForm").submit();
        } else {
          alert("UserName and password can not be empty.");
        }
      }
    </script>
  </head>
  <body>
    <h2 class="title">登陆问题反馈簿</h2>
    <hr/>
    <div class="login-container">
      <#if reason ? exists >
        <div class="alert alert-danger" id="errorMsg" >
          <a href="#" class="close" data-dismiss="alert">&times;</a>
          ${reason}
        </div>
      </#if>
      <form action="/login" method="post" id="loginForm">
        <div class="form-group">
          <label for="name">Username or email address</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter your email or user name">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
        </div>
        <div class="form-group">
          <input type="button" class="btn btn-primary btn-login" value="Sign in" onclick="login(  )">
        </div>
        <div class="form-group">
          <a href="/toRegister" >Sign up here</a>
        </div>
      </form>
    </div>
  </body>
</html>
