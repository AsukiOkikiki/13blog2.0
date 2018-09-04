<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="top.blogs.po.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>十三</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jq.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/style.css"
	type="text/css">
</head>
<%
	List<Blog> blogList = (ArrayList) request.getAttribute("blogList");
%>
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
	<div class="content">
		<div style="padding-right: 40px" class="inner_content">
			<div class="edit_blog_top">
				<table>
					<tr>
						<th>id</th>
						<th>标题</th>
						<th>二级标题</th>
						<th>类型</th>
						<th>日期</th>
						<th>操作</th>
					</tr>
					<%
						for (int i = 0; i < blogList.size(); i++) {
					%>
					<tr>
						<th><%=blogList.get(i).getId()%></th>
						<th><%=blogList.get(i).getTitle()%></th>
						<th><%=blogList.get(i).getSecondTitle()%></th>
						<th><%=blogList.get(i).getType()%></th>
						<th><%=blogList.get(i).getDate()%></th>
						<th>
							<button style="background: #836FFF">编辑</button> <a
							href="<%=request.getContextPath()%>/back/deleteBlog.do?id=<%=blogList.get(i).getId()%>"><button
									style="background: rgb(233, 104, 107);">删除</button></a>
						</th>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="edit_blog">
				标题：<input id="edit_blog_title" type="text"> <br> 二级标题：<input
					id="edit_blog_secondTitle" type="text"> <br> 博客类型： <br>
				<select id="edit_blog_type">
					<option value="python">python</option>
					<option value="java">java</option>
					<option value="练题">练题</option>
					<option value="生活">生活</option>
					<option value="其他">其他</option>
				</select>
			</div>
			<div name="blogContent" id="write" style="width: 100%;"></div>
			<input type="submit" value="提交" id="edit_blog_subbtm" />
		</div>
	</div>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resource/js/wangEditor.min.js"></script>
	<script>
		var E = window.wangEditor
		var editor = new E('#write')
		editor.customConfig.uploadImgShowBase64 = true
		editor.customConfig.showLinkImg = false
		editor.create();
	</script>
</body>
</html>