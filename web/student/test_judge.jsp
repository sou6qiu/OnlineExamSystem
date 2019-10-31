<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.XML.CreatePaper" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.entity.Question" %>
<%@ page import="org.dom4j.Document" %>
<%@ page import="org.dom4j.DocumentHelper" %>
<%@ page import="org.dom4j.Element" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.dom4j.io.OutputFormat" %>
<%@ page import="org.dom4j.io.XMLWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.File" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/11/26
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
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
    String sid = session.getAttribute("username").toString();
    String cid = request.getParameter("param");
    String ename = request.getParameter("ename");
    UserDao userdao = new UserDao();
    ResultSet rs = userdao.paperSetting(ename);
    float a = 0, b = 0;
    int singlevalue = 0, singleeasy = 0, singlemedium = 0, singlehard = 0, multivalue = 0, multieasy = 0, multimedium = 0, multihard = 0, fillvalue = 0, filleasy = 0, fillmedium = 0, fillhard = 0, torfvalue = 0, torfeasy = 0, torfmedium = 0, torfhard = 0, shortvalue = 0, shorteasy = 0, shortmedium = 0, shorthard = 0;
    float easy = 0, medium = 0, hard = 0;

    while (rs != null && rs.next()) {
        easy = (float) (rs.getInt("easy") * 0.01);
        medium = (float) (rs.getInt("medium") * 0.01);
        hard = (float) (rs.getInt("hard") * 0.01);
        /*单选*/
        a = rs.getInt("singlemark");
        b = rs.getInt("singlenum");
        singlevalue = (int) (a / b);
        singleeasy = (int) (rs.getInt("singlenum") * easy);
        singlemedium = (int) (rs.getInt("singlenum") * medium);
        singlehard = (int) (rs.getInt("singlenum") * hard);
        /*多选*/
        a = rs.getInt("multimark");
        b = rs.getInt("multinum");
        multivalue = (int) (a / b);
        multieasy = (int) (rs.getInt("multinum") * easy);
        multimedium = (int) (rs.getInt("multinum") * medium);
        multihard = (int) (rs.getInt("multinum") * hard);
        /*填空*/
        a = rs.getInt("fillmark");
        b = rs.getInt("fillnum");
        fillvalue = (int) (a / b);
        filleasy = (int) (rs.getInt("fillnum") * easy);
        fillmedium = (int) (rs.getInt("fillnum") * medium);
        fillhard = (int) (rs.getInt("fillnum") * hard);
        /*判断*/
        a = rs.getInt("torfmark");
        b = rs.getInt("torfnum");
        torfvalue = (int) (a / b);
        torfeasy = (int) (rs.getInt("torfnum") * easy);
        torfmedium = (int) (rs.getInt("torfnum") * medium);
        torfhard = (int) (rs.getInt("torfnum") * hard);
        /*简答*/
        a = rs.getInt("shortmark");
        b = rs.getInt("shortnum");
        shortvalue = (int) (a / b);
        shorteasy = (int) (rs.getInt("shortnum") * easy);
        shortmedium = (int) (rs.getInt("shortnum") * medium);
        shorthard = (int) (rs.getInt("shortnum") * hard);
    }

    ArrayList<String> type = new ArrayList<>();
    int[] value = new int[5];
    ArrayList<Integer> easy_num = new ArrayList<>();
    ArrayList<Integer> middle_num = new ArrayList<>();
    ArrayList<Integer> hard_num = new ArrayList<>();
    if (singlevalue != 0) {
        type.add("单选");
        value[0] = singlevalue;
        easy_num.add(singleeasy);
        middle_num.add(singlemedium);
        hard_num.add(singlehard);
    }
    if (multivalue != 0) {
        type.add("多选");
        value[1]=multivalue;
        easy_num.add(multieasy);
        middle_num.add(multimedium);
        hard_num.add(multihard);
    }
    if (torfvalue != 0) {
        type.add("判断");
        value[2] = torfvalue;
        easy_num.add(torfeasy);
        middle_num.add(torfmedium);
        hard_num.add(torfhard);
    }
    if (fillvalue != 0) {
        type.add("填空");
        value[3] = fillvalue;
        easy_num.add(filleasy);
        middle_num.add(fillmedium);
        hard_num.add(fillhard);
    }
    if (shortvalue != 0) {
        type.add("简答");
        value[4] = shortvalue;
        easy_num.add(shorteasy);
        middle_num.add(shortmedium);
        hard_num.add(shorthard);
    }

    System.out.println(type);
    for (int v: value
         ) {
        System.out.println(value + " ");
    }
    System.out.println(easy_num);
    System.out.println(middle_num);
    System.out.println(hard_num);
    CreatePaper createPaper = new CreatePaper();
