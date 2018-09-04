<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>十三</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../resource/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../resource/js/jq.js"></script>
<link rel="stylesheet" href="../resource/css/style.css" type="text/css">
</head>
<body>
	<div class="header">
		<div class="header_banner">
			<a class="header_a" href="<%=request.getContextPath()%>/index.jsp">
				<div class="header_link">
					<div class="header_link_index">HELLO</div>
				</div>
			</a> <a class="header_a"
				href="<%=request.getContextPath()%>/nav/index.do">
				<div class="header_link">
					<div class="header_link_index">BLOG</div>
				</div>
			</a> <a class="header_a"
				href="<%=request.getContextPath()%>/nav/photo.do">
				<div class="header_link">
					<div class="header_link_index">PHOTO</div>
				</div>
			</a>


			<!-- blog/other.do -->
			<a class="header_a" href="#">
				<div class="header_link">
					<div class="header_link_index">OTHER</div>
				</div>
			</a>


			<!-- blog/about.do -->
			<a class="header_a" href="#">
				<div class="header_link">
					<div class="header_link_index">ABOUT</div>
				</div>
			</a>
		</div>
	</div>
</body>
</html>