<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>查看-- -2015</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/ckeditor/ckeditor.js"></script>
 

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
    <script type="text/javascript">
    $(function () {       
		$('#backid').click(function(){
				window.location.href="index.jsp";
		 });
    });
    </script>
</head>
<body>
<form action="index.html" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">药品编号</td>
        <td>${r.drugNum }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">图片</td>
        <td> <img alt="error" src="${pageContext.request.contextPath}/upload/${DrugUrl}"> </td> 
    </tr>
    <tr>
        <td width="10%" class="tableleft">进价</td>
        <td>${r.purchasPrice }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">售价</td>
        <td>${r.salePrice }元</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品名称</td>
        <td>${r.drugName }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品类型</td>
        <td>${r.drugType }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">简单描述</td>
        <td>${r.simpleDetail }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产日期</td>
        <td>${r.prodecedDate }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">保质期</td>
        <td>${r.qualityDate }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">过期日期</td>
        <td>${r.expirationDate }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">详细描述</td>
        <td>${r.detail }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产厂商</td>
        <td>${r.manufacture }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">服用说明</td>
        <td>${r.useInfor }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">进货量</td>
        <td>${r.totalStock }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">剩余量</td>
        <td>${r.surplus }</td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td>${r.noted }</td>
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  