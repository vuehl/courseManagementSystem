package Study.com.util;

import java.util.UUID;

/* 生成GUID，充当数据库的ID */

public class UuidGen
{
	public static String gen()
	{
		 String s = UUID.randomUUID().toString(); 
	     String s2 = s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24); 
	     return s2.toUpperCase();
	}
}
