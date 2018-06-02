package util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateParser {
	public static Date toDate(Timestamp date){
		return date == null ? null : new Date(date.getTime());
	}
	public static Timestamp toTimestamp(Date date){
		return date == null ? null : Timestamp.valueOf(toString(date));
	}
	public static String toString(Date date) {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return transFormat.format(date);
	}
}
