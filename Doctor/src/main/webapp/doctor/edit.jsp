<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>修改医生---2015</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/jquery.sorted.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/ckform.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Js/ckeditor/ckeditor.js"></script>


<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
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
	<form action="<c:url value="/doctor/update"/>" method="post"
		"definewidthm20">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">姓名</td>
				<td><input type="text" name="name" value="${d.name}" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">证件类型</td>
				<td><input name="certificateType" value="${d.certificateType}"></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">证件号</td>
				<td><input type="text" name="idNum" value="${d.idNum}" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">手机</td>
				<td><input type="text" name="phone" value="${d.phone}" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">座机</td>
				<td><input type="text" name="specialPlane"
					value="${d.specialPlane}" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">性别</td>
				<td><input type="radio" name="sex" value="${d.sex}" />
			</tr>
			<tr>
				<td width="10%" class="tableleft">年龄</td>
				<td><input type="text" name="age" value="${d.age}" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">出生年月</td>
				<td><input type="text" name="birther" value="${d.birther }" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">电子邮箱</td>
				<td><input type="text" name="email" value="${d.email }" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">所属科室</td>
				<td><input name="sectionId" value="${d.sectionId }"></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">学历</td>
				<td><input name="education" value="${d.education }" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">备注</td>
				<td><textarea name="noted" value="${d.noted }"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<center>
						<button type="submit" class="btn btn-primary" type="button">保存</button>
						&nbsp;&nbsp;
						<button type="button" class="btn btn-success" name="backid"
							id="backid">返回列表</button>
					</center>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
