package top.blogs.util;

import java.util.Calendar;

public class DateUtil {
	public static String getDate() {
		Calendar date = Calendar.getInstance();
		String year = String.valueOf(date.get(Calendar.YEAR));
		String month = String.valueOf(date.get(Calendar.MONTH) + 1);
		String day = String.valueOf(date.get(Calendar.DATE));
		int h = date.get(Calendar.HOUR);
		int m = date.get(Calendar.MINUTE);
		int s = date.get(Calendar.SECOND);
		System.out.println(h + ":" + m + ":" + s);
		String time = year + "-" + month + "-" + day + "  " + h + ":" + m + ":" + s;
		return time;
	}
}
