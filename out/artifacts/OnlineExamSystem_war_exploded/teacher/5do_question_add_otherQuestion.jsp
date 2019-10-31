<%@ page import="com.XML.AddQuestion" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取各变量的值
    String type = new String(request.getParameter("type").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String q = new String(request.getParameter("question").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String trueAnswer = new String(request.getParameter("trueAnswer").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String difficult = new String(request.getParameter("difficult").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);

    //将题目信息封装到Question实体
    Question question = new Question();
    question.setQuestion(q);
    question.setTrueAnswer(trueAnswer);
    question.setDifficult(difficult);
    AddQuestion addQuestion = new AddQuestion();
    String file = new String(request.getParameter("file").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    addQuestion.addOtherQuestion(file, question, type);

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

