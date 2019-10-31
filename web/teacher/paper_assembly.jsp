<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <title>自动组卷</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="../css/paperMng.css">
    <script src="../js/respond.js"></script>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>

    <!--[if !IE]> -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='../js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>
    <!-- <![endif]-->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='../js/jquery-1.9.1.min.js'>" + "<" + "/script>");
    </script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.selectlist.js"></script>
    <script>
        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });
    </script>

</head>
<body>
<%
    UserDao userdao = new UserDao();
    String cid =request.getParameter("param");
    userdao.paperPass("cid",cid,"finished");
%>

<!--body begin-->
<div class="main-container">
    <div class="container body-box">

        <div class="paper-content">
            <div class="outcontent">
                <!--步骤 begin-->
                <div class="border_line">
                </div><!-- /.col -->
                <!--步骤 end-->
                <!--试卷配置信息 begin-->
                <form action="assembly.jsp" method="get" onsubmit="return fullmarkcheck();">
                <div class="deploy-main">

                    <div id="deployadd2" class="deploy-content" style="min-height: 200px;">

                            <div class="deploybox row">
                                <div class="col-lg-4 col-md-4 line-right">
                                    <div class="input-group input-group-lg deploytype">
                                        <span class="input-group-addon">简单题目</span>
                                        <select id="easy" name="easy" onchange="component()" >
                                            <option value="10" >10%</option>
                                            <option value="20" >20%</option>
                                            <option value="30" >30%</option>
                                            <option value="40" >40%</option>
                                            <option value="50" >50%</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 line-right">
                                    <div class="input-group input-group-lg deploytype">
                                        <span class="input-group-addon">中档题目</span>
                                        <select id="medium"name="medium" onchange="component()" >
                                            <option value="10" >10%</option>
                                            <option value="20" >20%</option>
                                            <option value="30" >30%</option>
                                            <option value="40" >40%</option>
                                            <option value="50" >50%</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 line-right">
                                    <div class="input-group input-group-lg deploytype">
                                        <span class="input-group-addon">复杂题目</span>
                                        <select id="hard"name="hard" onchange="component()" >
                                            <option value="10" >10%</option>
                                            <option value="20" >20%</option>
                                            <option value="30" >30%</option>
                                            <option value="40" >40%</option>
                                            <option value="50" >50%</option>
                                        </select>
                                    </div>
                                </div>
                                <div  id="instruction" style="color: red;display: none;align-content: center">难中易题目占比之和必须为100%!</div>
                            </div>
                    </div>
                </div>
                <div class="deploy-main" style="margin-top: -9%">
                        <div class="deploy-top">
                            <a id="addexam" class="btn btn-default add-exam">增加题型</a>
                            <!--<a class="btn btn-default loading">载入模板</a>-->
                        </div>
                    <div class="deploy-top">
                        <span class="input-group-addon" name="total">试卷名称&nbsp;&nbsp;&nbsp;</span>
                        <input id="examname" name="examname" value="<%=request.getParameter("param2")%>" style="width: 100%;height: 100%;text-align:center;padding-top: 1%;" readonly="readonly">
                        <!--<a class="btn btn-default loading">载入模板</a>-->
                    </div>
                    <div class="deploy-top">
                        <span class="input-group-addon" name="total">题型总数&nbsp;&nbsp;&nbsp;</span>
                        <input id="ques" name="question" style="width: 100%;height: 100%;text-align:center;padding-top: 1%;" readonly="readonly">
                        <input id="realques" name="realquestion" style="width: 100%;height: 100%;text-align:center;padding-top: 1%;" readonly="readonly" type="hidden">
                        <!--<a class="btn btn-default loading">载入模板</a>-->
                    </div>
                        <div id="deployadd" class="deploy-content" style="min-height: 200px;">
                            <div class="deploybox row">
                                <div class="col-lg-11 col-md-11 line-right">
                                    <div class="input-group input-group-lg deploytype">
                                        <span class="input-group-addon">题目类型</span>
                                        <select name="0jinji" >
                                            <option value="单项选择题" style="text-align: center">单项选择题</option>
                                            <option value="多项选择题" style="text-align: center">多项选择题</option>
                                            <option value="填空题" style="text-align: center">填空题</option>
                                            <option value="判断题" style="text-align: center">判断题</option>
                                            <option value="简答题" style="text-align: center">简答题</option>
                                        </select>
                                    </div>
                                    <div class="input-group input-group-lg deploytype" style="margin-top: 2%">
                                        <span class="input-group-addon" name="total">总分值&nbsp;&nbsp;&nbsp;</span>
                                        <input id="0sum" name="0sum" style="width: 100%;height: 100%" readonly="readonly">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 nopadleft">
                                            <div class="input-group input-group-lg deploytype ">
                                                <span class="input-group-addon zjj">单题分值</span>
                                                <select id="0value"name="0value" onchange="summation('0')">
                                                    <option value="10">10</option>
                                                    <option value="15">15</option>
                                                    <option value="20">20</option>
                                                    <option value="25">25</option>
                                                    <option value="30">30</option>
                                                </select>
                                                <div class="input-group-addon">分</div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 nopadright">
                                            <div class="input-group input-group-lg deploytype">
                                                <span class="input-group-addon zjj">数目</span>
                                                <select id="0num" name="0num" onchange="summation('0')">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="5">5</option>
                                                    <option value="10">10</option>
                                                </select>
                                                <div class="input-group-addon">题</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-1 col-md-1">
                                    <div class="deletebox">
                                        <a >删除</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btnbox">
                            <input value="发布试卷" style="width:49%;margin-left: 20%;" type="submit">
                        </div>
                </div>
            </form>
                <!--试卷配置信息 end-->

            </div>
        </div>
    </div>