//    createPaper.createPaper(type, sid, ename, value, easy_num, middle_num, hard_num);
    ArrayList<Question> arrayList = createPaper.getQuestion(ename, type, easy_num, middle_num, hard_num);

    String fileName = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/grade/" + ename + "/" + sid +".xml";//创建的文件的文件名
    Document document = DocumentHelper.createDocument();//创建xml文件

    Element paper = document.addElement("paper");//建立根节点


    for (int i = 0; i < arrayList.size(); i++) {
        Question q = arrayList.get(i);
        Element qtype = paper.addElement(q.getType());
        Element mark, option1, option2, option3, option4, trueAnswer, answer;
        Element question = qtype.addElement("question");
        question.setText(q.getQuestion());
        switch (q.getType()) {
            case "singleSelection":
                mark = qtype.addElement("mark");
                System.out.println(value[0]);
                mark.setText(String.valueOf(value[0]));
                option1 = qtype.addElement("option1");
                option1.setText(q.getOption1());

                option2 = qtype.addElement("option2");
                option2.setText(q.getOption2());

                option3 = qtype.addElement("option3");
                option3.setText(q.getOption3());

                option4 = qtype.addElement("option4");
                option4.setText(q.getOption4());

                trueAnswer = qtype.addElement("trueAnswer");
                trueAnswer.setText(q.getTrueAnswer());

                answer = qtype.addElement("answer");
                break;

            case "multipleSelection":
                mark = qtype.addElement("mark");
                mark.setText(String.valueOf(value[1]));
                option1 = qtype.addElement("option1");
                option1.setText(q.getOption1());

                option2 = qtype.addElement("option2");
                option2.setText(q.getOption2());

                option3 = qtype.addElement("option3");
                option3.setText(q.getOption3());

                option4 = qtype.addElement("option4");
                option4.setText(q.getOption4());

                trueAnswer = qtype.addElement("trueAnswer");
                trueAnswer.setText(q.getTrueAnswer());

                answer = qtype.addElement("answer");
                break;

            case "trueOrFalse":
                mark = qtype.addElement("mark");
                mark.setText(String.valueOf(value[2]));
                trueAnswer = qtype.addElement("trueAnswer");
                trueAnswer.setText(q.getTrueAnswer());

                answer = qtype.addElement("answer");
                break;

            case "fillBlank":
                mark = qtype.addElement("mark");
                mark.setText(String.valueOf(value[3]));
                answer = qtype.addElement("answer");
                break;

            case "shortAnswerQuestion":
                mark = qtype.addElement("mark");
                mark.setText(String.valueOf(value[4]));
                answer = qtype.addElement("answer");
                break;
            default:
                break;
        }
    }



    long time = System.currentTimeMillis();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式

    System.out.println(df.format(time));
    System.out.println(df.format(time + 120 * 60 * 1000));
    Element Time = paper.addElement("Time");
    Element begin = Time.addElement("beginTime");
    begin.setText(df.format(time));
    Element end = Time.addElement("endTime");
    Element deadline = Time.addElement("deadline");
    deadline.setText(df.format(time + 120 * 60 * 1000));
    //设置生成xml的格式
    OutputFormat format = OutputFormat.createPrettyPrint();
    format.setEncoding("UTF-8");
    //将内容写入到文件中
    try {
        XMLWriter writer = new XMLWriter(new FileWriter(new File(fileName)));
        writer.write(document);
        writer.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

%>

<div class="makesure">
    <p>该堂考试内容为：<b style="color: red;"><%=ename%>
    </b></p>
    <p>考试时长：<b style="color: red">120分钟</b></p>
    <p>注意事项：<br/>考试期间只允许携带学生证、身份证、草稿纸、签字笔，不许携带与考试无关物品
        <br/>退出全屏或者交卷将视作为结束考试
        <br/>不允许交头接耳<br/>完成考试后提交即可离开考场
    </p>
    <p>确定要开始考试吗？一旦开始后不可退出</p>

</div>
<div style="margin: 0 auto;">
    <form action="test_paper1.jsp">
        <input type="hidden" name="cid" value="<%=cid%>">
        <input type="hidden" name="ename" value="<%=URLEncoder.encode(ename, "utf-8")%>">
        <button class="layui-btn" onclick="toggleFullScreen()" type="submit">确定</button>
    </form>
</div>

<script>

    function toggleFullScreen() {

        if (!document.fullscreenElement && // alternative standard method

            !document.mozFullScreenElement && !document.webkitFullscreenElement) {// current working methods

            if (document.documentElement.requestFullscreen) {

                document.documentElement.requestFullscreen();

            } else if (document.documentElement.mozRequestFullScreen) {

                document.documentElement.mozRequestFullScreen();

            } else if (document.documentElement.webkitRequestFullscreen) {

                document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);

            }

        } else {

            if (document.cancelFullScreen) {

                document.cancelFullScreen();

            } else if (document.mozCancelFullScreen) {

                document.mozCancelFullScreen();

            } else if (document.webkitCancelFullScreen) {

                document.webkitCancelFullScreen();

            }

        }

    }

</script>

</body>
</html>
