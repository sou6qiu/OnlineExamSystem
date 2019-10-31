<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>云南大学在线考试系统</title>
  <meta name="renderer" content="webkit|ie-comp|ie-stand">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
  <meta http-equiv="Cache-Control" content="no-siteapp" />

  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="../css/font.css">
  <link rel="stylesheet" href="../css/xadmin.css">
  <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="../lib/layui/layui.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/xadmin.js"></script>

</head>
<%
  if(session.getAttribute("username")==null|| !session.getAttribute("role").toString().equals("0")){
    response.sendRedirect("../login.jsp");
  }
%>
<body>
<!-- 顶部开始 -->
<div class="container">
  <div class="logo"><a href="./index.jsp">云南大学在线考试系统</a></div>
  <div class="left_open">
    <i title="展开左侧栏" class="iconfont">&#xe699;</i>
  </div>
  <ul class="layui-nav right" lay-filter="">
    <li class="layui-nav-item">
      <a href="javascript:;"><%=session.getAttribute("realname")%></a>
      <dl class="layui-nav-child"> <!-- 二级菜单 -->
        <dd><a href="quit.jsp">退出</a></dd>
      </dl>
    </li>
  </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
  <div id="side-nav">
    <ul id="nav">
      <li>
        <a href="javascript:;">
          <i class="iconfont">&#xe723;</i>
          <cite>课程管理</cite>
          <i class="iconfont nav_right">&#xe697;</i>
        </a>
        <ul class="sub-menu">
          <li>
            <a _href="course_view.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>已选课程</cite>
            </a>
          </li >
          <li>
            <a _href="course_add.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>添加课程</cite>
            </a>
          </li >
        </ul>
      </li>

      <li>
        <a href="javascript:;">
          <i class="iconfont">&#xe726;</i>
          <cite>考试管理</cite>
          <i class="iconfont nav_right">&#xe697;</i>
        </a>
        <ul class="sub-menu">
          <li>
            <a _href="test_havenot.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>未开始考试</cite>
            </a>
          </li>
          <li>
            <a _href="test_ing.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>进行中考试</cite>
            </a>
          </li>
          <li>
            <a _href="test_done.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>已完成考试</cite>
            </a>
          </li>
        </ul>
      </li>

      <li>
        <a href="javascript:;">
          <i class="iconfont">&#xe726;</i>
          <cite>个人管理</cite>
          <i class="iconfont nav_right">&#xe697;</i>
        </a>
        <ul class="sub-menu">
          <%--<li>--%>
            <%--<a _href="grade_search.jsp">--%>
              <%--<i class="iconfont">&#xe6a7;</i>--%>
              <%--<cite>成绩查询</cite>--%>
            <%--</a>--%>
          <%--</li>--%>
          <li>
            <a _href="user_info.jsp">
              <i class="iconfont">&#xe6a7;</i>
              <cite>个人中心</cite>
            </a>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
  <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
    <ul class="layui-tab-title">
      <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
    </ul>
    <div class="layui-tab-content">
      <div class="layui-tab-item layui-show">
        <iframe src='welcome-adm.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
      </div>
    </div>
  </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
  <div class="copyright">云南大学软件学院版权所有</div>
</div>
<!-- 底部结束 -->

</body>
</html>