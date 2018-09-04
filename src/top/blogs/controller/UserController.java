package top.blogs.controller;

import static org.hamcrest.CoreMatchers.startsWith;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import top.blogs.po.Comment;
import top.blogs.po.Message;
import top.blogs.po.User;
import top.blogs.service.BlogService;
import top.blogs.service.UserService;
import top.blogs.util.DateUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService us;
	@Autowired
	private BlogService bs;

	@RequestMapping("/login")
	public ModelAndView userLogin(HttpSession session, HttpServletRequest request, String username, String password,
			String url) {
		User user = us.userLogin(username, password);
		session.setMaxInactiveInterval(60 * 60);
		ModelAndView mv = new ModelAndView();
		if (url.startsWith("/nav/toRegister.do")) {
			url = "/nav/index.do";
		}
		if (user != null) {
			mv.setViewName("redirect:" + url);
			session.setAttribute("user", user);
		} else {
			mv.setViewName("user_login");
			mv.addObject("message", "ÕËºÅ»òÃÜÂë´íÎó");
		}
		return mv;
	}

	@RequestMapping("/addComment")
	@ResponseBody
	public Message addComment(HttpSession session, String comment, int bid) {
		User user = (User) session.getAttribute("user");
		Comment com = new Comment(comment, DateUtil.getDate(), user.getUid(), bid);
		int i = bs.saveComment(com);
		Message message;
		if (i > 0) {
			message = new Message(true, "ok");
		} else {
			message = new Message(false, "error");
		}
		return message;
	}

	@RequestMapping("/userRegister")
	@ResponseBody
	public Message userRegistrer(String username, String password, String checkPassword, String uname, String qq,
			String email, String sex, String phone, String invite) {
		int i = 0;
		if (password.equals(checkPassword)) {
			String registerTime = DateUtil.getDate();
			User user = new User(uname, username, password, email, registerTime, sex, phone, qq);
			i = us.saveUser(user);
		}
		Message message;
		if (i > 0) {
			message = new Message(true, "ok");
		} else {
			message = new Message(false, "error");
		}
		return message;
	}

	@RequestMapping("/checkUsername")
	@ResponseBody
	public Message checkUsername(String username) {
		User user = us.checkUsername(username);
		System.out.println(user);
		Message message;
		if (user == null) {
			message = new Message(true, "ok");
		} else {
			message = new Message(false, "error");
		}
		return message;
	}
}
