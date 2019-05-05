<!doctype html>
<html lang="zh_CN">
<head>
  <meta charset="utf-8">
  <title>问题反馈</title>
  <link rel="stylesheet" href="/bootstrap-4.0.0-beta/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/css/bootstrap-table.min.css" />
  <link rel="stylesheet" href="/css/quest.css" />
  <script type="text/javascript" src="/jquery-3.2.1.js"></script>
  <script type="text/javascript" src="/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="/js/bootstrap-table-export.js"></script>
  <script type="text/javascript" src="/js/bootstrap-table-zh-CN.min.js"></script>
  <script type="text/javascript" src="/js/FileSaver.min.js"></script>
  <script type="text/javascript" src="/js/tableExport.min.js"></script>
  <script type="text/javascript" src="/js/xlsx.core.min.js"></script>
  <script type="text/javascript">

     $("#table").bootstrapTable({ // 对应table标签的id
          url: '/questList',                                   // 请求后台的URL（*）
          contentType: "application/x-www-form-urlencoded",   // 编码类型
          method: 'post',                                     // 请求方式（*）
          cache: false,                                       // 是否使用缓存
          striped: false,                                  // 是否显示行间隔色
          sortable: true,                                     // 是否启用排序
          sortStable: true,                                   // 设置为 true 将获得稳定的排序
          sortName: 'creTime',                                // 排序列名称
          sortOrder: 'asc',                              // 排序方式  asc 或者 desc
          pagination: true,   // 是否显示分页（*）
          pageNumber: 1,                                      // 初始化加载第一页，默认第一页
          pageSize:15,                                       // 每页的记录行数（*）
          pageList: [15, 25, 50],                             // 可供选择的每页的行数（*）
          iconSize: 'outline',                                // 图标大小：undefined默认的按钮尺寸 xs超小按钮sm小按钮lg大按钮
          toolbar: '#toolbar',                                // 指定工作栏
          sidePagination: "server",                           // 启用服务端分页
          search: true,           // 是否显示搜索框功能
          showSearch: true,   // 是否显示检索信息
          showRefresh: true, // 是否显示刷新按钮
          showColumns: true, // 是否显示隐藏某列下拉框
          showToggle: true,   // 是否显示详细视图和列表视图的切换按钮
          showExport: true,   // 是否支持导出文件
          queryParams: [

          ],                       // 传递参数（*）
          columns: [
              {
                  field: 'title', // 返回json数据中的name
                  title: '', // 表格表头显示文字
                  align: 'center', // 左右居中
                  valign: 'middle' // 上下居中
              }, {
                  field: 'creUserName',
                  title: '',
                  align: 'center',
                  valign: 'middle'
              }, {
                  field: 'creTime',
                  title: '',
                  align: 'center',
                  valign: 'middle',
              }
          ],                           // 显示列信息（*）
          responseHandler: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求
              return {
                  limit: params.limit, // 每页要显示的数据条数
                  offset: params.offset, // 每页显示数据的开始行号
              }
          }
      });


  </script>

</head>
<body>
  <h2 class="title">XXXX问题反馈簿</h2>
  <hr/>
  <table data-toggle="table" data-url="/quest/questList" data-method="post" data-search="true" data-search-align="left">
  </table>
</body>
</html>
