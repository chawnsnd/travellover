package util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import attraction.model.Attraction;

public class ImageUploader {
	public static Attraction upload(Attraction attraction, HttpServletRequest req){
		req.getParameterNames().toString();
		//하드코딩 수정할것
		String uploadPath = "C:\\dev\\travellover\\WebContent\\uploadImages";
		
		String fileName = "";
		String filePath = "";
		int maxSize = 1024*1024;
		String encoding = "UTF-8";
		
		try {
			MultipartRequest multi = new MultipartRequest(req, uploadPath, maxSize, encoding, new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				System.out.println(file);
				fileName = multi.getFilesystemName(file);
			}
			filePath = uploadPath+fileName;
			
			attraction.setName(multi.getParameter("name"));
			attraction.setAddress(multi.getParameter("address"));
			String phone = multi.getParameter("phone1")+"-"+multi.getParameter("phone1")+"-"+multi.getParameter("phone1");
			attraction.setPhone(phone);
			attraction.setContent(multi.getParameter("content"));
			attraction.setCategory(multi.getParameter("category"));
			
			attraction.setImage(filePath);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return attraction;		
	}
}
