package top.blogs.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhotoUtil {
	public static List<String> getShowPhoto(String src) {
		// 按指定模式在字符串查找
		String pattern = "<img src=\"(.*?)\"";
		// 创建 Pattern 对象
		Pattern r = Pattern.compile(pattern);
		// 现在创建 matcher 对象
		Matcher m = r.matcher(src);
		List<String> list = new ArrayList<String>();
		while (m.find()) {
			list.add(m.group(1));
		}
		return list;
	}
}
