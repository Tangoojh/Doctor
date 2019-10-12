<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>挂号-- -2015</title>
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
<form action="<c:url value="/registration/edit"/>" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">病历号</td>
        <td><input type="text" name="medicalRecord" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td><input type="text" name="name" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件类型</td>
        <td><select name="certificateType">
             <option value="1"/>身份证
             <option value="2"/>护照
             <option value="3"/>军人
            </select>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件号</td>
        <td><input type="text" name="idNum" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">挂号费</td>
        <td><input type="text" name="registrationFee" />元</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">社保号</td>
        <td><input type="text" name="socialSafeNum" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">联系电话</td>
        <td><input type="text" name="phone" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">是否自费</td>
        <td><select name="selfPaying">   
             <option value="0"/>否
             <option value="1"/>是         
            </select>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">性别</td>
        <td><select name="sex">   
             <option value="1"/>男
             <option value="0"/>女         
            </select>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">年龄</td>
        <td><input type="text" name="age" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">职业</td>
        <td><input type="text" name="career" /></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">初复诊</td>
        <td><select name="earlyAppointment">   
             <option value="初诊"/>
             <option value="复诊"/>           
            </select>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">所挂科室</td>
        <td><select name="sectionId">
        <option value="1"/>血液科
        <option value="2"/>骨科
        <option value="3"/>外科    
        <option value="4"/>急诊科  
        <option value="5"/>妇科
        </select></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">指定医生</td>
        <td><select name="doctorId">
        <option value="1"/>华佗
        <option value="2"/>扁鹊 
        <option value="3"/>李时珍    
        <option value="4"/>张仲景
        <option value="5"/>宋应星
        </select></td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td>
        <textarea name="noted"></textarea>
        </td>
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