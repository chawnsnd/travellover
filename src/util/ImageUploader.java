package util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import attraction.model.Attraction;

public class ImageUploader {
	public static Attraction upload(Attraction attraction, HttpServletRequest req){
		req.getParameterNames().toString();
		String uploadPath = req.getServletContext().getRealPath("uploadImages");
		String fileName = "";
		String filePath = "";
		int maxSize = 1024*1024*10;
		String encoding = "UTF-8";
		
		
		try {
			MultipartRequest multi = new MultipartRequest(req, uploadPath, maxSize, encoding, new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			fileName = multi.getFilesystemName("image");
			filePath = "/uploadImages/"+fileName;
			if(multi.getParameter("attraction_id")!=null && !multi.getParameter("attraction_id").isEmpty()) {
				attraction.setAttractionId(Integer.parseInt(multi.getParameter("attraction_id")));
			}
			attraction.setName(multi.getParameter("name"));
			attraction.setAddress(multi.getParameter("address"));
			String phone = multi.getParameter("phone1")+"-"+multi.getParameter("phone2")+"-"+multi.getParameter("phone3");
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
