<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="../css/news_compile.css">
    <link rel="stylesheet" href="../css/news_compile1.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
<div class="x-body" style="margin: 0 auto">
    <form id="my-form" action="teacherAddBack.jsp" method="get">

        <section name="基本信息">

            <div><label class="note">教师姓名:</label><input id="teaname" name="teaname" type="text"/></div>
            <div><label class="note" style="padding-top: 2%">教师性别：</label>
                <label><input type="radio" name="teagender" value="男"/>男</label>
                <label><input type="radio" name="teagender" value="女"/>女</label>
            </div>
            <div style="padding-top: 2%"><label class="note">任职学院:</label>
                <select id="teacollege" name="teacollege" onchange="majorOption()">
                    <option value="default">&ndash; 选择任职学院 &ndash;</option>
                    <option value="软件学院">软件学院</option>
                    <option value="文学院">文学院</option>
                    <option value="化学学院">化学学院</option>
                    <option value="物理与天文学院">物理与天文学院</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">主要研究方向:</label>
                <select id="teamajor" name="teamajor">

                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">教师职称:</label>
                <select id="teatitle" name="teatitle">
                    <option value="default">&ndash; 选择教师职称 &ndash;</option>
                    <option value="教授">教授</option>
                    <option value="副教授">副教授</option>
                    <option value="讲师">讲师</option>
                    <option value="助理讲师">助理讲师</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label>教师邮箱:</label><input id="teamail" name="teamail" data-ideal="required email" type="email"/></div>

        </section>


        <div>
            <hr/>
        </div>

        <div>
            <button class="btn" type="submit">提交</button>
        </div>

    </form>
</div>
<script src="../lib/layui/layui.js"></script>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#startdate'//指定元素
        });
        laydate.render({
            elem: '#enddate'//指定元素
        });
    });
    function majorOption() {
        var teacollege=document.getElementById("teacollege");
        var index=teacollege.selectedIndex;
        var college=teacollege.options[index].value;
        /*var option="";*/
        var teamajor=document.getElementById("teamajor");
        var software=new Array("软件工程","网络工程","信息安全","数字媒体技术");
        var literature=new Array("中国语言文学","外国语言文学","新闻学","传播学","翻译");
        var chemistry=new Array("材料化学","有机化学","无机非金属","应用化学");
        var physic=new Array("量子物理学","大气科学","核科学","应用物理");
        if (college=="软件学院"){
            /*for(var i=0;i<teamajor.childNodes.length;i++){
                teamajor.options[i] = null;

            }*/
            teamajor.options.length=0;
            for(var q=0;q<software.length;q++){
                var objOption = document.createElement("OPTION");
                objOption.text= software[q];
                objOption.value=software[q];
                teamajor.options.add(objOption);
            }
        }
        if (college=="文学院"){
            /*for(var j=0;j<teamajor.childNodes.length;j++){
                teamajor.options[j] = null;

            }*/
            teamajor.options.length=0;
            for(var w=0;w<literature.length;w++){
                var objOption2 = document.createElement("OPTION");
                objOption2.text= literature[w];
                objOption2.value=literature[w];
                teamajor.options.add(objOption2);
            }
        }
        if (college=="化学学院"){
           /* for(var k=0;k<teamajor.childNodes.length;k++){
                teamajor.options[k] = null;

            }*/
            teamajor.options.length=0;
            for(var e=0;e<chemistry.length;e++){
                var objOption3 = document.createElement("OPTION");
                objOption3.text= chemistry[e];
                objOption3.value=chemistry[e];
                teamajor.options.add(objOption3);
            }
        }
        if (college=="物理与天文学院"){
            teamajor.options.length=0;
            for(var r=0;r<physic.length;r++){
                var objOption4 = document.createElement("OPTION");
                objOption4.text= physic[r];
                objOption4.value=physic[r];
                teamajor.options.add(objOption4);
            }
        }

    }
</script>
</body>
</html>

