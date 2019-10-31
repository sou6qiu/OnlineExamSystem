<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程信息</title>
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
    <form id="my-form" action="courseAddBack.jsp" method="get">

        <section name="基本信息">

            <div><label class="note">课程名称:</label><input id="cname" name="cname" type="text"/></div>
            <div style="padding-top: 2%"><label class="note">考试时长:</label>
                <select id="ctest" name="ctest">
                    <option value="default">&ndash; 考试时长 &ndash;</option>
                    <option value="45分钟">45分钟</option>
                    <option value="60分钟">60分钟</option>
                    <option value="120分钟">120分钟</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">上课时间:</label>
                <select id="weekday" name="weekday">
                    <option value="default">&ndash; 选择上课时间 &ndash;</option>
                    <option value="周一">周一</option>
                    <option value="周二">周二</option>
                    <option value="周三">周三</option>
                    <option value="周四">周四</option>
                    <option value="周五">周五</option>
                    <option value="周六">周六</option>
                    <option value="周日">周日</option>
                </select>
                <select id="time" name="time"style="padding-top: 2%">
                    <option value="default">&ndash; 选择上课时间 &ndash;</option>
                    <option value="1-2节">1-2节</option>
                    <option value="3-4节">3-4节</option>
                    <option value="5-6节">5-6节</option>
                    <option value="7-8节">7-8节</option>
                    <option value="9-10节">9-10节</option>
                    <option value="1-4节">1-4节</option>
                    <option value="5-8节">5-8节</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">课程学分:</label>
                <select id="credit" name="credit">
                    <option value="default">&ndash; 选择课程学分 &ndash;</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </div>
            <div style="padding-top: 2%"><label class="note">课程学时:</label>
                <select id="period" name="period">
                    <option value="default">&ndash; 选择课程学时 &ndash;</option>
                    <option value="18学时">18学时</option>
                    <option value="36学时">36学时</option>
                    <option value="54学时">54学时</option>
                    <option value="64学时">64学时</option>
                </select>
            </div>

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
</script>
</body>

</html>
