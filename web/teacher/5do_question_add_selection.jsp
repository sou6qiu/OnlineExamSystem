<%@ page import="com.XML.AddQuestion" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取各变量的值
    String type = new String(request.getParameter("type").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String q = new String(request.getParameter("question").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String option1 = new String(request.getParameter("option1").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String option2 = new String(request.getParameter("option2").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String option3 = new String(request.getParameter("option3").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String option4 = new String(request.getParameter("option4").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String trueAnswer = new String(request.getParameter("trueAnswer").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String difficult = new String(request.getParameter("difficult").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);

    System.out.println(trueAnswer);
    //将题目信息封装到Question实体
    Question question = new Question();
    question.setQuestion(q);
    question.setOption1(option1);
    question.setOption2(option2);
    question.setOption3(option3);
    question.setOption4(option4);
    question.setTrueAnswer(trueAnswer);
    question.setDifficult(difficult);
    AddQuestion addQuestion = new AddQuestion();
    String file = new String(request.getParameter("file").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    addQuestion.addSelection(file, question, type);
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

