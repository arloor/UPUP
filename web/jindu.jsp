<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/19
  Time: 20:22
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
    <div class="content-body container-fluid" >
        <div class="row">
            <!--这里就放进度相关内容-->
            <div class="col-xs-12 col-md-12 col-md-offset-0" id="content">
                <%--完成进度--%>
                <div>
                    <h1 class="top_title">目标完成进度</h1>
                    <h1 class="top_title">（1500/142050）</h1>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 40%;">
                        <span class="sr-only">40% 完成</span>
                    </div>
                    <div class="progress-bar progress-bar-info" role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 60%;">
                        <span class="sr-only">60% 完成（信息）</span>
                    </div>
                </div>
                <%--完成进度结束--%>
            </div>

            <%--单个进度详情--%>
            <br>

            <div class="row  mbinfo" id="1" onclick=addActionPanel(this)>
                <div class="col-xs-3">
                    <h4 class="date">2017.8.25</h4>
                    <h4 class="rmb">￥800</h4>
                </div>
                <div class="col-xs-9" style="padding-right: 0px">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    </blockquote>
                </div>
                <div class="tohidden col-xs-12" style="display: none">
                    <div class="btn btn-success" onclick=clickWancheng()>完成目标</div>
                    <div class="btn btn-info"  onclick=clickXiuGai(this)><a href="mbinfo.jsp?id=4">修改目标金额</a></div>
                </div>
            </div>
            <br>
            <div class="row  mbinfo" id="2" onclick=addActionPanel(this)>
                <div class="col-xs-3">
                    <h4 class="date">2017.8.25</h4>
                    <h4 class="rmb">￥800</h4>
                </div>
                <div class="col-xs-9" style="padding-right: 0px">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    </blockquote>
                </div>
                <div class="tohidden col-xs-12" style="display: none">
                    <div class="btn btn-success" onclick=clickWancheng()>完成目标</div>
                    <div class="btn btn-info"  onclick=clickXiuGai(this)><a href="mbinfo.jsp?id=4">修改目标金额</a></div>
                </div>
            </div>
            <br>
            <div class="row  mbinfo" id="3" onclick=addActionPanel(this)>
                <div class="col-xs-3">
                    <h4 class="date">2017.8.25</h4>
                    <h4 class="rmb">￥800</h4>
                </div>
                <div class="col-xs-9" style="padding-right: 0px">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    </blockquote>
                </div>
                <div class="tohidden col-xs-12" style="display: none">
                    <div class="btn btn-success" onclick=clickWancheng()>完成目标</div>
                    <div class="btn btn-info"  onclick=clickXiuGai(this)><a href="mbinfo.jsp?id=4">修改目标金额</a></div>
                </div>
            </div>
            <br>


        </div>
    </div>

</body>
<script>
    function clickWancheng() {
        if(confirm("完成这个目标了吗")){
            //todo:在数据库中改变状态
            self.location="jindu.jsp?tiao=en";
        }
    }

    function clickXiuGai(ele) {
        return false;

    }

    function addActionPanel(ele){
        //ele.get();
        var eles=ele.getElementsByClassName("tohidden");
        var hidden=eles[0];
        var state=hidden.style.display;
        if(state=="none")
            hidden.style.display="block";
        else
            hidden.style.display="none";
    }
</script>
</html>
