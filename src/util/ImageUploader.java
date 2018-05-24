package util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ImageUploader {
	public static String upload(HttpServletRequest req){
		String uploadPath = req.getRealPath("/uploadImages");	
		String fileName = "";
		String filePath = "";
		int maxSize = 1024*1024;
		String encoding = "UTF-8";
		
		try {
			MultipartRequest multi = new MultipartRequest(req, uploadPath, maxSize, encoding, new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				fileName = multi.getFilesystemName(file);
			}
			filePath = uploadPath+fileName;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return filePath;		
	}
}
