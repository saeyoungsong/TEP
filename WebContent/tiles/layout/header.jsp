<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/TEP/static/css/header.css" type="text/css">
</head>
<body>
<br>
<div class="loginBar">
<span style="float:left;padding-left:10px;">
<a href="openmeet.action">모임</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="lendplace.action">장소</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="board.action">게시판</a>
</span>
<span>
	<s:if test="#session.session_m_email == null">	
	<a href="loginForm.action">로그인</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	</s:if>
	<s:elseif test="#session.session_m_email != null">
	<a href="logout.action">로그아웃</a>&nbsp;&nbsp;|&nbsp;&nbsp;	
	</s:elseif>
	<s:if test="#session.session_m_email != null">
	<a href="mypageView.action">마이페이지</a>&nbsp;&nbsp;
	</s:if>
	<s:if test="#session.session_m_email == null">
	<a href="loginForm.action">마이페이지</a>&nbsp;&nbsp;
	</s:if>
</span>
</div>

<form name="search_form" action="search.action" method="post">
	<table class="searchBar" align=center>
		<tr>
			<td class="logo">
				<a href="main.action">
					<img border="0" width="90px" src="/TEP/main/image/tep_logo_red.png" />
				</a>
			</td>
			<td style="padding-right: 10px; padding-left: 20px;">
				<input type="text" name="searchWord" size="50">
			</td>
			<td>
				<input class="search_btn" type="submit" value="검   색">
			</td>
		</tr>
	</table>
</form>

	<hr color=red class="header">
<br>
</body>
</html>