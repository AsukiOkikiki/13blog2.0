package top.blogs.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import top.blogs.dao.BlogDao;
import top.blogs.po.Blog;

@Controller
public class Test {
	@Autowired
	private BlogDao blogEdit;

	@RequestMapping("/test")
	public ModelAndView getSuccess() {
		List list = blogEdit.getBlog();
		ModelAndView mv = new ModelAndView();
		System.out.println(list);
		// mv.addObject("test", b);
		mv.setViewName("success");
		return mv;
	}

}
