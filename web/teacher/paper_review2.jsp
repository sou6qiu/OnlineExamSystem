<%@ page import="java.util.ArrayList" %>
<%@ page import="com.entity.Question" %>
<%@ page import="com.XML.ReadXml" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>批阅试卷</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <link href="../css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../css/test.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="main">
    <%
        String stdid = request.getParameter("stdid");
        String objm = request.getParameter("objm");
        String stdname = URLDecoder.decode(request.getParameter("stdname"),"utf-8");
        String cid = request.getParameter("cid");
        UserDao userDao = new UserDao();
        String course = null;
        ResultSet rs = userDao.getCourseById(cid);
        while (rs != null && rs.next()) {
            course=rs.getString("cname");
        }

    %>
    <div>
        <h1><%=course%></h1>
    </div>

    <!--nr start-->
    <div class="test_main">
        <div><h2>学号：<%=stdid%>   姓名：<%=stdname%>   客观题分数：<%=objm%></h2></div>


        <div class="nr_left">
            <div class="test">
                <form action="do_paper_review.jsp" method="post">
                    <!--填空-->
                    <%
                        ReadXml readXml = new ReadXml();
                        ArrayList<Question> questionArrayList = readXml.getPaper("/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/grade/"+course+"/"+stdid+".xml");

                    %>
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>填空题</h2>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                int temp = 1;
                                if (questionArrayList.size() > 0) {
                                    for (int i = 0; i < questionArrayList.size(); i++) {
                                        Question question = questionArrayList.get(i);
                                        if (question.getType().equals("fillBlank")) {
                            %>
                            <li id="<%='f'+temp%>">
                                <div class="test_content_nr_tt">
                                    <i><%=temp%>
                                    </i><span>(<%=question.getMark()%>分)</span><%=question.getQuestion()%><b
                                    class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" readonly placeholder="<%=question.getAnswer()%>"
                                           type="text">
                                    <div class="layui-input-block" name="<%="fibm"+temp%>">
                                        <label>
                                            <input type="radio" name="ta<%=temp%>" value="<%=question.getMark()%>">正确
                                        </label>
                                        <label>
                                            <input type="radio" name="ta<%=temp%>" value="0">错误
                                        </label>
                                    </div>
                                </div>

                            </li>
                            <%
                                            temp++;
                                        }
                                    }
                                }
                            %>
                        </ul>
                    </div>
                    <!--简答-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>简答题</h2>
                        </div>
                    </div>

                    <div class="test_content_nr">
                    <ul>
                        <%
                            int temp_1 = 1;
                            if (questionArrayList.size() > 0) {
                                for (int i = 0; i < questionArrayList.size(); i++) {
                                    Question question = questionArrayList.get(i);
                                    if (question.getType().equals("shortAnswerQuestion")) {
                        %>
                        <li id="<%='s'+temp_1%>">
                            <div class="test_content_nr_tt">
                                <i><%=temp_1%>
                                </i><span>(<%=question.getMark()%>分)</span><%=question.getQuestion()%><b class="icon iconfont">&#xe881;</b>
                            </div>
                            <div class="test_content_nr_main">
                                <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_1"
                                          id="i"></textarea>
                                <div class="layui-inline">
                                    <label class="layui-form-label">分数: </label>
                                    <div class="layui-input-inline">
                                        <select name="<%="saqm"+temp_1%>" lay-verify="required" lay-search="">
                                            <option selected="selected">请选择</option>
                                            <%
                                                for(int m=0;m<=question.getMark();m++){
                                                    %>
                                            <option value="<%=m%>"><%=m%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <%
                                        temp_1++;
                                    }
                                }
                            }
                        %>
                    </ul>
                        <input type="hidden" value="<%=temp-1%>" name="fibnum">
                        <input type="hidden" value="<%=temp_1-1%>" name="saqnum">
                        <input type="hidden" value="<%=objm%>" name="objm">
                        <input type="hidden" value="<%=stdid%>" name="stdid">
                        <input type="hidden" value="<%=cid%>" name="cid">


                    </div>
                    <button class="layui-btn layui-btn-danger" style="position: fixed; bottom: 0; left: 80%;" type="submit">提交</button>
                    <button class="layui-btn" style="position: fixed; bottom: 0; left: 85%;" onclick="window.history.go(-1)">返回</button>
                </form>
            </div>
        </div>

        <div class="nr_right">
            <div class="nr_rt_main">
                <div class="rt_nr1">
                    <div class="rt_nr1_title">
                        <h1>
                            <i class="icon iconfont">&#xe692;</i>答题卡
                        </h1>
                        <p class="test_time">
                            <i class="icon iconfont">&#xe6fb;</i><b class="alt-1"></b>
                        </p>
                    </div>
                    <!--填空-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>填空题</h2>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for(int j=1;j<temp;j++){
                                        %>
                                <li><a href="#<%='f'+j%>"><%=j%></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                    <!--简答-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>简答题</h2>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for(int j=1;j<temp_1;j++){
                                %>
                                <li><a href="#<%='s'+j%>"><%=j%></a></li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--nr end-->

<script>
    window.jQuery(function ($) {
        "use strict";

        $('time').countDown({
            with_separators: false
        });
        $('.alt-1').countDown({
            css_class: 'countdown-alt-1'
        });
        $('.alt-2').countDown({
            css_class: 'countdown-alt-2'
        });

    });


    $(function () {
        $('li.option label').click(function () {
            debugger;
            var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
            var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
            // 设置已答题
            if (!cardLi.hasClass('hasBeenAnswer')) {
                cardLi.addClass('hasBeenAnswer');
            }

        });
    });
</script>

</body>
</html>
