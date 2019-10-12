<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>查看-- -2015</title>
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
	<form action="index.html" method="post" class="definewidth m20">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">姓名</td>
				<td>${k.registrationinfor.name}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">证件类型</td>
				<td>${k.certificateType.name}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">证件号</td>
				<td>${k.registrationinfor.idNum}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">挂号费</td>
				<td>${k.registrationinfor.registrationFee}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">社保号</td>
				<td>${k.registrationinfor.socialSafeNum}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">联系电话</td>
				<td>${k.registrationinfor.phone}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">是否自费</td>
				<td>${k.registrationinfor.selfPaying}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">性别</td>
				<td>${k.registrationinfor.sex}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">年龄</td>
				<td>${k.registrationinfor.age}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">职业</td>
				<td>${k.registrationinfor.career}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">初复诊</td>
				<td>${k.registrationinfor.earlyAppointment}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">所挂科室</td>
				<td>${k.section.seccoName}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">指定医生</td>
				<td>${k.doctor.name}</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">备注</td>
				<td>${k.registrationinfor.noted}</td>
			</tr>
			<tr>
				 <td colspan="2">
					<center>
						<button type="button" class="btn btn-success" name="backid"
							id="backid">返回列表</button>
					</center>
				</td> 
			</tr>
		</table>
	</form>
</body>
</html>
