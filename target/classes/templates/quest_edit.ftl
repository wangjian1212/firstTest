<!doctype html>
<html lang="zh_CN">
  <head>
    <meta charset="utf-8">
    <title>发帖 - 中科软测试工程</title>
    <link rel="stylesheet" href="/bootstrap-4.0.0-beta/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/quest.css" />
    <script type="text/javascript" src="/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="/bootstrap-4.0.0-beta/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/tinymce/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
      tinymce.init({
        selector: '#content',
        menubar: false,
        statusbar: false,
        language: "zh_CN",
        height: 300,
        /*plugins: ['lists ' ],*/
        plugins: ['lists'],
        toolbar: [
          'styleselect | fontsizeselect | bold italic | forecolor backcolor | alignleft aligncenter alignright | bullist numlist '
        ],
        fontsize_formats :'8px 10px 12px 14px 16px 18px 24px 36px'
      });

      //发帖
      function commitQuest(){
        var title = document.getElementById("title").value;
        var content = tinymce.get('content').getContent();
        if($.trim(title) == ''){
          alert("请输入您的标题！");
          $("#title").focus();
          return false;
        }
        if($.trim(content) == ''){
          alert("请输入反馈内容！");
          tinymce.editors[0].focus();
          return false;
        }
        //发帖
        $.ajax({
          url:'/quest/saveQuest',
          type:'post',
          data:{'title':title,'content':content},
          dataType:"text",
          success:function(data){
            if('true'==data){
              setTimeout(function(){
                alert("发帖成功！");
                window.location.href = '/quest/list/0';
              },1000);
            }else{
              alert('发帖失败！');
            }
          }
        });
      }
    </script>
  </head>
  <body>
    <h2 class="title">XXXX问题反馈簿</h2>
    <hr/>
    <div class="form-container">
      <form action="/quest/saveQuest" method="post" >
        <div class="form-group ">
          <input type="text" class="form-control" id="title" name="title" value="${quest.title!}" placeholder="请您输入标题" />
          <div class="invalid-feedback" id="name-feedback"></div>
        </div>
        <div class="form-group">
          <textarea class="form-control" rows="3" id="content" name="content"  value="${quest.content! }" ></textarea>
        </div>
        <div class="form-group btn-area">
          <button type="button" class="btn btn-primary btn-sm" id="commit" onclick="commitQuest();">提交</button>
          <button type="button" class="btn btn-primary btn-sm" id="back" onclick="history.go(-1);">返回</button>
        </div>
      </form>
    </div>
  </body>
</html>
