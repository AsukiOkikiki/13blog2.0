$(document).ready(function(){
	    $(".photo_list").height($(".photo_list").width());
	    var oTop1 = $(document).scrollTop();
	    $(window).scroll(function(){
	    var oTop2 = $(document).scrollTop();
	    if(oTop2 >oTop1){
	    $(".header").addClass("header_hide").removeClass("header_show");
	    }else if(oTop1>oTop2) {
	    $(".header").addClass("header_show").removeClass("header_hide");
	    }
	oTop1 = $(document).scrollTop();
	});
	 $(".blog_photo").height($(".blog_photo").width()*2/3);
	 $(".the_photo").width($(".blog_photo").width());
	// $(".the_photo").height($(".blog_photo").height());
	 $(window).resize(function(){
	 $(".blog_photo").height($(".blog_photo").width()*2/3)
	 $(".the_photo").width($(".blog_photo").width());
	// $(".the_photo").height($(".blog_photo").height());
	 })
	
	  //用户注册
    var flag_register=0;
	var flag_username = 0;
	var flag_password = 0;
	var flag_checkPassword = 0;
	var flag_uname = 0;
	var flag_qq = 0;
	var flag_email = 0;
	var flag_invite = 0;
	//username
	$("#username").blur(function(){
		if($("#username").val().indexOf(" ")!=-1){
			$("#username_right").html("*用户名不能包含空格！");
			flag_username=0;
		}else{
			if($("#username").val().length<6){
				$("#username_right").html("*用户名至少6位！");
				flag_username=0;
			}else if($("#username").val().length>20){
				$("#username_right").html("*用户名应小于16位！");
				flag_username=0;
			}else{
				$("#username_right").html("");
				flag_username=1;
			}
		}
		if(flag_username==1){
			$.ajax({
				type : "post",
				url : "/blog2.1/user/checkUsername.do",
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				data : {
					username : $("#username").val()
				},
				dataType : "json",
				success : function(data) {// ajax请求成功后触发的方法
					if (data.success) {
						$("#username_right").html("");
						flag_username=1;
					} else {
						$("#username_right").html("*用户名已存在");
						flag_username=0;
					}
				},
				error : function(data) {
					alert("服务器出错啦，刷新试试");
				}
			});
		}
	});
	//password
	$("#password").blur(function(){
		if($("#password").val().length<6){
			$("#password_right").html("*密码至少6位！");
			flag_password=0;
		}else if($("#password").val().length>20){
			$("#password_right").html("*密码应小于16位！");
			flag_password=0;
		}else{
			$("#password_right").html("");
			flag_password=1;
		}
	});
	//checkPassword
	$("#checkPassword").blur(function(){
		if($("#checkPassword").val()!=$("#password").val()){
			$("#checkPassword_right").html("*两次密码不一样！");
			flag_checkPassword=0;
		}else if($("#password").val().length<6){
			$("#checkPassword_right").html("*密码至少6位！");
			flag_checkPassword=0;
		}else if($("#password").val().length>20){
			$("#checkPassword_right").html("*密码应小于16位！");
			flag_checkPassword=0;
		}else{
			$("#checkPassword_right").html("");
			flag_checkPassword=1;
		}
	});
	//uname
	$("#uname").blur(function(){
		if($("#uname").val().length>12){
			$("#uname_right").html("*昵称过长！");
			flag_uname=0;
		}else if($("#uname").val().length==0){
			$("#uname_right").html("*昵称不能为空！");
			flag_uname=0;
		}else{
			$("#uname_right").html("");
			flag_uname=1;
		}
	});
	//qq
	$("#qq").blur(function(){
		var re =/^[0-9]+.?[0-9]*$/;
		if($("#qq").val().indexOf("0")==0||$("#qq").val().length<5||$("#qq").val().length>11||$("#qq").val().indexOf(" ")!=-1){
			$("#qq_right").html("*QQ格式不正确！");
			flag_qq=0;
		}else if(!re.test($("#qq").val())){
			$("#qq_right").html("*必须是数字！");
			flag_qq=0;
		}else{
			$("#qq_right").html("");
			flag_qq=1;
		}
	});
	//email
	$("#email").blur(function(){
		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if(!myreg.test($("#email").val())){
			$("#email_right").html("*邮箱格式不正确！");
			flag_email=0;
		}else{
			$("#email_right").html("");
			flag_email=1;
		}
	});
	//invite
	$("#invite").blur(function(){
		if($("#invite").val().length<5||$("#invite").val().length>8){
			$("#invite_right").html("*邀请码格式错误！");
			flag_invite=0;
		}else{
			$("#invite_right").html("");
			flag_invite=1;
		}
	});
	$("#register_submit").click(function() {
		if(flag_username==1&&flag_password==1&&flag_checkPassword==1&&flag_uname==1&&flag_qq==1&&flag_email==1&&flag_invite==1){
			flag_register=1;
		}
		if(flag_register==1){
			$.ajax({
				type : "post",
				url : "/blog2.1/user/userRegister.do",
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				data : {
					username : $("#username").val(),
					password : $("#password").val(),
					checkPassword : $("#checkPassword").val(),
					uname : $("#uname").val(),
					qq : $("#qq").val(),
					email : $("#email").val(),
					sex : $("#sex").val(),
					phone : $("#phone").val(),
					invite : $("#invite").val()
				},
				dataType : "json",
				success : function(data) {// ajax请求成功后触发的方法
					if (data.success) {
						alert('注册成功');
						window.location.reload();
					} else {
						alert("服务器出错啦！");
						window.location.reload();
					}
				},
				error : function(data) {
					alert(data);
				}
			});
		}else{
			alert("请填写正确注册信息！")
		}
	});
	 
	
	    // 点击弹出图片
	$(".the_photo").click(function(){
	    $(".modal").fadeIn();
	    $(".modal-content").attr("src",this.src).css({"margin-top":-$(".modal-content").height()/2,"margin-left":-$(".modal-content").width()/2});
	})
	
	//用户登录之前的地址
	$("#user_login").click(function() {
		var s = window.location.href;
		var flag = 0;
		var index = 0;
		for (var i = s.length - 1; i >= 0; i--) {
			if (s.charAt(i) == '\/' && flag == 1) {
				index = i;
				break;
			}
			if (s.charAt(i) == '\/') {
				flag = 1;
			}
		}
		var url = s.substring(index, s.length);
		$("#sava_last_url").val(url);
		$("#login_form").submit();
	});
	
	//用户登录
	$("#user_login_bt").click(function() {
		$("#user_login_form").submit();
	});
	
	 //登出
		$("#user_logout_bt").click(function() {
			var s = window.location.href;
			var flag = 0;
			var index = 0;
			for (var i = s.length - 1; i >= 0; i--) {
				if (s.charAt(i) == '\/' && flag == 1) {
					index = i;
					break;
				}
				if (s.charAt(i) == '\/') {
					flag = 1;
				}
			}
			var url = s.substring(index, s.length);
			$("#logout_last_url").val(url);
			$("#user_logout_form").submit();
		});
		
		
	    //到用户注册页面
    $("#user_register").click(function(){
		$("#register_form").submit();
	});
	    
	$(".close").click(function(){
	    $(".modal").fadeOut();
	    })
	
	$(".modal").click(function(){
	    $(".modal").fadeOut();
	    })
	    $(".photo_list_src").click(function(){
	        $(".modal").fadeIn();
	        $(".modal-content").attr("src",this.src).css({"margin-top":-$(".modal-content").height()/2,"margin-left":-$(".modal-content").width()/2});
	    })
	    $(".close").click(function(){
	        $(".modal").fadeOut();
	    })
	    $(".modal").click(function(){
	        $(".modal").fadeOut();
	    })
	
	$(".text_area").focus(function(){
	    $(".text_area").css("width","100%");
	    }).blur(function(){
	    $(".text_area").css("width","80%");
	    });
	$(".search_img").width($(".search_img").height());
	$(".text_send").click(function(){
		$("#form1").submit();
	});
	
	// 彩色标签
	var tags_a = $("#tags").find("a");
	tags_a.each(function(){
	    var red = parseInt(Math.random()*231+25).toString(16);
	    var blue = parseInt(Math.random()*231+25).toString(16);
	    var green= parseInt(Math.random()*231+25).toString(16);
	    var color = '#'+red+blue+green;
	    var x = 9;
	    var y = 0;
	    var rand = parseInt(Math.random() * (x - y + 1) + y);
	    $(this).addClass("size"+rand).css("color",color);
	    });
	    $(".right_logo").height($(".right_logo").width());
	    $(window).resize(function(){
	        $(".right_logo").height($(".right_logo").width());
	        $(".photo_list").height($(".photo_list").width());
	    });
	    
	    // 保存评论
	    $(".write_comment_bt").click(function() {
	    	var flag = $("#check").val();
	    	if(flag=="0"){
	    		alert("请先登录！");
	    	}else{
				$.ajax({
					type : "post",
					url : "/blog2.1/user/addComment.do",
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					data:{
						"comment":$("#comment").val(),
						"bid":$("#comment_bid").val()
					},
					dataType : "json",
					success : function(data) {// ajax请求成功后触发的方法
						if(data.success){
							alert("评论成功");
						}
					},
					error : function(data) {
						alert("出错啦！");
					}
				});
				window.location.reload();
			}
		});
	    
	    // 保存博客
	    $("#edit_blog_subbtm").click(function() {
			var title = $("#edit_blog_title").val()
			var secondTitle = $("#edit_blog_secondTitle").val()
			var text = editor.txt.html()
			var type = $("#edit_blog_type").val()
			$.ajax({
				type : "post",// 数据发送的方式（post 或者 get）
				url : "/blog2.1/back/saveBlog.do",// 要发送的后台地址
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				data : {
						"title" : title,
						"secondTitle" : secondTitle,
						"text" : text,
						"type" : type
						},// 要发送的数据（参数）格式为{'val1':"1","val2":"2"}
				dataType : "json",// 后台处理后返回的数据格式
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				success : function(data) {// ajax请求成功后触发的方法
					if(data.success){
						alert('保存成功');
						window.location.reload();
					}else{
						alert('服务器出错啦！');
					}
				},
				error : function(data) {
					alert("出错啦！");
				}
			});
		});
	    
	    
});

