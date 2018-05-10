package util;

import java.sql.Timestamp;
import java.util.Date;

public class DateParser {
	public static Date toDate(Timestamp date){
		return date == null ? null : new Date(date.getTime());
	}
}
