package top.blogs.controller;

import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import top.blogs.po.Blog;
import top.blogs.po.User;
import top.blogs.service.BlogService;
import top.blogs.service.UserService;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Autowired
	private BlogService bs;
	@Autowired
	private UserService us;

	@RequestMapping("/text")
	public ModelAndView getBlogContent(int id) {
		ModelAndView mv = new ModelAndView();
		Blog blog = bs.getBlogById(id);
		List<User> userList = new LinkedList<User>();
		Blog blog2 = bs.getCommentById(id);
		if (blog2 != null) {
			for (int i = 0; i < blog2.getComment().size(); i++) {
				userList.add(us.getUserById(blog2.getComment().get(i).getUid()));
			}
		}
		mv.addObject("blog", blog);
		mv.addObject("userList", userList);
		mv.addObject("blog2", blog2);
		mv.setViewName("blogContent");
		return mv;
	}

	@RequestMapping("/findBlogByDate")
	public ModelAndView getBlogByDate(String date) {
		List<Blog> blogList = bs.getBlogByDate(date);
		ModelAndView mv = new ModelAndView();
		mv.addObject("blogList", blogList);
		List<String> typeList = bs.getTypeList();
		mv.addObject("typeList", typeList);
		mv.setViewName("blogIndex");
		return mv;
	}

	@RequestMapping("/findBlogByType")
	public ModelAndView getBlogByType(String type) throws UnsupportedEncodingException {
		type = new String(type.getBytes("ISO-8859-1"), "UTF-8");
		List<Blog> blogList = bs.getBlogByType(type);
		ModelAndView mv = new ModelAndView();
		List<String> typeList = bs.getTypeList();
		mv.addObject("typeList", typeList);
		mv.addObject("blogList", blogList);
		mv.setViewName("blogIndex");
		return mv;
	}

	@RequestMapping("/search")
	public ModelAndView search(String search) throws UnsupportedEncodingException {
		String value = new String(search.getBytes("ISO-8859-1"), "UTF-8");
		System.out.println(value);
		ModelAndView mv = new ModelAndView();
		List<String> typeList = bs.getTypeList();
		mv.addObject("typeList", typeList);
		List<Blog> blogList = bs.getBlogByTitleOrSTitle(value);
		mv.addObject("blogList", blogList);
		mv.setViewName("blogIndex");
		return mv;
	}

}
