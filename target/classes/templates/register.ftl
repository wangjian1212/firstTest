<!doctype html>
<html lang="zh_CN">
  <head>
    <meta charset="utf-8">
    <title>注册 - 中科软测试工程</title>
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
      .register-container {
        background-color: #ffffff;
        display: inline-block;
        width: 38rem;
        padding: 4rem 4rem 2rem 4rem;
        text-align: left;
      }
      .register-container .btn-register {
        width: 100%;
      }
    </style>
    <script type="text/javascript" src="/jquery-3.2.1.js"></script>
    <script type="text/javascript">
      //注册
      function register(){
        var username = document.getElementById("name").value;
        var password = document.getElementById("password").value;
        if(checkInput('name') &&  checkInput('password')){
          $.ajax({
            url:'/register',
            type:'post',
            data:{'userName':username,'password':password},
            dataType:"text",
            success:function(data){
              if('true'==data){
                setTimeout(function(){
                  alert("注册成功！");
                  window.location.href = '/';
                },1000);
              }else{
                alert('注册失败！');
              }
            }
          });
        }
      }
      //输入框校验
      function checkInput(el) {
        var elObj = document.getElementById(el);
        var feedback = document.getElementById(el+"-feedback");
        //不能为空
        if(elObj.value==""){
          feedback.innerHTML = el== 'name' ? "UserName can not be empty." : "Password can not be empty." ;
          elObj.classList.remove("is-valid");//清除合法状态
          elObj.classList.add("is-invalid");//添加非法状态
          return false;
        }
        var isUnique = el == 'name' ? checkUserNameUnique(el,elObj,feedback) : true;
        if(isUnique){
          elObj.classList.remove("is-invalid");
          elObj.classList.add("is-valid");
          feedback.innerHTML="";
          return true;
        }else{
          return false;
        }
      }
      //校验用户名是否存在
      function checkUserNameUnique(el,elObj,feedback){
        var isUnique = true;
          $.ajax({
            url:'/checkUserNameUnique',
            type:'post',
            data:{'userName':elObj.value},
            dataType:"text",
            async:false,
            success:function(data){
              if('false'==data){
                feedback.innerHTML ="UserName already exists." ;
                elObj.classList.remove("is-valid");
                elObj.classList.add("is-invalid");
                isUnique = false;
              }
            }
          });
          return isUnique;
      }
    </script>
    <script type="text/javascript" src="/bootstrap-4.0.0-beta/js/bootstrap.min.js"></script>
  </head>
  <body>
    <h2 class="title">欢迎注册</h2>
    <hr/>
    <div class="register-container">
      <form action="/register" method="post" id="registerForm">
        <div class="form-group ">
          <label for="name">Username</label>
          <input type="text" class="form-control" id="name" name="name" onblur="checkInput(this.id)" placeholder="Enter your email or user name">
          <div class="invalid-feedback" id="name-feedback"></div>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password" onblur="checkInput(this.id)" placeholder="Enter your password">
          <div class="invalid-feedback" id="password-feedback"></div>
        </div>
        <div class="form-group">
          <input type="button" class="btn btn-primary btn-register" value="Sign up" onclick="register();">
        </div>
        <div class="form-group">
          <a href="/" >Sign in here</a>
        </div>
      </form>
    </div>
  </body>
</html>
