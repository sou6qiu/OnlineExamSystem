<%@ page import="com.XML.ReadXml" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>考试</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link href="../css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../css/test.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <script type="text/javascript" src="../js/time/jquery.countdown.js"></script>
    <script type="text/javascript" src="../js/jquery.fullscreen.js"></script>
    <script type="text/javascript" src="../js/jquery.idealforms.js"></script>
    <script type="text/javascript" src="../js/jquery.selectlist.js"></script>
    <script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../js/respond.js"></script>
    <script type="text/javascript" src="ajax.js"></script>
    <style>
        .hasBeenAnswer {
            background: #009688;
            color: #fff;
        }
    </style>

</head>
<body>
<%
    UserDao userdao = new UserDao();
    String cid=request.getParameter("cid");
    userdao.passChange(cid,session.getAttribute("username").toString(),"testing");
%>
<%
    String course = URLDecoder.decode(request.getParameter("ename"), "utf-8");
    System.out.println(course);
    System.out.println(session.getAttribute("username").toString());
    String sid = session.getAttribute("username").toString();
    ReadXml readXml = new ReadXml();
    String file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/grade/" + course + "/" + sid +".xml";
    ArrayList<Question> arrayList = readXml.getPaper(file);
    int ss_num = 0, ms_num = 0, tf_num = 0, fb_num = 0, sa_num = 0;
    for (int i = 0; i < arrayList.size(); i++) {
        String type = arrayList.get(i).getType();
        switch (type) {
            case "singleSelection":
                ss_num++;
                break;
            case "multipleSelection":
                ms_num++;
                break;
            case "trueOrFalse":
                tf_num++;
                break;
            case "fillBlank":
                fb_num++;
                break;
            case "shortAnswerQuestion":
                sa_num++;
                break;
            default:
                break;
        }
    }
    System.out.println(file);
    String nFile = URLEncoder.encode(file, "utf-8");
