<%@ page import="com.DAO.UserDao" %>
<%@ page import="org.dom4j.io.SAXReader" %>
<%@ page import="org.dom4j.Document" %>
<%@ page import="java.io.File" %>
<%@ page import="org.dom4j.DocumentException" %>
<%@ page import="org.dom4j.Element" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>未完成考试</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>

<%
    String cid=request.getParameter("cid");
    UserDao userdao = new UserDao();
    userdao.passChange(cid,session.getAttribute("username").toString(),"finished");

    String id = session.getAttribute("username").toString();
    String course = null;
    String teaid = null;
    String teacher = null;
    ResultSet rs1 = userdao.getCourseById(cid);
    while (rs1 != null && rs1.next()) {
        course = rs1.getString("cname");
        teaid = rs1.getString("teaid");
    }

    ResultSet rs2 = userdao.getTeacherById(teaid);
    while (rs2 != null && rs2.next()) {
        teacher = rs2.getString("teaname");
    }

    SAXReader saxReader = new SAXReader();
    Document document = null;

    try {
        document = saxReader.read(new File("/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/"+teacher+"/grade/"+course+"/"+id+".xml"));
    } catch (DocumentException e) {
        e.printStackTrace();
    }
    int mark = 0;
    Element root = document.getRootElement();
    for (Iterator i = root.elementIterator(); i.hasNext();) {
        Element next = (Element) i.next();
        if(next.getName().equals("singleSelection")||next.getName().equals("multipleSelection")||next.getName().equals("trueOrFalse")){
            if(next.elementText("answer").equals(next.elementText("trueAnswer")))
                mark+=Integer.valueOf(next.elementText("mark"));
        }
    }
    userdao.objMarked(cid,id,mark);

%>

<h2>提交成功</h2>
<input class="button layui-btn" type="button" onclick="x_admin_close()" value="确定">
</body>
</html>
