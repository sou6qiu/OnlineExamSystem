<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/19
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<html>
<head>
    <title>Please Wait A Second</title>
</head>
<body>
<%
    /*if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("2")){
        response.sendRedirect("../login.jsp");
    }*/
    UserDao userdao = new UserDao();
    String ename=request.getParameter("examname");
    String easy=request.getParameter("easy");
    String medium=request.getParameter("medium");
    String hard=request.getParameter("hard");
    String ques=request.getParameter("realquestion");
    String questionname=null;
    String mark=null;
    String num=null;
    int singlemark=0,singlenum=0,multimark=0,multinum=0,fillmark=0,fillnum=0,torfmark=0,torfnum=0,shortmark=0,shortnum=0,ieasy=0,imedium=0,ihard=0;
    System.out.println(ques);
    System.out.println(easy+medium+hard);
    try {
        ieasy=Integer.parseInt(easy);
        imedium=Integer.parseInt(medium);
        ihard=Integer.parseInt(hard);
        int quest = Integer.parseInt(ques);
        for (int i=0;i<quest;i++){
            questionname=request.getParameter(i+"jinji");
            mark=request.getParameter(i+"sum");
            num=request.getParameter(i+"num");
            if(questionname!=null){
                if(questionname.equals("单项选择题")){
                singlemark=Integer.parseInt(mark);
                singlenum=Integer.parseInt(num);
                System.out.println(singlemark+"sm");
                System.out.println(singlenum+"sn");
                }
                else if(questionname.equals("多项选择题")){
                multimark=Integer.parseInt(mark);
                multinum=Integer.parseInt(num);
                    System.out.println(multimark+"mm");
                    System.out.println(multinum+"mn");
                }
                else if(questionname.equals("填空题")){
                fillmark=Integer.parseInt(mark);
                fillnum=Integer.parseInt(num);
                    System.out.println(fillmark+"fm");
                    System.out.println(fillnum+"fn");
                }
                else if(questionname.equals("判断题")){
                torfmark=Integer.parseInt(mark);
                torfnum=Integer.parseInt(num);
                    System.out.println(torfmark+"tm");
                    System.out.println(torfnum+"tn");
                }
                else if(questionname.equals("简答题")){
                shortmark=Integer.parseInt(mark);
                shortnum=Integer.parseInt(num);
                    System.out.println(shortmark+"shm");
                    System.out.println(shortnum+"shn");
                }
            }
            System.out.println(questionname+mark+num);
        }
        userdao.examAdd(ename,ieasy,imedium,ihard,singlemark,singlenum,multimark,multinum,fillmark,fillnum,shortmark,shortnum,torfmark,torfnum);

    }
    catch (Exception ex)
    {
        ex.printStackTrace();
    }
%>

</body>
</html>
