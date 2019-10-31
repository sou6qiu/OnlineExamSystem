<%@ page import="com.XML.ModifyQuestion" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="org.dom4j.io.SAXReader" %>
<%@ page import="org.dom4j.Document" %>
<%@ page import="java.io.File" %>
<%@ page import="org.dom4j.DocumentException" %>
<%@ page import="org.dom4j.Element" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.dom4j.io.XMLWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取各变量的值
    String q = new String(request.getParameter("question").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String trueAnswer = new String(request.getParameter("trueAnswer").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String difficult = new String(request.getParameter("difficult").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String c = new String(request.getParameter("c").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String file = new String(request.getParameter("file").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);

    System.out.println(q);
    System.out.println(trueAnswer);
    System.out.println(difficult);
    System.out.println(c);
    System.out.println(file);
    //将题目信息封装到Question实体
    Question question = new Question();
    question.setQuestion(q);
    question.setTrueAnswer(trueAnswer);
    question.setDifficult(difficult);
    ModifyQuestion modifyQuestion = new ModifyQuestion();
    modifyQuestion.modifyOther(file, question, c);

%>

<html>
<head>
    <%--关闭当前窗口--%>
    <script>
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    </script>
</head>
</html>

