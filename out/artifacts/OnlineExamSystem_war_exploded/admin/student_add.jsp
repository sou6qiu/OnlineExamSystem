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
    <form id="my-form" action="studentAddBack.jsp" method="get">

        <section name="基本信息">

            <div><label class="note">学生姓名:</label><input id="stdname" name="stdname" type="text"/></div>
            <div><label class="note" style="padding-top: 2%">学生性别：</label>
                <label><input type="radio" name="stdgender" value="男"/>男</label>
                <label><input type="radio" name="stdgender" value="女"/>女</label>
            </div>
            <div><label class="note" style="padding-top: 2%">学生年级：</label>
                <label><input type="radio" name="stdgrade" value="2015级"/>2015级</label>
                <label><input type="radio" name="stdgrade" value="2016级"/>2016级</label>
                <label><input type="radio" name="stdgrade" value="2017级"/>2017级</label>
                <label><input type="radio" name="stdgrade" value="2018级"/>2018级</label>
            </div>

            <div style="padding-top: 2%"><label class="note">就读学院:</label>
                <select id="stdcollege" name="stdcollege" onchange="majorOption()">
                    <option value="default">&ndash; 选择就读学院 &ndash;</option>
                    <option value="软件学院">软件学院</option>
                    <option value="文学院">文学院</option>
                    <option value="化学学院">化学学院</option>
                    <option value="物理与天文学院">物理与天文学院</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">就读专业:</label>
                <select id="stdmajor" name="stdmajor">

                </select>
            </div>

            <div style="padding-top: 2%"><label>身份证号码:</label><input id="stdidcard" name="stdidcard" onchange="if(!checkIDCard()){alert('身份证格式不正确');}"></div>

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
        var teacollege=document.getElementById("stdcollege");
        var index=teacollege.selectedIndex;
        var college=teacollege.options[index].value;
        /*var option="";*/
        var teamajor=document.getElementById("stdmajor");
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
    function checkIDCard(){
           // 加权因子
        var idcode=document.getElementById("stdidcard").value;
        var weight_factor = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
             // 校验码
            var check_code = ['1', '0', 'X' , '9', '8', '7', '6', '5', '4', '3', '2'];

             var code = idcode + "";
             var last = idcode[17];//最后一个

             var seventeen = code.substring(0,17);

             // ISO 7064:1983.MOD 11-2
             // 判断最后一位校验码是否正确
             var arr = seventeen.split("");
             var len = arr.length;
             var num = 0;
             for(var i = 0; i < len; i++){
                     num = num + arr[i] * weight_factor[i];
                 }

             // 获取余数
             var resisue = num%11;
             var last_no = check_code[resisue];

             var idcard_patter = /^[1-9][0-9]{5}([1][9][0-9]{2}|[2][0][0|1][0-9])([0][1-9]|[1][0|1|2])([0][1-9]|[1|2][0-9]|[3][0|1])[0-9]{3}([0-9]|[X])$/;

             // 判断格式是否正确
             var format = idcard_patter.test(idcode);

             // 返回验证结果，校验码和格式同时正确才算是合法的身份证号码
             return last === last_no && format ? true : false;
         }
</script>
</body>
</html>