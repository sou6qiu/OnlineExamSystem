<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>个人信息</legend>
</fieldset>


<div style="padding: 20px; background-color: #F2F2F2;">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-body">
                    <img src="../images/wuyanzu.jpg" style="width: 90px;height: 120px;"/>
                </div>
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="layui-card">
                <div class="layui-card-body">
                    <p><b>学院：</b><%=session.getAttribute("college")%></p>
                    <p><b>专业：</b><%=session.getAttribute("major")%></p>
                    <p><b>姓名：</b><%=session.getAttribute("realname")%></p>
                    <p><b>工号：</b><%=session.getAttribute("username")%></p>
                </div>
            </div>
        </div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>修改密码</legend>
    <div class="layui-field-box">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                         lay-arrow="none" style="width: 100%; height: 100%;">
                        <form action="change_pass.jsp" method="get">
                            <div class="layui-form-item">
                                <label class="layui-form-label">原密码</label>
                                <div class="layui-input-block">
                                    <input id="old_password" class="layui-input" type="password" placeholder="请输入原始密码"
                                           autocomplete="off" onchange="passwordcheck();">
                                    <div id="oldwrong"><span class="layui-badge-dot"></span>&nbsp;&nbsp;原密码错误</div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">新密码</label>
                                <div class="layui-input-block">
                                    <input id="new_password" name="newpassword" class="layui-input" type="password" placeholder="请输入新密码"
                                           autocomplete="off">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">再次输入</label>
                                <div class="layui-input-block">
                                    <input id="renew_password" name="newpassword" class="layui-input" type="password"
                                           placeholder="请再次输入新密码" autocomplete="off" onchange="passwordcheck();">
                                    <div id="newwrong"><span class="layui-badge-dot"></span>&nbsp;&nbsp;两次输入密码不一致错误</div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn" lay-filter="demo1" lay-submit="" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
<script type="text/javascript">
    function passwordcheck() {
        var old="";
        var newp="";
        var renewp="";
        var oldreal='<%=session.getAttribute("password")%>';
        var oldwrong=document.getElementById("oldwrong");
        oldwrong.style.display="block";
        var newwrong=document.getElementById("newwrong");
        newwrong.style.display="block";
        old=document.getElementById("old_password").value;
        newp=document.getElementById("new_password").value;
        renewp=document.getElementById("renew_password").value;
        if(newp==renewp){newwrong.style.display="none";}
        if(old==oldreal){oldwrong.style.display="none";}
    }

</script>
</body>
</html>
