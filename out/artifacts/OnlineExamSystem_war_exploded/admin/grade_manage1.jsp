<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看成绩</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="../css/news_compile.css">
    <link rel="stylesheet" href="../css/news_compile1.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a href="grade_manage.jsp">成绩管理</a>
        <a href="grade_manage1.jsp"><cite>这里要获取课程名</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so layui-form-pane">
            <input class="layui-input" placeholder="" name="cate_name">
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon"></i>搜索</button>
        </form>
    </div>
    <xblock>
        <span class="x-right" style="line-height:40px">共有数据：2/60</span>
    </xblock>
    <table class="layui-table layui-form">
        <thead>
        <tr>
            <th width="20">
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th width="70">ID</th>
            <th>姓名</th>
            <th>成绩</th>
            <th width="120">操作</th>
        </thead>
        <tbody class="x-cate">
        <tr cate-id='1' fid='0'>
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i>
                </div>
            </td>
            <td>1</td>
            <td>
                宋斌
            </td>
            <td>100</td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('编辑','grade_detail.jsp')">
                    <i class="layui-icon">&#xe642;</i>详情
                </button>

            </td>
        </tr>

        <tr cate-id='2' fid='0'>
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i>
                </div>
            </td>
            <td>2</td>
            <td>
                徐方明
            </td>
            <td>99</td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('编辑','grade_detail.jsp')">
                    <i class="layui-icon">&#xe642;</i>详情
                </button>

            </td>
        </tr>
        </tbody>
    </table>
</div>
<style type="text/css">

</style>
<script>
    layui.use(['form'], function () {
        form = layui.form;

    });


    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>
</html>
