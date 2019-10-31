<%@ page import="com.XML.ReadXml" %>
<%@ page import="com.entity.Question" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>题库维护</title>
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
<%
    ReadXml readXml = new ReadXml();
    String url_add = "4question_add_singleSelection.jsp";
    String url_edit = "4question_edit_singleSelection.jsp";
    String url_del = "4question_delete.jsp";
    String file = URLDecoder.decode(request.getParameter("file"), "utf-8");
    switch (file) {
        case "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/单选.xml":
            url_add = "4question_add_singleSelection.jsp";
            url_edit = "4question_edit_singleSelection.jsp";
            break;
        case "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/多选.xml":
            url_add = "4question_add_multipleSelection.jsp";
            url_edit = "4question_edit_multipleSelection.jsp";
            break;
        case "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/判断.xml":
            url_add = "4question_add_trueOrFalse.jsp";
            url_edit = "4question_edit_trueOrFalse.jsp";
            break;
        case "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/填空.xml":
            url_add = "4question_add_fillBlank.jsp";
            url_edit = "4question_edit_fillBlank.jsp";
            break;
        case "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/简答.xml":
            url_add = "4question_add_shortAnswerQuestion.jsp";
            url_edit = "4question_edit_shortAnswerQuestion.jsp";
            break;
        default:
            break;
    }
    String newFile = URLEncoder.encode(file,"utf-8");
    ArrayList<Question> questionArrayList = readXml.getSingleSelection(file);
%>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a href="1question_bank.jsp">题库维护</a>
        <a href="2question_bank_class.jsp">题目类型</a>
        <a><cite>这里要获取课程名</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so layui-form-pane" action="4question_search.jsp">
            <input type="hidden" value="<%=newFile%>" name="newFile">
            <input class="layui-input" placeholder="题目..." name="search">
            <input class="layui-btn" type="submit" lay-filter="search">
        </form>
    </div>
    <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加单条', '<%=url_add%>')"><i class="layui-icon"></i>添加单条</button>
        <span class="x-right" style="line-height:40px">共有数据：<%=questionArrayList.size()%> 条</span>
    </xblock>
    <table class="layui-table layui-form">
        <thead>
        <tr>
            <th width="20">
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
                    <i class="layui-icon">&#xe605;</i></div>
            </th>
            <th width="70">ID</th>
            <th>问题</th>
            <th>难度</th>
            <th width="120">操作</th>
        </thead>
        <%
            if (questionArrayList.size() > 0) {
                for (int i = 0; i < questionArrayList.size(); i++) {
                    Question question = questionArrayList.get(i);
        %>
        <tbody>
        <tr>
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i>
                </div>
            </td>
            <td><%=i + 1%>
            </td>
            <td>
                <%=question.getQuestion()%>
            </td>
            <td><%=question.getDifficult()%>
            </td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs"
                        onclick="x_admin_show('编辑', '<%=url_edit%>'+'?param=<%=i%>')">
                    <i class="layui-icon">&#xe642;</i>编辑
                </button>
                <%String url = url_del + "?param=" + URLEncoder.encode(question.getQuestion(),"utf-8") + "&file=" + URLEncoder.encode(file,"utf-8");%>
                <button class="layui-btn-danger layui-btn layui-btn-xs" onclick="x_admin_show('编辑','<%=url%>')"
                        href="javascript:;"><i class="layui-icon">&#xe640;</i>删除
                </button>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>

<script>
    layui.use(['form'], function () {
        form = layui.form;

    });


    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>
    layui.use('upload', function () {
        var $ = layui.jquery
            , upload = layui.upload;

        //指定允许上传的文件类型
        upload.render({
            elem: '#import'
            , url: '/upload/'
            , accept: 'file' //普通文件
            , done: function (res) {
                console.log(res)
            }
        });

        //设定文件大小限制
        upload.render({
            elem: '#test7'
            , url: '/upload/'
            , size: 60 //限制文件大小，单位 KB
            , done: function (res) {
                console.log(res)
            }
        });

        //同时绑定多个元素，并将属性设定在元素上
        upload.render({
            elem: '.demoMore'
            , before: function () {
                layer.tips('接口地址：' + this.url, this.item, {tips: 1});
            }
            , done: function (res, index, upload) {
                var item = this.item;
                console.log(item); //获取当前触发上传的元素，layui 2.1.0 新增
            }
        })

        //选完文件后不自动上传
        upload.render({
            elem: '#test8'
            , url: '/upload/'
            , auto: false
            //,multiple: true
            , bindAction: '#test9'
            , done: function (res) {
                console.log(res)
            }
        });

        //拖拽上传
        upload.render({
            elem: '#test10'
            , url: '/upload/'
            , done: function (res) {
                console.log(res)
            }
        });

        //多文件列表示例
        var demoListView = $('#demoList')
            , uploadListIns = upload.render({
            elem: '#testList'
            , url: '/upload/'
            , accept: 'file'
            , multiple: true
            , auto: false
            , bindAction: '#testListAction'
            , choose: function (obj) {
                var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
                //读取本地文件
                obj.preview(function (index, file, result) {
                    var tr = $(['<tr id="upload-' + index + '">'
                        , '<td>' + file.name + '</td>'
                        , '<td>' + (file.size / 1014).toFixed(1) + 'kb</td>'
                        , '<td>等待上传</td>'
                        , '<td>'
                        , '<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
                        , '<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
                        , '</td>'
                        , '</tr>'].join(''));

                    //单个重传
                    tr.find('.demo-reload').on('click', function () {
                        obj.upload(index, file);
                    });

                    //删除
                    tr.find('.demo-delete').on('click', function () {
                        delete files[index]; //删除对应的文件
                        tr.remove();
                        uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
                    });

                    demoListView.append(tr);
                });
            }
            , done: function (res, index, upload) {
                if (res.code == 0) { //上传成功
                    var tr = demoListView.find('tr#upload-' + index)
                        , tds = tr.children();
                    tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
                    tds.eq(3).html(''); //清空操作
                    return delete this.files[index]; //删除文件队列已经上传成功的文件
                }
                this.error(index, upload);
            }
            , error: function (index, upload) {
                var tr = demoListView.find('tr#upload-' + index)
                    , tds = tr.children();
                tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
                tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
            }
        });

        //绑定原始文件域
        upload.render({
            elem: '#test20'
            , url: '/upload/'
            , done: function (res) {
                console.log(res)
            }
        });

    });
</script>
</body>
</html>