%>
<div class="main">

    <!--nr start-->
    <div class="test_main">
        <div>
            <h1><%=course%></h1>
        </div>

        <div class="nr_left">
            <div class="test">
                <form action="" method="post">
                    <input class="layui-btn" type="button" name="test_jiaojuan"
                           style="position: fixed; bottom: 0; left: 66%;"
                           onclick="window.location.href='finish_judge.jsp?nFile=<%=nFile%>&cid=<%=cid%>'" value="交卷">
                    <%
                        if (ss_num != 0) {
                    %>
                    <!--单选-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>单选题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=ss_num%>
                            </i><span>题，</span><span>合计</span><i
                                    class="content_fs"><%=ss_num%>
                            </i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                for (int i = 0; i < ss_num; i++) {

                            %>
                            <li id="qu_0_<%=i%>">
                                <div class="test_content_nr_tt">
                                    <i><%=i + 1%>
                                    </i>
                                    <span>(1分)</span>
                                    <%=arrayList.get(i).getQuestion()%>
                                    <b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>
                                        <%
                                            String question = URLEncoder.encode(arrayList.get(i).getQuestion(),"utf-8");
                                            String option = null;
                                            String option_answer = null;
                                            String state = null;
                                            for (int j=0;j<4;j++){
                                                switch (j){
                                                    case 0: option="A"; option_answer=arrayList.get(i).getOption1();
                                                    break;
                                                    case 1: option="B";option_answer=arrayList.get(i).getOption2();
                                                    break;
                                                    case 2: option="C";option_answer=arrayList.get(i).getOption3();
                                                    break;
                                                    case 3: option="D";option_answer=arrayList.get(i).getOption4();
                                                    break;
                                                }
//                                                System.out.println("选项"+option);
//                                                System.out.println("正确答案"+arrayList.get(i).getAnswer());
                                                if(option.equals(arrayList.get(i).getAnswer())){

                                                    state ="checked";
                                                }

                                                else state = null;
                                        %>
                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="0answer<%=i+1%>"
                                                   id="0_answer_<%=i+1%>_option_<%=j+1%>" value="<%=option%>" onclick="ajax(this.value, '<%=question%>', '<%=nFile%>')" <%=state%>/>
                                            <label for="0_answer_<%=i+1%>_option_<%=j+1%>">
                                                <%=option%>.
                                                <p class="ue"
                                                   style="display: inline;"><%=option_answer%>
                                                </p>
                                            </label>
                                        </li>
                                        <%}%>


                                    </ul>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <%}%>


                    <%
                        if (ms_num != 0) {
                    %>
                    <!--多选-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>多选题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=ms_num%>
                            </i><span>题，</span><span>合计</span><i
                                    class="content_fs"><%=ms_num%>
                            </i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                for (int i = 0; i < ms_num; i++) {
                                String question = URLEncoder.encode(arrayList.get(ss_num+i).getQuestion(), "utf-8");
                            %>
                            <li id="qu_1_<%=i%>" >
                                <div class="test_content_nr_tt">
                                    <i><%=i + 1%>
                                    </i><span>(2分)</span><font><%=arrayList.get(ss_num + i).getQuestion()%>
                                </font>
                                    <b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul onblur="getTheCheckBoxValue(<%=i+1%>, <%=question%>)">
                                        <li class="option">
                                            <input type="checkbox" class="radioOrCheck" name="manswer<%=i+1%>"
                                                   id="1_answer_<%=i+1%>_option_1" value="A"/>

                                            <label for="1_answer_<%=i+1%>_option_1">
                                                A.
                                                <p class="ue"
                                                   style="display: inline;"><%=arrayList.get(ss_num + i).getOption1()%>
                                                </p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="checkbox" class="radioOrCheck" name="manswer<%=i+1%>"
                                                   id="1_answer_<%=i+1%>_option_2" value="B"
                                            />

                                            <label for="1_answer_<%=i+1%>_option_2">
                                                B.
                                                <p class="ue"
                                                   style="display: inline;"><%=arrayList.get(ss_num + i).getOption2()%>
                                                </p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="manswer<%=i+1%>"
                                                   id="1_answer_<%=i+1%>_option_3"  value="C"
                                            />

                                            <label for="1_answer_<%=i+1%>_option_3">
                                                C.
                                                <p class="ue"
                                                   style="display: inline;"><%=arrayList.get(ss_num + i).getOption3()%>
                                                </p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="checkbox" class="radioOrCheck" name="manswer<%=i+1%>"
                                                   id="1_answer_<%=i+1%>_option_4" value="D"/>

                                            <label for="1_answer_<%=i+1%>_option_4">
                                                D.
                                                <p class="ue"
                                                   style="display: inline;"><%=arrayList.get(ss_num + i).getOption4()%>
                                                </p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <%}%>

                    <%
                        if (tf_num != 0) {
                    %>
                    <!--判断-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>判断题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=tf_num%>
                            </i><span>题，</span><span>合计</span><i
                                    class="content_fs"><%=tf_num%>
                            </i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                for (int i = 0; i < tf_num; i++) {

                            %>
                            <li id="qu_2_<%=i%>">
                                <div class="test_content_nr_tt">
                                    <i><%=i + 1%>
                                    </i><span>(1分)</span><%=arrayList.get(ss_num + ms_num + i).getQuestion()%><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>
                                        <%
                                            String question = URLEncoder.encode(arrayList.get(ss_num + ms_num + i).getQuestion(),"utf-8");
                                            String option = null;
                                            String option_answer = null;
                                            String state = null;
                                            for (int j=0;j<2;j++){
                                                switch (j){
                                                    case 0: option="T"; option_answer=arrayList.get(ss_num + ms_num +i).getOption1();
                                                        break;
                                                    case 1: option="F";option_answer=arrayList.get(ss_num + ms_num +i).getOption2();
                                                        break;
                                                }
//                                                System.out.println("选项"+option);
//                                                System.out.println("正确答案"+arrayList.get(i).getAnswer());
                                                if(option.equals(arrayList.get(ss_num + ms_num + i).getAnswer())){

                                                    state ="checked";
                                                    System.out.println(state);
                                                }

                                                else state = null;
                                        %>
                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="2answer<%=i+1%>"
                                                   id="2_answer_<%=i+1%>_option_<%=j+1%>" value="<%=option%>" onclick="ajax(this.value, '<%=question%>', '<%=nFile%>')" <%=state%>/>
                                            <label for="2_answer_<%=i+1%>_option_<%=j+1%>">
                                                <%=option%>.
                                                <p class="ue"
                                                   style="display: inline;"><%=option_answer%>
                                                </p>
                                            </label>
                                        </li>
                                        <%}%>
                                    </ul>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <%}%>


                    <%
                        if (fb_num != 0) {
                    %>
                    <!--填空-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>填空题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=fb_num%>
                            </i><span>题，</span><span>合计</span><i
                                    class="content_fs"><%=fb_num%>
                            </i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                for (int i = 0; i < fb_num; i++) {
                                    String question = URLEncoder.encode(arrayList.get(ss_num + ms_num + tf_num + i).getQuestion(), "utf-8");
                            %>
                            <li id="qu_3_<%=i%>">
                                <div class="test_content_nr_tt">
                                    <i><%=i + 1%>
                                    </i><span>(3分)</span><%=arrayList.get(ss_num + ms_num + tf_num + i).getQuestion()%><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <div class="o">
                                        <label id="3-<%=i+1%>" class="fill" for="3_answer_<%=i+1%>_option_1">
                                            <input class="fill_text" type="text" value="<%=arrayList.get(ss_num + ms_num + tf_num + i).getAnswer()%>"
                                                   name="judge_answer_<%=i+1%>" id="3_answer_<%=i+1%>_option_1" onblur="ajax(this.value, '<%=question%>', '<%=nFile%>')">
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <%}%>


                    <!--简答-->
                    <%
                        if (sa_num != 0) {
                    %>
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>简答题</h2>
                            <p>
                                <span>共</span>
                                <i class="content_lit"><%=sa_num%>
                                </i><span>题，</span><span>合计</span>
                                <i class="content_fs"><%=sa_num%>
                                </i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>
                            <%
                                for (int i = 0; i < sa_num; i++) {
                                    String question = URLEncoder.encode(arrayList.get(ss_num + ms_num + tf_num + fb_num + i).getQuestion(), "utf-8");
                            %>
                            <li id="qu_4_<%=i%>">
                                <div class="test_content_nr_tt">
                                    <i><%=i + 1%>
                                    </i><span>(5分)</span><%=arrayList.get(ss_num + ms_num + tf_num + fb_num + i).getQuestion()%><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <label for="short_answer_<%=i+1%>">
                                        <textarea class="shortfill_text" wrap="soft" cols="80"
                                                  name="short_answer_<%=i+1%>" id="short_answer_<%=i+1%>" onblur="ajax(this.value, '<%=question%>', '<%=nFile%>')"></textarea>
                                    </label>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <%}%>

                </form>
            </div>
        </div>


        <%--
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        答题卡
        --%>
        <div class="nr_right">
            <div class="nr_rt_main">
                <div class="rt_nr1">
                    <div class="rt_nr1_title">
                        <h1>
                            <i class="icon iconfont">&#xe692;</i>答题卡
                        </h1>
                        <p class="test_time">
                            <i class="icon iconfont">&#xe6fb;</i><b class="alt-1">01:40</b>
                        </p>
                    </div>
                    <%
                        if (ss_num != 0) {

                    %>
                    <!--单选-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>单选题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=ss_num%>
                            </i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for (int i = 0; i < ss_num; i++) {

                                %>

                                <li><a href="#qu_0_<%=i%>"><%=i + 1%>
                                </a></li>

                                <%}%>
                            </ul>
                        </div>
                    </div>
                    <%}%>


                    <%
                        if (ms_num != 0) {

                    %>
                    <!--多选-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>多选题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=ms_num%>
                            </i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for (int i = 0; i < ms_num; i++) {

                                %>

                                <li><a href="#qu_1_<%=i%>"><%=i + 1%>
                                </a></li>

                                <%}%>
                            </ul>
                        </div>
                    </div>
                    <%}%>


                    <%
                        if (tf_num != 0) {

                    %>
                    <!--判断-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>判断题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=tf_num%>
                            </i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for (int i = 0; i < tf_num; i++) {


                                %>
                                <li><a href="#qu_2_<%=i%>"><%=i + 1%>
                                </a></li>

                                <%}%>
                            </ul>
                        </div>
                    </div>
                    <%}%>


                    <%
                        if (fb_num != 0) {

                    %>
                    <!--填空-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>填空题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=fb_num%>
                            </i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for (int i = 0; i < fb_num; i++) {
                                %>
                                <li><a href="#qu_3_<%=i%>"><%=i + 1%>
                                </a></li>
                                <%}%>
                            </ul>
                        </div>
                    </div>
                    <%}%>

                    <%
                        if (sa_num != 0) {

                    %>
                    <!--简答-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>简答题</h2>
                            <p>
                                <span>共</span><i class="content_lit"><%=sa_num%>
                            </i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>
                                <%
                                    for (int i = 0; i < sa_num; i++) {
                                %>
                                <li><a href="#qu_4_<%=i%>"><%=i + 1%>
                                </a></li>
                                <%}%>
                            </ul>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>

        </div>

    </div>
</div>
</body>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/jquery.easy-pie-chart.js"></script>
<!--时间js-->
<script src="../js/time/jquery.countdown.js"></script>
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


<script>
    window.onload = function () {
        var examId1 = $("#3-1").closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
        var examId2 = $("#3-2").closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
        var examId3 = $("#3-3").closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
        var examId4 = $("#3-4").closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
        var examId5 = $("#3-5").closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
        var cardLi1 = $('a[href=#' + examId1 + ']'); // 根据题目ID找到对应答题卡
        var cardLi2 = $('a[href=#' + examId2 + ']'); // 根据题目ID找到对应答题卡
        var cardLi3 = $('a[href=#' + examId3 + ']'); // 根据题目ID找到对应答题卡
        var cardLi4 = $('a[href=#' + examId4 + ']'); // 根据题目ID找到对应答题卡
        var cardLi5 = $('a[href=#' + examId5 + ']'); // 根据题目ID找到对应答题卡
        var janswer1 = document.getElementById("3_answer_1_option_1");
        var janswer2 = document.getElementById("3_answer_2_option_1");
        var janswer3 = document.getElementById("3_answer_3_option_1");
        var janswer4 = document.getElementById("3_answer_4_option_1");
        var janswer5 = document.getElementById("3_answer_5_option_1");
        janswer1.addEventListener("input", inpFunction1);
        janswer2.addEventListener("input", inpFunction2);
        janswer3.addEventListener("input", inpFunction3);
        janswer4.addEventListener("input", inpFunction4);
        janswer5.addEventListener("input", inpFunction5);

        function inpFunction1() {
            if (janswer1.value.length <= 0) {
                event.preventDefault();
                cardLi1.removeClass('hasBeenAnswer');
                return false;
            } else if (janswer1.value.length > 0) {
                cardLi1.addClass('hasBeenAnswer');
            }
        }

        function inpFunction2() {
            if (janswer2.value.length <= 0) {
                event.preventDefault();
                cardLi2.removeClass('hasBeenAnswer');
                return false;
            } else if (janswer2.value.length > 0) {
                cardLi2.addClass('hasBeenAnswer');
            }
        }

        function inpFunction3() {
            if (janswer3.value.length <= 0) {
                event.preventDefault();
                cardLi3.removeClass('hasBeenAnswer');
                return false;
            } else if (janswer3.value.length > 0) {
                cardLi3.addClass('hasBeenAnswer');
            }
        }

        function inpFunction4() {
            if (janswer4.value.length <= 0) {
                event.preventDefault();
                cardLi4.removeClass('hasBeenAnswer');
                return false;
            } else if (janswer4.value.length > 0) {
                cardLi4.addClass('hasBeenAnswer');
            }
        }

        function inpFunction5() {
            if (janswer5.value.length <= 0) {
                event.preventDefault();
                cardLi5.removeClass('hasBeenAnswer');
                return false;
            } else if (janswer5.value.length > 0) {
                cardLi5.addClass('hasBeenAnswer');
            }
        }


        function auto_submit() {
            alert("你试图离开当前窗口，系统将自动提交试卷！");
            window.location.href(test_havenot.jsp);
        }

        window.onblur = auto_submit;
    }
</script>
</html>
