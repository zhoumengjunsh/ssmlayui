<%--
  Created by IntelliJ IDEA.
  User: zhou_mj
  Date: 2018/1/25
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>layui</title>
    <link rel="stylesheet" href="resources/css/layui.css" media="all">
    <script src="resources/layui/layui/layui.js" charset="utf-8"></script>
</head>
<body style="background-color: lightgrey">

<div style="margin-top: 200px;margin-left: 400px; width: 500px;height:400px ">
<fieldset class="layui-elem-field " style="margin-top: 40px; width: 600px">
    <legend>layui登录界面</legend>

<form class="layui-form" action="mydemo/login" method="post">
    <div class = "layui-form-item">
        <label class="layui-form-label">用户名:</label>
        <div class="layui-input-block">
            <input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
    </div>
    <div class = "layui-form-item">
        <label class="layui-form-label">密码:</label>
        <div class="layui-input-block">
            <input type="text" name="password" lay-verify ="required" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo">登录</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
    
    <script>
        layui.use(['form', 'layedit', 'laydate'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });

            //创建一个编辑器
            var editIndex = layedit.build('LAY_demo_editor');

            //自定义验证规则
            form.verify({
                title: function(value){
                    if(value.length < 5){
                        return '标题至少得5个字符啊';
                    }
                }
                ,pass: [/(.+){6,12}$/, '密码必须6到12位']
                ,content: function(value){
                    layedit.sync(editIndex);
                }
            });

            //监听指定开关
            form.on('switch(switchTest)', function(data){
                layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                    offset: '6px'
                });
                layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
            });

            //监听提交
           // form.on('submit(demo)', function(data){
                // layer.alert(JSON.stringify(data.field), {
                //     title: '最终的提交信息'
                // })
                //return false;
            //});


        });
    </script>

</form>
</fieldset>
</div>

</body>
</html>
