package com.note.util;

public class StringUtil {

	/**
	 * change the small image url to large one
	 * @param imageUrl
	 * @return
	 */
	public static String ReplacePictureUrl(String imageUrl) {
		return imageUrl.replace("spic", "mpic");
	}
	
	/**
	 * 根据url获取bookid
	 * @param doubanUrl  http://api.douban.com/book/subject/1220562
	 * @return
	 */
	public static String SubStringBookid(String doubanUrl){
		
		return doubanUrl.substring(doubanUrl.lastIndexOf("/")+1);
		
	}
	

}
