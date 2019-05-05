<!doctype html>
<html lang="zh_CN">
<head>
  <meta charset="utf-8">
  <title>问题反馈</title>
  <link rel="stylesheet" href="/bootstrap-4.0.0-beta/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/css/quest.css" />
  <script type="text/javascript" src="/jquery-3.2.1.js"></script>
  <script type="text/javascript" src="/bootstrap-4.0.0-beta/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    $(function(){
      $("#create").click(function(){
        window.location.href = "/quest/create";
      });
    })
    function view(id){
      window.location.href = "/quest/view/"+id;
    }
  </script>
</head>
<body>
  <div> <h2 class="title">XXXX问题反馈簿</h2><span class="user-info">${Session["user"].name}，欢迎您 <a href="/logout" >注销</a></span></div>
  <hr/>
  <div class="nav-top">
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" href="/quest/list/0">已反馈列表</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/quest/list/1">全部反馈列表</a>
      </li>
    </ul>
  </div>

  <div class="btn-area">
    <button type="button" class="btn btn-primary btn-sm" id="create">发帖</button>
  </div>
  <div class="list-container">
    <table class="table table-hover">
      <tbody>
      <#if list?exists && list?size lte 0>
      <tr>
        <td colspan="3" align="center">暂无反馈信息！</td>
      </tr>
      <#else>
        <#list list as quest>
          <tr onclick="view('${quest.id}')">
            <td class="td1">${quest.title}</td>
            <td class="td2 grey-text">${quest.creUserName}</td>
            <td class="grey-text">${quest.creTime?date('yyyy-MM-dd')}</td>
          </tr>
        </#list>
      </#if>
      </tbody>
    </table>
  </div>
</body>
</html>
