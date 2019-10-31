<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>成绩详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link href="../css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../css/test.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="../css/news_compile.css">
    <link rel="stylesheet" href="../css/news_compile1.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <style>
        .hasBeenAnswer {
            background: #009688;
            color: #fff;
        }
    </style>

</head>
<body>
<div class="main">

    <!--nr start-->
    <div class="test_main">
        <div>
            <h1>基于Java的XML技术及应用考试</h1>
        </div>

        <div class="nr_left">
            <div class="test">
                <form action="" method="post">
                    <button class="layui-btn layui-btn-danger" style="position: fixed; bottom: 0; left: 66%;">交卷</button>

                    <!--单选-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>单选题</h2>
                            <p>
                                <span>共</span><i class="content_lit">20</i><span>题，</span><span>合计</span><i
                                    class="content_fs">20</i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>

                            <li id="qu_0_0">
                                <div class="test_content_nr_tt">
                                    <i>1</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="0_answer_1_option_1"/>
                                            <label for="0_answer_1_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">在工具栏中点击“workflow”标签</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="0_answer_1_option_2"/>
                                            <label for="0_answer_1_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">在缺陷单界面中点击“推进流程”按钮</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="0_answer_1_option_3"/>
                                            <label for="0_answer_1_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">在缺陷单界面中点击“提交”按钮</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="0_answer_1_option_4"/>
                                            <label for="0_answer_1_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">后台启动流程推进</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_1">
                                <div class="test_content_nr_tt">
                                    <i>2</i><span>(1分)</span><font>在营销系统中查询客户有无欠费、余额及抄表数据接待客户时应做到哪些最基本的礼仪？</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer2"
                                                   id="0_answer_2_option_1"/>
                                            <label for="0_answer_2_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">起身、微笑、示坐、问候客户</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer2"
                                                   id="0_answer_2_option_2"
                                            />


                                            <label for="0_answer_2_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">坐着，问候客户</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer2"
                                                   id="0_answer_2_option_3"
                                            />


                                            <label for="0_answer_2_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">坐着，问候客户</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer2"
                                                   id="0_answer_2_option_4"
                                            />


                                            <label for="0_answer_2_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">请问需要办理什么业务</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_2">
                                <div class="test_content_nr_tt">
                                    <i>3</i><span>(1分)</span><font>请在下列选项中选择正确进入电力营销系统网址</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer3"
                                                   id="0_answer_3_option_1"
                                            />


                                            <label for="0_answer_3_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">
                                                    http://10.113.225.24:83/epm/static/logon/logon.jsp</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer3"
                                                   id="0_answer_3_option_2"
                                            />


                                            <label for="0_answer_3_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">
                                                    http://10.113.255.24:83/epm/static/logon/logon.jsp</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer3"
                                                   id="0_answer_3_option_3"
                                            />


                                            <label for="0_answer_3_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">
                                                    http://10.113.255.24:81/epm/static/logon/logon.jsphttp://10.113.245.24:81/epm/static/logon/logon.jsp</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_3">
                                <div class="test_content_nr_tt">
                                    <i>4</i><span>(1分)</span><font>如何在电力营销系统查询出客户的是否有余额</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer4"
                                                   id="0_answer_4_option_1"
                                            />


                                            <label for="0_answer_4_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">在综合查询下的电量电费查询中进行查询</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer4"
                                                   id="0_answer_4_option_2"
                                            />


                                            <label for="0_answer_4_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">在综合查询下的抄表信息查询中点击抄表数据进行查询</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer4"
                                                   id="0_answer_4_option_3"
                                            />


                                            <label for="0_answer_4_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">在收费管理下的综合查询中点击欠费查询进行查询</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer4"
                                                   id="0_answer_4_option_4"
                                            />


                                            <label for="0_answer_4_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">在收费管理下的坐收交费中进行查询</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_4">
                                <div class="test_content_nr_tt">
                                    <i>5</i><span>(1分)</span><font>检查、使用万用表,用万用表测量一小型加工厂线电压为351V，请问其电压是否合格（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer5"
                                                   id="0_answer_5_option_1"
                                            />


                                            <label for="0_answer_5_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">合格</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer5"
                                                   id="0_answer_5_option_2"
                                            />


                                            <label for="0_answer_5_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">不合格</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_5">
                                <div class="test_content_nr_tt">
                                    <i>6</i><span>(1分)</span><font>检查、使用万用表,用万用表测量一小型加工厂线电压为415V，请问其电压是否合格（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer6"
                                                   id="0_answer_6_option_1"
                                            />


                                            <label for="0_answer_6_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">合格</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer6"
                                                   id="0_answer_6_option_2"
                                            />


                                            <label for="0_answer_6_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">不合格</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_6">
                                <div class="test_content_nr_tt">
                                    <i>7</i><span>(1分)</span><font>万用表使用完毕后，应将转换开关调至（ ）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer7"
                                                   id="0_answer_7_option_1"
                                            />


                                            <label for="0_answer_7_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">交流电流最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer7"
                                                   id="0_answer_7_option_2"
                                            />


                                            <label for="0_answer_7_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">直流电流最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer7"
                                                   id="0_answer_7_option_3"
                                            />


                                            <label for="0_answer_7_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">交流电压最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer7"
                                                   id="0_answer_7_option_4"
                                            />


                                            <label for="0_answer_7_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">直流电压最高档或空档</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_7">
                                <div class="test_content_nr_tt">
                                    <i>8</i><span>(1分)</span><font>钳形电流表的检查、使用方法,如何判断钳形电流表电池电量充足（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer8"
                                                   id="0_answer_8_option_1"
                                            />


                                            <label for="0_answer_8_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">钳形电流表开机后数字显示清晰</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer8"
                                                   id="0_answer_8_option_2"
                                            />


                                            <label for="0_answer_8_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">钳形电流表开机后数字显示模糊</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer8"
                                                   id="0_answer_8_option_3"
                                            />


                                            <label for="0_answer_8_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">钳形电流表开机后显示屏发光</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer8"
                                                   id="0_answer_8_option_4"
                                            />


                                            <label for="0_answer_8_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">钳形电流表开机后发出声响</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_8">
                                <div class="test_content_nr_tt">
                                    <i>9</i><span>(1分)</span><font>钳形电流表的检查、使用方法,钳形电流表使用完毕后，应将转换开关调至（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer9"
                                                   id="0_answer_9_option_1"
                                            />


                                            <label for="0_answer_9_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">交流电压最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer9"
                                                   id="0_answer_9_option_2"
                                            />


                                            <label for="0_answer_9_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">交流电流最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer9"
                                                   id="0_answer_9_option_3"
                                            />


                                            <label for="0_answer_9_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">直流电流最高档或空档</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer9"
                                                   id="0_answer_9_option_4"
                                            />


                                            <label for="0_answer_9_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">直流电压最高档或空档</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_9">
                                <div class="test_content_nr_tt">
                                    <i>10</i><span>(1分)</span><font>灭火器的检查、使用方法,下列不属于灭火器的日常检查主要有（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer10"
                                                   id="0_answer_10_option_1"
                                            />


                                            <label for="0_answer_10_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">灭火器应在有效试验周期内</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer10"
                                                   id="0_answer_10_option_2"
                                            />


                                            <label for="0_answer_10_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">灭火器压力值应在正常范围内</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer10"
                                                   id="0_answer_10_option_3"
                                            />


                                            <label for="0_answer_10_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">灭火器的型号</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_10">
                                <div class="test_content_nr_tt">
                                    <i>11</i><span>(1分)</span><font>灭火器的检查、使用方法,灭火器的压力指示针指在（ ）范围内时，表示压力值不在正常范围内</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer11"
                                                   id="0_answer_11_option_1"
                                            />


                                            <label for="0_answer_11_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">黄色</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer11"
                                                   id="0_answer_11_option_2"
                                            />


                                            <label for="0_answer_11_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">绿色</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer11"
                                                   id="0_answer_11_option_3"
                                            />


                                            <label for="0_answer_11_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">红色</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_11">
                                <div class="test_content_nr_tt">
                                    <i>12</i><span>(1分)</span><font>现场触电急救摸拟实操,触电急救的三项基本措施错误的是（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer12"
                                                   id="0_answer_12_option_1"
                                            />


                                            <label for="0_answer_12_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">通畅气道</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer12"
                                                   id="0_answer_12_option_2"
                                            />


                                            <label for="0_answer_12_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">口对口（鼻）人工呼吸</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer12"
                                                   id="0_answer_12_option_3"
                                            />


                                            <label for="0_answer_12_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">胸外心脏挤压</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer12"
                                                   id="0_answer_12_option_4"
                                            />


                                            <label for="0_answer_12_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">腹部猛压法</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_12">
                                <div class="test_content_nr_tt">
                                    <i>13</i><span>(1分)</span><font>现场触电急救摸拟实操,若触电者神志清醒，只是感到心慌、四肢发麻、全身无力或者曾经虽然一度昏迷，但未失去知觉，应做何处理（
                                    ）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer13"
                                                   id="0_answer_13_option_1"
                                            />


                                            <label for="0_answer_13_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">就地平躺，严格观察，期间不得站立或走动</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer13"
                                                   id="0_answer_13_option_2"
                                            />


                                            <label for="0_answer_13_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">应使其舒适平卧，保持空气流通，同时请医生或送医院诊冶</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer13"
                                                   id="0_answer_13_option_3"
                                            />


                                            <label for="0_answer_13_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">采用胸外心脏挤压法进行抢救</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer13"
                                                   id="0_answer_13_option_4"
                                            />


                                            <label for="0_answer_13_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">采用口对口人工呼吸法抢救</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_13">
                                <div class="test_content_nr_tt">
                                    <i>14</i><span>(1分)</span><font>现场触电急救摸拟实操,下列触电急救的基本原则描述错误的是（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer14"
                                                   id="0_answer_14_option_1"
                                            />


                                            <label for="0_answer_14_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">迅速抱走触电者，使触电者脱离电源</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer14"
                                                   id="0_answer_14_option_2"
                                            />


                                            <label for="0_answer_14_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">救护者熟悉救护方法，按照规定动作进行抢救</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer14"
                                                   id="0_answer_14_option_3"
                                            />


                                            <label for="0_answer_14_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">在现场或附近就地进行抢救，并坚持不懈进行</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer14"
                                                   id="0_answer_14_option_4"
                                            />


                                            <label for="0_answer_14_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">采用正确的方式进行抢救</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_14">
                                <div class="test_content_nr_tt">
                                    <i>15</i><span>(1分)</span><font>检查、使用安全带,安全带的金属配件（ ）采用焊接成型</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer15"
                                                   id="0_answer_15_option_1"
                                            />


                                            <label for="0_answer_15_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">全部都可以</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer15"
                                                   id="0_answer_15_option_2"
                                            />


                                            <label for="0_answer_15_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">严禁</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer15"
                                                   id="0_answer_15_option_3"
                                            />


                                            <label for="0_answer_15_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">有的可以，有的不可以</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_15">
                                <div class="test_content_nr_tt">
                                    <i>16</i><span>(1分)</span><font>检查、使用安全带,高处作业时，安全带应（ ）使用</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer16"
                                                   id="0_answer_16_option_1"
                                            />


                                            <label for="0_answer_16_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">低处栓挂</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer16"
                                                   id="0_answer_16_option_2"
                                            />


                                            <label for="0_answer_16_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">高处栓挂</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer16"
                                                   id="0_answer_16_option_3"
                                            />


                                            <label for="0_answer_16_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">高挂低用</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer16"
                                                   id="0_answer_16_option_4"
                                            />


                                            <label for="0_answer_16_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">低挂高用</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_16">
                                <div class="test_content_nr_tt">
                                    <i>17</i><span>(1分)</span><font>检查、使用安全带,安全带（ ）及使用前进行外观检查</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer17"
                                                   id="0_answer_17_option_1"
                                            />


                                            <label for="0_answer_17_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">每周</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer17"
                                                   id="0_answer_17_option_2"
                                            />


                                            <label for="0_answer_17_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">每半个月</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer17"
                                                   id="0_answer_17_option_3"
                                            />


                                            <label for="0_answer_17_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">每月</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer17"
                                                   id="0_answer_17_option_4"
                                            />


                                            <label for="0_answer_17_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">每季度</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_17">
                                <div class="test_content_nr_tt">
                                    <i>18</i><span>(1分)</span><font>检查、使用安全带,安全带的实验周期是（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer18"
                                                   id="0_answer_18_option_1"
                                            />


                                            <label for="0_answer_18_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">3个月</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer18"
                                                   id="0_answer_18_option_2"
                                            />


                                            <label for="0_answer_18_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">6个月</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer18"
                                                   id="0_answer_18_option_3"
                                            />


                                            <label for="0_answer_18_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">1年</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer18"
                                                   id="0_answer_18_option_4"
                                            />


                                            <label for="0_answer_18_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">2年</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_18">
                                <div class="test_content_nr_tt">
                                    <i>19</i><span>(1分)</span><font>检查、使用安全带,安全带日常维护错误的是（ ）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer19"
                                                   id="0_answer_19_option_1"
                                            />


                                            <label for="0_answer_19_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">每次使用前及每月进行一次外观检查</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer19"
                                                   id="0_answer_19_option_2"
                                            />


                                            <label for="0_answer_19_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">每次使用前及每季度进行一次外观检查</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer19"
                                                   id="0_answer_19_option_3"
                                            />


                                            <label for="0_answer_19_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">
                                                    安全带绳保护套要保持完好，以防绳被磨损。若发现保护套损坏或脱落，必须换上新套后再使用</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer19"
                                                   id="0_answer_19_option_4"
                                            />


                                            <label for="0_answer_19_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">
                                                    安全带应放置在干燥通风的工器具柜内，远离阳光、高温、化学品及潮湿处</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_0_19">
                                <div class="test_content_nr_tt">
                                    <i>20</i><span>(1分)</span><font>在缺陷单中填写缺陷描述操作正确的是（ ）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer20"
                                                   id="0_answer_20_option_1"
                                            />


                                            <label for="0_answer_20_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">在word中填写缺陷单描述，再上传至系统中</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer20"
                                                   id="0_answer_20_option_2"
                                            />


                                            <label for="0_answer_20_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">在“缺陷现象”输入框中随意填写缺陷单描述</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer20"
                                                   id="0_answer_20_option_3"
                                            />


                                            <label for="0_answer_20_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">根据相关资料，在“缺陷现象”输入框中正确填写缺陷单描述</p>
                                            </label>
                                        </li>

                                        <li class="option">

                                            <input type="radio" class="radioOrCheck" name="answer20"
                                                   id="0_answer_20_option_4"
                                            />


                                            <label for="0_answer_20_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">在已有缺陷单中复制缺陷描述</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>


                        </ul>
                    </div>
                    <!--多选-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>多选题</h2>
                            <p>
                                <span>共</span><i class="content_lit">10</i><span>题，</span><span>合计</span><i
                                    class="content_fs">20</i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>

                            <li id="qu_1_0">
                                <div class="test_content_nr_tt">
                                    <i>1</i><span>(2分)</span><font>以下属于南方电网员工职业操守中明文规定的有()</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer1"
                                                   id="1_answer_1_option_1"
                                            />

                                            <label for="1_answer_1_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">热爱祖国、热爱南网、热爱岗位</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer1"
                                                   id="1_answer_1_option_2"
                                            />

                                            <label for="1_answer_1_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">遵纪守法、忠于职守、令行禁止</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer1"
                                                   id="1_answer_1_option_3"
                                            />

                                            <label for="1_answer_1_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">客户至上、诚实守信、优质服务</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer1"
                                                   id="1_answer_1_option_4"
                                            />

                                            <label for="1_answer_1_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">公平竞争、互相监督、服从监管</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_1">
                                <div class="test_content_nr_tt">
                                    <i>2</i><span>(2分)</span><font>以下属于南方电网员工职业禁区的有()</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer2"
                                                   id="1_answer_2_option_1"
                                            />

                                            <label for="1_answer_2_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">严禁违反人文道德</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer2"
                                                   id="1_answer_2_option_2"
                                            />

                                            <label for="1_answer_2_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">严禁违反安全规定</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer2"
                                                   id="1_answer_2_option_3"
                                            />

                                            <label for="1_answer_2_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">严禁违背行风规定</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer2"
                                                   id="1_answer_2_option_4"
                                            />

                                            <label for="1_answer_2_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">严禁违反财经纪律</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_2">
                                <div class="test_content_nr_tt">
                                    <i>3</i><span>(2分)</span><font>对 “热爱祖国、热爱南网、热爱岗位”理解正确的是()</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer3"
                                                   id="1_answer_3_option_1"
                                            />

                                            <label for="1_answer_3_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">坚持南网的利益高于一切</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer3"
                                                   id="1_answer_3_option_2"
                                            />

                                            <label for="1_answer_3_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">
                                                    忠诚南网事业，维护南网利益，实践南网文化，维护南网形象，与公司同呼吸、共命运</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer3"
                                                   id="1_answer_3_option_3"
                                            />

                                            <label for="1_answer_3_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">人往高处走，水往低处流，专注于爬上更高的岗位</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer3"
                                                   id="1_answer_3_option_4"
                                            />

                                            <label for="1_answer_3_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">个人利益第一，南网利益第二</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_3">
                                <div class="test_content_nr_tt">
                                    <i>4</i><span>(2分)</span><font>优质服务工作的主线是（）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer4"
                                                   id="1_answer_4_option_1"
                                            />

                                            <label for="1_answer_4_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">以客户为中心，提高供电可靠率、减少客户停电时间</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer4"
                                                   id="1_answer_4_option_2"
                                            />

                                            <label for="1_answer_4_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">以客户为中心，为客户节省更多的花费</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer4"
                                                   id="1_answer_4_option_3"
                                            />

                                            <label for="1_answer_4_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">以公司利益为中心，从客户手中赚取更多的金钱</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer4"
                                                   id="1_answer_4_option_4"
                                            />

                                            <label for="1_answer_4_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">以公司利益为中心，提高供电可靠率、减少客户投诉率</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_4">
                                <div class="test_content_nr_tt">
                                    <i>5</i><span>(2分)</span><font>职业操守中明确注明需要增强的意识有哪些（）
                                    ①道德意识 ②忧患意识 ③环保意识 ④自律意识 ⑤节约意识</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer5"
                                                   id="1_answer_5_option_1"
                                            />

                                            <label for="1_answer_5_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">①②③④⑤</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer5"
                                                   id="1_answer_5_option_2"
                                            />

                                            <label for="1_answer_5_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">①②③</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer5"
                                                   id="1_answer_5_option_3"
                                            />

                                            <label for="1_answer_5_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">②③④</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer5"
                                                   id="1_answer_5_option_4"
                                            />

                                            <label for="1_answer_5_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">②③⑤</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_5">
                                <div class="test_content_nr_tt">
                                    <i>6</i><span>(2分)</span><font>以下不属于严禁违反的行风规定的是（）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer6"
                                                   id="1_answer_6_option_1"
                                            />

                                            <label for="1_answer_6_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">严禁乱加价、乱收费、乱摊派</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer6"
                                                   id="1_answer_6_option_2"
                                            />

                                            <label for="1_answer_6_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">严禁人情电、关系电、权力电</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer6"
                                                   id="1_answer_6_option_3"
                                            />

                                            <label for="1_answer_6_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">严禁损害公司形象</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer6"
                                                   id="1_answer_6_option_4"
                                            />

                                            <label for="1_answer_6_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">严禁推诿、搪塞客户咨询、查询、投诉、举报等服务诉求。</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_6">
                                <div class="test_content_nr_tt">
                                    <i>7</i><span>(2分)</span><font>以下哪项行为需要经过授权与批准（）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer7"
                                                   id="1_answer_7_option_1"
                                            />

                                            <label for="1_answer_7_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">下班</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer7"
                                                   id="1_answer_7_option_2"
                                            />

                                            <label for="1_answer_7_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">学习提高岗位专业技能</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer7"
                                                   id="1_answer_7_option_3"
                                            />

                                            <label for="1_answer_7_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">发生紧急事件需要员工立刻采取措施时</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer7"
                                                   id="1_answer_7_option_4"
                                            />

                                            <label for="1_answer_7_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">以公司名义进行考察、谈判、签约、提供担保和证明时</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_7">
                                <div class="test_content_nr_tt">
                                    <i>8</i><span>(2分)</span><font>以下不属于“节约环保、居安思危、艰苦创业”内容的是（）</font><b
                                        class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer8"
                                                   id="1_answer_8_option_1"
                                            />

                                            <label for="1_answer_8_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">务必继续保持谦虚、谨慎、不骄、不躁的作风</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer8"
                                                   id="1_answer_8_option_2"
                                            />

                                            <label for="1_answer_8_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">务必继续保持艰苦奋斗的作风</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer8"
                                                   id="1_answer_8_option_3"
                                            />

                                            <label for="1_answer_8_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">清醒地看到发展过程中面临的严峻挑战</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer8"
                                                   id="1_answer_8_option_4"
                                            />

                                            <label for="1_answer_8_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">不做出任何有损公司形象的事情</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_8">
                                <div class="test_content_nr_tt">
                                    <i>9</i><span>(2分)</span><font>跌落式熔断器安装时螺母（ ）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer9"
                                                   id="1_answer_9_option_1"
                                            />

                                            <label for="1_answer_9_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">安装时螺母朝上</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer9"
                                                   id="1_answer_9_option_2"
                                            />

                                            <label for="1_answer_9_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">安装时螺母朝下</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer9"
                                                   id="1_answer_9_option_3"
                                            />

                                            <label for="1_answer_9_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">无要求</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>

                            <li id="qu_1_9">
                                <div class="test_content_nr_tt">
                                    <i>10</i><span>(2分)</span><font>新装的跌落式熔断器绝缘电阻应大于（ ）</font><b class="icon iconfont">&#xe881;</b>
                                </div>

                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer10"
                                                   id="1_answer_10_option_1"
                                            />

                                            <label for="1_answer_10_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">300兆欧</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer10"
                                                   id="1_answer_10_option_2"
                                            />

                                            <label for="1_answer_10_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">400兆欧</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer10"
                                                   id="1_answer_10_option_3"
                                            />

                                            <label for="1_answer_10_option_3">
                                                C.
                                                <p class="ue" style="display: inline;">500兆欧</p>
                                            </label>
                                        </li>

                                        <li class="option">


                                            <input type="checkbox" class="radioOrCheck" name="answer10"
                                                   id="1_answer_10_option_4"
                                            />

                                            <label for="1_answer_10_option_4">
                                                D.
                                                <p class="ue" style="display: inline;">600兆欧</p>
                                            </label>
                                        </li>

                                    </ul>
                                </div>
                            </li>


                        </ul>
                    </div>
                    <!--判断-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>判断题</h2>
                            <p>
                                <span>共</span><i class="content_lit">10</i><span>题，</span><span>合计</span><i
                                    class="content_fs">10</i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>

                            <li id="qu_2_0">
                                <div class="test_content_nr_tt">
                                    <i>1</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_1_option_1"/>
                                            <label for="2_answer_1_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_1_option_2"/>
                                            <label for="2_answer_1_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_1">
                                <div class="test_content_nr_tt">
                                    <i>2</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_2_option_1"/>
                                            <label for="2_answer_2_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_2_option_2"/>
                                            <label for="2_answer_2_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_2">
                                <div class="test_content_nr_tt">
                                    <i>3</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_3_option_1"/>
                                            <label for="2_answer_3_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_3_option_2"/>
                                            <label for="2_answer_3_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_3">
                                <div class="test_content_nr_tt">
                                    <i>4</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_4_option_1"/>
                                            <label for="2_answer_4_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_4_option_2"/>
                                            <label for="2_answer_4_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_4">
                                <div class="test_content_nr_tt">
                                    <i>5</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_5_option_1"/>
                                            <label for="2_answer_5_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_5_option_2"/>
                                            <label for="2_answer_5_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_5">
                                <div class="test_content_nr_tt">
                                    <i>6</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_6_option_1"/>
                                            <label for="2_answer_6_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_6_option_2"/>
                                            <label for="2_answer_6_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_6">
                                <div class="test_content_nr_tt">
                                    <i>7</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_7_option_1"/>
                                            <label for="2_answer_7_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_7_option_2"/>
                                            <label for="2_answer_7_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_7">
                                <div class="test_content_nr_tt">
                                    <i>8</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_8_option_1"/>
                                            <label for="2_answer_8_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_8_option_2"/>
                                            <label for="2_answer_8_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_8">
                                <div class="test_content_nr_tt">
                                    <i>9</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_9_option_1"/>
                                            <label for="2_answer_9_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_9_option_2"/>
                                            <label for="2_answer_9_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>

                            <li id="qu_2_9">
                                <div class="test_content_nr_tt">
                                    <i>10</i><span>(1分)</span>在生产管理信息系统中，下列操作步骤能正确将工单推进流程的是（ ）<b class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <ul>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_10_option_1"/>
                                            <label for="2_answer_10_option_1">
                                                A.
                                                <p class="ue" style="display: inline;">true</p>
                                            </label>
                                        </li>

                                        <li class="option">
                                            <input type="radio" class="radioOrCheck" name="answer1"
                                                   id="2_answer_10_option_2"/>
                                            <label for="2_answer_10_option_2">
                                                B.
                                                <p class="ue" style="display: inline;">false</p>
                                            </label>
                                        </li>


                                    </ul>
                                </div>
                            </li>


                        </ul>
                    </div>
                    <!--填空-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>填空题</h2>
                            <p>
                                <span>共</span><i class="content_lit">5</i><span>题，</span><span>合计</span><i
                                    class="content_fs">15</i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>

                            <li id="qu_3_0">
                                <div class="test_content_nr_tt">
                                    <i>1</i><span>(3分)</span>在生产管理信息系统中，( )能正确将工单推进流程。<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" type="text" name="judge_answer_1" id="fill_answer_1">
                                </div>
                            </li>

                            <li id="qu_3_1">
                                <div class="test_content_nr_tt">
                                    <i>2</i><span>(3分)</span>在生产管理信息系统中，( )能正确将工单推进流程。<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" type="text" name="judge_answer_2" id="fill_answer_2">
                                </div>
                            </li>

                            <li id="qu_3_2">
                                <div class="test_content_nr_tt">
                                    <i>3</i><span>(3分)</span>在生产管理信息系统中，( )能正确将工单推进流程。<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" type="text" name="judge_answer_3" id="fill_answer_3">
                                </div>
                            </li>

                            <li id="qu_3_3">
                                <div class="test_content_nr_tt">
                                    <i>4</i><span>(3分)</span>在生产管理信息系统中，( )能正确将工单推进流程。<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" type="text" name="judge_answer_4" id="fill_answer_4">
                                </div>
                            </li>

                            <li id="qu_3_4">
                                <div class="test_content_nr_tt">
                                    <i>5</i><span>(3分)</span>在生产管理信息系统中，( )能正确将工单推进流程。<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <input class="fill_text" type="text" name="judge_answer_5" id="fill_answer_5">
                                </div>
                            </li>

                        </ul>
                    </div>
                    <!--简答-->
                    <div class="test_content">
                        <div class="test_content_title">
                            <h2>简答题</h2>
                            <p>
                                <span>共</span><i class="content_lit">7</i><span>题，</span><span>合计</span><i
                                    class="content_fs">35</i><span>分</span>
                            </p>
                        </div>
                    </div>
                    <div class="test_content_nr">
                        <ul>

                            <li id="qu_4_0">
                                <div class="test_content_nr_tt">
                                    <i>1</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_1"
                                              id="short_answer_1"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_1">
                                <div class="test_content_nr_tt">
                                    <i>2</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_2"
                                              id="short_answer_2"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_2">
                                <div class="test_content_nr_tt">
                                    <i>3</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_3"
                                              id="short_answer_3"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_3">
                                <div class="test_content_nr_tt">
                                    <i>4</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_4"
                                              id="short_answer_4"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_4">
                                <div class="test_content_nr_tt">
                                    <i>5</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_5"
                                              id="short_answer_5"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_5">
                                <div class="test_content_nr_tt">
                                    <i>6</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_6"
                                              id="short_answer_6"></textarea>
                                </div>
                            </li>

                            <li id="qu_4_6">
                                <div class="test_content_nr_tt">
                                    <i>7</i><span>(5分)</span>在生产管理信息系统中，怎样正确将工单推进流程？<b
                                        class="icon iconfont">&#xe881;</b>
                                </div>
                                <div class="test_content_nr_main">
                                    <textarea class="shortfill_text" wrap="soft" cols="80" name="short_answer_7"
                                              id="short_answer_7"></textarea>
                                </div>
                            </li>


                        </ul>
                    </div>

                </form>
            </div>
        </div>

        <div class="nr_right">
            <div class="nr_rt_main">
                <div class="rt_nr1">
                    <div class="rt_nr1_title">
                        <h1>
                            <i class="icon iconfont">&#xe692;</i>答题卡
                        </h1>
                        <p class="test_time">
                            <i class="icon iconfont">&#xe6fb;</i><b class="alt-1">01:40</b>
                        </p>
                    </div>
                    <!--单选-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>单选题</h2>
                            <p>
                                <span>共</span><i class="content_lit">20</i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>

                                <li><a href="#qu_0_0">1</a></li>

                                <li><a href="#qu_0_1">2</a></li>

                                <li><a href="#qu_0_2">3</a></li>

                                <li><a href="#qu_0_3">4</a></li>

                                <li><a href="#qu_0_4">5</a></li>

                                <li><a href="#qu_0_5">6</a></li>

                                <li><a href="#qu_0_6">7</a></li>

                                <li><a href="#qu_0_7">8</a></li>

                                <li><a href="#qu_0_8">9</a></li>

                                <li><a href="#qu_0_9">10</a></li>

                                <li><a href="#qu_0_10">11</a></li>

                                <li><a href="#qu_0_11">12</a></li>

                                <li><a href="#qu_0_12">13</a></li>

                                <li><a href="#qu_0_13">14</a></li>

                                <li><a href="#qu_0_14">15</a></li>

                                <li><a href="#qu_0_15">16</a></li>

                                <li><a href="#qu_0_16">17</a></li>

                                <li><a href="#qu_0_17">18</a></li>

                                <li><a href="#qu_0_18">19</a></li>

                                <li><a href="#qu_0_19">20</a></li>


                            </ul>
                        </div>
                    </div>
                    <!--多选-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>多选题</h2>
                            <p>
                                <span>共</span><i class="content_lit">10</i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>

                                <li><a href="#qu_1_0">1</a></li>

                                <li><a href="#qu_1_1">2</a></li>

                                <li><a href="#qu_1_2">3</a></li>

                                <li><a href="#qu_1_3">4</a></li>

                                <li><a href="#qu_1_4">5</a></li>

                                <li><a href="#qu_1_5">6</a></li>

                                <li><a href="#qu_1_6">7</a></li>

                                <li><a href="#qu_1_7">8</a></li>

                                <li><a href="#qu_1_8">9</a></li>

                                <li><a href="#qu_1_9">10</a></li>


                            </ul>
                        </div>
                    </div>
                    <!--判断-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>判断题</h2>
                            <p>
                                <span>共</span><i class="content_lit">10</i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>

                                <li><a href="#qu_2_0">1</a></li>

                                <li><a href="#qu_2_1">2</a></li>

                                <li><a href="#qu_2_2">3</a></li>

                                <li><a href="#qu_2_3">4</a></li>

                                <li><a href="#qu_2_4">5</a></li>

                                <li><a href="#qu_2_5">6</a></li>

                                <li><a href="#qu_2_6">7</a></li>

                                <li><a href="#qu_2_7">8</a></li>

                                <li><a href="#qu_2_8">9</a></li>

                                <li><a href="#qu_2_9">10</a></li>


                            </ul>
                        </div>
                    </div>
                    <!--填空-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>填空题</h2>
                            <p>
                                <span>共</span><i class="content_lit">5</i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>

                                <li><a href="#qu_3_0">1</a></li>

                                <li><a href="#qu_3_1">2</a></li>

                                <li><a href="#qu_3_2">3</a></li>

                                <li><a href="#qu_3_3">4</a></li>

                                <li><a href="#qu_3_4">5</a></li>


                            </ul>
                        </div>
                    </div>
                    <!--简答-->
                    <div class="rt_content">
                        <div class="rt_content_tt">
                            <h2>简答题</h2>
                            <p>
                                <span>共</span><i class="content_lit">7</i><span>题</span>
                            </p>
                        </div>
                        <div class="rt_content_nr answerSheet">
                            <ul>

                                <li><a href="#qu_4_0">1</a></li>

                                <li><a href="#qu_4_1">2</a></li>

                                <li><a href="#qu_4_2">3</a></li>

                                <li><a href="#qu_4_3">4</a></li>

                                <li><a href="#qu_4_4">5</a></li>

                                <li><a href="#qu_4_5">6</a></li>

                                <li><a href="#qu_4_6">7</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!--nr end-->

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/jquery.easy-pie-chart.js"></script>
<!--时间js-->
<script src="../js/time/jquery.countdown.js"></script>
<script>
    window.jQuery(function ($) {
        "use strict";

        $('time').countDown({
            with_separators: false
        });
        $('.alt-1').countDown({
            css_class: 'countdown-alt-1'
        });
        $('.alt-2').countDown({
            css_class: 'countdown-alt-2'
        });

    });


    $(function () {
        $('li.option label').click(function () {
            debugger;
            var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
            var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
            // 设置已答题
            if (!cardLi.hasClass('hasBeenAnswer')) {
                cardLi.addClass('hasBeenAnswer');
            }

        });
    });
</script>

</body>
</html>
