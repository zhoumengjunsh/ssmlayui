<%--
  Created by IntelliJ IDEA.
  User: zhou_mj
  Date: 2018/1/26
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../resources/css/layui.css" media="all">
    <script src="../resources/layui/layui/layui.js" charset="utf-8"></script>

</head>
<body>
<table id="demo" lay-filter="test"></table>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 315
            ,url: 'findUserList' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                 {type:'checkbox',  width:80, sort: true, fixed: 'left'}
                ,{field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
                ,{field: 'name', title: '用户名', width:80}
                ,{field: 'password', title: '密码', width:80, sort: true}
                ,{field: 'age', title: '年龄', width:80}
            ]]
        });

    });
</script>
</body>
</html>
