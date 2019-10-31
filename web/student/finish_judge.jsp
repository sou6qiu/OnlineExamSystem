<%@ page import="java.util.Random" %>
<%@ page import="com.XML.ReadXml" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.entity.Question" %>
<%@ page import="com.DAO.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>开始考试</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <style>
        div {
            font-size: 25px;
            color: #151515;
        }

        .makesure {
            text-align: center;
        }

        .button {
            width: 30%;
            height: 2em;
            font-size: 15px;
            margin-top: 10%;
            margin-left: 35%;
            cursor: pointer;
            color: #ffffff;
            background-color: #009688;
            border-radius: 3px;
            border: none;
            display: inline-block;
        }
    </style>
</head>
<body>
<%
    String cid=request.getParameter("cid");
    System.out.println(cid);



    String file = URLDecoder.decode(request.getParameter("nFile"), "utf-8");
    System.out.println(file);
    ReadXml readXml = new ReadXml();
    ArrayList<Question> questionArrayList = readXml.getPaper(file);
    int ss_num = 0, ms_num = 0, tf_num = 0, fb_num = 0, sa_num = 0;
    for (int i = 0; i < questionArrayList.size(); i++) {

        switch (questionArrayList.get(i).getType()) {
            case "singleSelection":
                if (questionArrayList.get(i).getAnswer() == null) {
                    ss_num++;
                }
                break;
            case "multipleSelection":
                if (questionArrayList.get(i).getAnswer() == null) {
                    ms_num++;
                }
                break;

            case "trueOrFalse":
                if (questionArrayList.get(i).getAnswer() == null) {
                    tf_num++;
                }
                break;

            case "fillBlank":
                if (questionArrayList.get(i).getAnswer() == null) {
                    fb_num++;
                }
                break;

            case "shortAnswerQuestion":
                if (questionArrayList.get(i).getAnswer() == null) {
                    sa_num++;
                }
                break;
            default:
                break;
        }
    }
    System.out.println("                  "+cid);
%>
<div class="makesure">
    <p>你还剩余以下题目未完成：</p>
    <p>单选题：<b style="color: red"><%=ss_num%></b>题</p>
    <p>多选题：<b style="color: red"><%=ms_num%></b>题</p>
    <p>判断题：<b style="color: red"><%=tf_num%></b>题</p>
    <p>填空题：<b style="color: red"><%=fb_num%></b>题</p>
    <p>简答题：<b style="color: red"><%=sa_num%></b>题</p>

    <p>确定要离开考试吗？一旦离开后结束考试</p>

</div>
<div>
    <form action="finish_judge1.jsp" method="post">
        <input type="hidden" value="<%=cid%>" name="cid">
        <input class="button layui-btn" type="submit" value="确定">
    </form>
</div>
</body>

</html>
