<%@ page import="com.XML.ReadXml" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>题库维护</title>
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
<%
    ReadXml readXml = new ReadXml();
                                                                                                     //这里要接收上一页面传的课程名
    String file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/单选.xml";
    ArrayList<Question> questionArrayList = readXml.getSingleSelection(file);
    String url = "3question_bank_view.jsp?file=" + URLEncoder.encode(file,"utf-8");

%>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a href="1question_bank.jsp">题库维护</a>
        <a><cite>题目类型</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>

<fieldset class="layui-elem-field">
    <legend>题目统计</legend>
    <div class="layui-field-box">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                         lay-arrow="none" style="width: 100%; height: 90px;">
                        <div carousel-item="">
                            <ul class="layui-row layui-col-space10 layui-this">
                                <li class="layui-col-xs2">
                                    <a onclick="window.location.href='<%=url%>'" class="x-admin-backlog-body">
                                        <h3>单选</h3>
                                        <p>
                                            <cite>
                                                <%=questionArrayList.size()%>
                                            </cite>
                                        </p>
                                    </a>
                                </li>

                                <%
                                    file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/多选.xml";
                                    questionArrayList = readXml.getSingleSelection(file);
                                    url = "3question_bank_view.jsp?file=" + URLEncoder.encode(file,"utf-8");
                                %>
                                <li class="layui-col-xs2">
                                    <a onclick="window.location.href='<%=url%>'" class="x-admin-backlog-body">
                                        <h3>多选</h3>
                                        <p>
                                            <cite>
                                                <%=questionArrayList.size()%>
                                            </cite>
                                        </p>
                                    </a>
                                </li>

                                <%
                                    file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/判断.xml";
                                    questionArrayList = readXml.getSingleSelection(file);
                                    url = "3question_bank_view.jsp?file=" + URLEncoder.encode(file,"utf-8");
                                %>
                                <li class="layui-col-xs2">
                                    <a onclick="window.location.href='<%=url%>'" class="x-admin-backlog-body">
                                        <h3>判断</h3>
                                        <p>
                                            <cite>
                                                <%=questionArrayList.size()%>
                                            </cite>
                                        </p>
                                    </a>
                                </li>

                                <%
                                    file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/填空.xml";
                                    questionArrayList = readXml.getSingleSelection(file);
                                    url = "3question_bank_view.jsp?file=" + URLEncoder.encode(file,"utf-8");
                                %>
                                <li class="layui-col-xs2">
                                    <a onclick="window.location.href='<%=url%>'" class="x-admin-backlog-body">
                                        <h3>填空</h3>
                                        <p>
                                            <cite>
                                                <%=questionArrayList.size()%>
                                            </cite>
                                        </p>
                                    </a>
                                </li>

                                <%
                                    file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/简答.xml";
                                    questionArrayList = readXml.getSingleSelection(file);
                                    url = "3question_bank_view.jsp?file=" + URLEncoder.encode(file,"utf-8");
                                %>
                                <li class="layui-col-xs2">
                                    <a onclick="window.location.href='<%=url%>'" class="x-admin-backlog-body">
                                        <h3>简答</h3>
                                        <p>
                                            <cite>
                                                <%=questionArrayList.size()%>
                                            </cite>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
</body>
</html>
