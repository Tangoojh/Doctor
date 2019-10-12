<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>入院办理-- -2015</title>
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
		$('#newNav').click(function(){
				window.location.href="add.html";
		 });
    });
	
    	function checkall(){
			var alls=document.getElementsByName("check");
			var ch=document.getElementById("checkall");
			if(ch.checked){
				for(var i=0;i<alls.length;i++){
					alls[i].checked=true;	
				}	
			}else{
				for(var i=0;i<alls.length;i++){
					alls[i].checked=false;	
				}	
			}
		}
		function delAll(){
			var alls=document.getElementsByName("check");
			var ids=new Array();
			for(var i=0;i<alls.length;i++){
				if(alls[i].checked){
					ids.push(alls[i].value);
				}		
			}
			if(ids.length>0){
				if(confirm("确认操作?")){
					alert("成功!");
				}
			}else{
				alert("请选中要操作的项");
			}
		}
    </script>
</head>
<body>

	<form action="<c:url value="/hospital/index"/>" method="post" class="definewidth m20">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">病例号：</td>
				<td><input type="text" name="medicalRecord" value="" /></td>

				<td width="10%" class="tableleft">主治医生：</td>
				<td><input type="text" name="name" value="" /></td>

				<td width="10%" class="tableleft">科室：</td>
				<td><input type="text" name="seccoName" value="" /></td>
			</tr>
			<tr>

				<td width="10%" class="tableleft">住院时间：</td>

				<td colspan="5"><input type="date" name="time1" value="" />&nbsp;至&nbsp;<input
					type="date" name="time2" value="" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="submit" class="btn btn-primary" type="button">查询</button>
					<button type="submit" class="btn btn-primary" type="button">清空</button>

				</td>
			</tr>
		</table>
	</form>

	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th><input type="checkbox" id="checkall" onChange="checkall();"></th>
				<th>病历号</th>
				<th>姓名</th>
				<th>床位号</th>
				<th>联系电话</th>
				<th>押金</th>
				<th>主治医生</th>
				<th>入院时间</th>
				<th>科室</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<c:forEach items="${hr}" var="a">
		<tr>
			<td style="vertical-align: middle;"><input type="checkbox"
				name="check" value="1"></td>
			<td style="vertical-align: middle;">${a.registrationinfor.medicalRecord}</td>
			<td style="vertical-align: middle;">${a.registrationinfor.name}</td>
			<td style="vertical-align: middle;">${a.bedId}</td>
			<td style="vertical-align: middle;">${a.registrationinfor.phone}</td>
			<td style="vertical-align: middle;">${a.payTheDeposit}</td>
			<td style="vertical-align: middle;">${a.doctor.name}</td>
			<td style="vertical-align: middle;">
			 <fmt:formatDate value="${a.registrationinfor.time}"/> 
			</td>
			<td style="vertical-align: middle;">${a.section.seccoName}</td>
			<td style="vertical-align: middle;">${a.registrationinfor.status}</td>
			<td style="vertical-align: middle;">
			<a href="<c:url value="/hospital/look?medicalRecord=${a.registrationinfor.medicalRecord}"/>">详情</a>&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/hospital/check?medicalRecord=${a.registrationinfor.medicalRecord}"/>">更改</a>&nbsp;&nbsp;&nbsp;
			<a href="javascript:alert('退院成功！');">退院</a>&nbsp;&nbsp;&nbsp;
			 <a href="<c:url value="/hospital/delete?medicalRecord=${a.registrationinfor.medicalRecord}"/>">出院</a>
			</td>
		</tr>
		</c:forEach>
	</table>

	<table class="table table-bordered table-hover definewidth m10">
		<tr>
			<th colspan="5">
				<div class="inline pull-right page">
					<a href="<c:url value="/hospital/index?pageNo=${page.firstPage }"/>">第一页</a>
					<a href="<c:url value="/hospital/index?pageNo=${page.prePage}"/>">上一页</a>
					<c:forEach var="w" begin="1" end="${page.pages}" step="1">
						<span class='current'> <a
							href="<c:url value="/hospital/index?pageNo=${w}"/>">${w}</a>
						</span>
					</c:forEach>
					<a href="<c:url value="/hospital/index?pageNo=${page.nextPage}"/>">下一页</a>

					<a href="<c:url value="/hospital/index?pageNo=${page.lastPage}"/>">最后一页</a>
					&nbsp;&nbsp;&nbsp;共<span class='current'>${page.total}</span>条记录<span
						class='current'>${page.pageNum}/${page.pages}</span>页
				</div>
				<div>
					<button type="button" class="btn btn-success" id="newNav">
					<a href="<c:url value="/hospital/add.jsp"/>">录入住院信息</a>
					</button>&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success" id="delPro" onClick="delAll();">
		                       <a href="javascript:alert('出院成功！');">出院</a>
					</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success" id="delPro" onClick="delAll();">退院</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success" id="delPro">导出Excel</button>
					<button type="button" class="btn btn-success" id="delPro">打印</button>

				</div>

			</th>
		</tr>
	</table>


</body>
</html>