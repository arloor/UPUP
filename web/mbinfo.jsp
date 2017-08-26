<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/8/25
  Time: 16:57
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
    <h1 style="text-align: center">目标详情</h1>
    <div class="row">
        <form action="jindu.jsp">
            <div class="form-group">
                <label for="money">金额</label>
                <input type="text" class="form-control" id="money" disabled value="sadads">
            </div>
            <div class="form-group">
                <label for="info">详情</label>
                <textarea class="form-control" id="info" rows="4" disabled>sadasd</textarea>
                <%--<p class="help-block">Example block-level help text here.</p>--%>
            </div>
            <div class="col-xs-6 col-xs-offset-6">
                <button  type="button" class="btn btn-default"><a id="delete" onclick=clickDelete()>删除</a></button>
                <button  type="button" class="btn btn-success"><a id="modify" onclick=clickModify()>修改</a></button>
            </div>
        </form>

    </div>
</div>
</body>
<script>
    var old_money=document.getElementById("money").value;
    var old_info=document.getElementById("info").value;
    function clickModify() {
        var money=document.getElementById("money");
        if(money.disabled==true)
            money.disabled=false;
        var info=document.getElementById("info");
        if(info.disabled==true)
            info.disabled=false;
        var xiugai=document.getElementById("modify");
        xiugai.innerHTML="完成";
        xiugai.onclick=submitModify;
        
        var node_dele=document.getElementById("delete");
        node_dele.innerHTML="取消";
        node_dele.onclick=reset;
    }

    function submitModify() {
        var money=document.getElementById("money").value;
        var info=document.getElementById("info").value;
        if(money==""||info==""){
            alert("不能输入为空哦");
            return;
        }
        if(money==old_money&&info==old_info){
            alert("没有修改哦");
            return;
        }
        alert("ajax ajax");

    }
    
    function clickDelete() {
        if(confirm("确认删除吗？")){
            alert("ajax ajax");
        }
    }
    
    function reset() {
        document.getElementById("money").value=old_money;
        document.getElementById("info").value=old_info;


        var money=document.getElementById("money");
        if(money.disabled==false)
            money.disabled=true;
        var info=document.getElementById("info");
        if(info.disabled==false)
            info.disabled=true;
        var xiugai=document.getElementById("modify");
        xiugai.innerHTML="修改";
        xiugai.onclick=clickModify;

        var node_dele=document.getElementById("delete");
        node_dele.innerHTML="删除";
        node_dele.onclick=clickDelete;
    }
</script>

</html>
