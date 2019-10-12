<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>更新-- -2015</title>
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
<form action="${pageContext.request.contextPath}/medicine/update" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">药品编号</td>
        <td><input type="text" name="drugNum" value="${r.drugNum }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">图片</td>
        <td><input type="text" name="drugUrl" value="${r.drugUrl }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">进价</td>
        <td><input type="text" name="purchasPrice" value="${r.purchasPrice }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">售价</td>
        <td><input type="text" name="salePrice" value="${r.salePrice }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品名称</td>
        <td><input type="text" name="drugName" value="${r.drugName }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品类型</td>
        <td><input type="text" name="drugType" value="${r.drugType }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">简单描述</td>
        <td><input type="text" name="simpleDetail" value="${r.simpleDetail }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产日期</td>
        <td><input type="text" name="prodecedDate" value="${r.prodecedDate }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">保质期</td>
        <td><input type="text" name="qualityDate" value="${r.qualityDate }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">过期日期</td>
        <td><input type="text" name="expirationDate" value="${r.expirationDate }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">详细描述</td>
        <td><input type="text" name="detail" value="${r.detail }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产厂商</td>
        <td><input type="text" name="manufacture" value="${r.manufacture }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">服用说明</td>
        <td><input type="text" name="useInfor" value="${r.useInfor }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">进货量</td>
        <td><input type="text" name="totalStock" value="${r.totalStock }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">剩余量</td>
        <td><input type="text" name="surplus" value="${r.surplus }"/></td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td><input type="text" name="noted" value="${r.noted }"/></td>
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  