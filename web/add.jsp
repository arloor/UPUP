<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/8/26
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moontell纪念日</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">

    <!-- Bootstrap -->
    <link href="css/bootstrap.css"  type="text/css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/shijianzhou.css" />
    <link rel="script" href="js/ajax.js">
    <style type="text/css">
        h1.top_title{border-bottom:none;background:none;text-align:center;line-height:32px; font-size:32px}
        h1.top_title span{font-size:12px; color:#666;font-weight:500}
        h4.date{text-align:center}
        h4.rmb{text-align:center}
        body,html{overflow-x:hidden;}
    </style>
</head>
<body>
<div class="content-body col-xs-12 container-fluid" >
<h1 style="text-align: center">增加目标</h1>
<div class="row">
    <form action="jindu.jsp">
        <div class="form-group">
            <label for="money">金额</label>
            <input type="text" class="form-control" id="money">
        </div>
        <div class="form-group">
            <label for="info">详情</label>
            <textarea class="form-control" id="info" rows="4"></textarea>
            <%--<p class="help-block">Example block-level help text here.</p>--%>
        </div>
        <div class="col-xs-4 col-xs-offset-8">
            <button  type="button" class="btn-lg btn-success"><a id="submit" onclick=doAddSubmit()>确认</a></button>
        </div>
    </form>

</div>
</div>
</body>
<script>
    function doAddSubmit() {
        var money=document.getElementById("money").value;
        var info=document.getElementById("info").value;
        if(info==""||info==""){
            alert("输入不能为空哦");
            return;
        }
        if(window.confirm("确认目标无误？\n金额："+money+"\n信息："+info)){
            //todo:ajax增加目标
            self.location="jindu.jsp";
            return true;
        }
    }
</script>
</html>
