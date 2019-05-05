<!doctype html>
<html lang="zh_CN">
<head>
  <meta charset="utf-8">
  <title>查看发帖 - 中科软测试工程</title>
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
      readonly : 1,
      height: 300,
      plugins: ['lists ' ],
      toolbar: [
          'styleselect | fontsizeselect | bold italic | forecolor backcolor | alignleft aligncenter alignright | bullist numlist '
      ],
      fontsize_formats :'8px 10px 12px 14px 16px 18px 24px 36px'
    });
  </script>
</head>
<body>
<h2 class="title">XXXX问题反馈簿</h2>
<hr/>
<div class="form-container">
  <form action="/quest/saveQuest" method="post" >
    <div class="form-group ">
      <input type="text" class="form-control" id="title" name="title" value="${quest.title!}" readonly="readonly"/>
    </div>
    <div class="form-group">
      <div id="content">${quest.content }</div>
    </div>
    <div class="form-group btn-area">
      <button type="button" class="btn btn-primary btn-sm" id="back" onclick="history.go(-1);">返回</button>
    </div>
  </form>
</div>
</body>
</html>