</div>
<!--body end-->





<script type="text/javascript">


    var score = 0; //一道题的分值
    var scorenums = 0; //试题总数量

    var choosenums = 0; //已经使用了多少道题
    var choosescore = 0; //已经使用了多少分
    var ques=0;
    var display=0;
    var fullmark=0;
    //打开模态窗口
    $('#close-cn').modal({backdrop: 'static', keyboard: false , show: false});

    //paper-add-deploy.htm添加试题类型按钮
    $(document).ready(function() {
        var nums = $(".knowsmain li").length;
        for (var i = 0 ; i< nums;i++) {
            $(".knowsmain").children().eq(i).find(".twobox").find("input").val(0);
        }
        $('#addexam').click(function() {
            ques=ques+1;
            display=ques;
            document.getElementById("ques").value=display+1;
            document.getElementById("realques").value=ques+1;
            var tipcon =
                '<div class="deploybox row">' +
                '<div class="col-lg-11 col-md-11 line-right">' +
                '<div class="input-group input-group-lg deploytype">' +
                '<span class="input-group-addon">题目类型</span>' +
                '<select name="'+ques+'jinji" >' +
                '<option value="单项选择题">单项选择题</option>' +
                '<option value="多项选择题">多项选择题</option>' +
                '<option value="填空题">填空题</option>' +
                '<option value="判断题">判断题</option>' +
                '<option value="简答题">简答题</option>' +
                '</select>' +
                '</div>' +
                '<div class="input-group input-group-lg deploytype" style="margin-top: 2%">'+
                '<span class="input-group-addon">总分值&nbsp;&nbsp;&nbsp;</span>'+
                '<input id="'+ques+'sum" name="'+ques+'sum" style="width: 100%;height: 100%" readonly="readonly">'+
                '</div>'+
                '<div class="row">' +
                '<div class="col-lg-6 col-md-6 nopadleft">' +
                '<div class="input-group input-group-lg deploytype ">' +
                '<span class="input-group-addon zjj">单题分值</span>' +
                '<select id="'+ques+'value" name="'+ques+'value" onchange="summation('+ques+')" >' +
                '<option value="5">5</option>' +
                '<option value="10">10</option>' +
                '<option value="15">15</option>' +
                '<option value="20">20</option>' +
                '<option value="25">25</option>' +
                '<option value="30">30</option>' +
                '</select>' +
                '<div class="input-group-addon">分</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-lg-6 col-md-6 nopadright">' +
                '<div class="input-group input-group-lg deploytype">' +
                '<span class="input-group-addon zjj">数目</span>' +
                '<select id="'+ques+'num" name="'+ques+'num" onchange="summation('+ques+')" >' +
                '<option value="1">1</option>' +
                '<option value="2">2</option>' +
                '<option value="5">5</option>' +
                '<option value="10">10</option>' +
                '</select>' +
                '<div class="input-group-addon">题</div>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-lg-1 col-md-1">' +
                '<div class="deletebox">' +
                '<a>删除</a>' +
                '</div>' +
                '</div>' +
                '</div>';
            $('#deployadd').append(tipcon);
            // 删除表单
            $('.deletebox a').click(function() {
                $(this).parent().parent().parent().remove();
                display=ques-1;
                document.getElementById("ques").value=display+1;
            });


        });


    });


    function component(){
        var easy="";
        easy=document.getElementById("easy").value;
        var medium ="";
        medium = document.getElementById("medium").value;
        var hard = "";
        hard = document.getElementById("hard").value;
        var instruction=document.getElementById("instruction");
        instruction.style.display="none"
        var e=0;
        e=parseInt(easy);
        var m = 0;
        m = parseInt(medium);
        var h = 0;
        h = parseInt(hard);
        var sum=0;
        sum=e+m+h;
        if (sum>100||sum<100) {
            instruction.style.display="block";
        }
    }
    function summation(qtype){
        var num="";
        num=document.getElementById(qtype+"num").value;
        var score="";
        score=document.getElementById(qtype+"value").value;
        var n=0;
        n=parseInt(num);
        var s=0;
        s=parseInt(score);
        var sum=0;
        sum=n*s;
        fullmark=fullmark+sum;
        var summ="";
        summ=sum.toString();
        document.getElementById(qtype+"sum").value=summ;
    }
    function fullmarkcheck(){
        var i=0;
        var mark="";
        var mk=0;
        var fullmark=0;
        for(i;i<=ques;i++)
        {
            mark=document.getElementById(i+"sum").value;
            mk=parseInt(mark);
            fullmark=fullmark+mk;
        }
        if(fullmark>100||fullmark<100) {
            alert("满分必须是100分！");
            return false;
        }
        else {
            return true;
        }

    }

</script>

</body>
</html>