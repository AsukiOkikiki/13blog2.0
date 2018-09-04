package top.blogs.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhotoUtil {
	public static List<String> getShowPhoto(String src) {
		// ��ָ��ģʽ���ַ�������
		String pattern = "<img src=\"(.*?)\"";
		// ���� Pattern ����
		Pattern r = Pattern.compile(pattern);
		// ���ڴ��� matcher ����
		Matcher m = r.matcher(src);
		List<String> list = new ArrayList<String>();
		while (m.find()) {
			list.add(m.group(1));
		}
		return list;
	}
}
