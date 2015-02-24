package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import model.domain.DocumentDTO;
import model.domain.PhotoDTO;
import model.domain.VideoDTO;
import model.service.sService;
import model.service.uService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
	
	@Resource(name="uService")
    private uService uService;
	@Resource(name="sService")
    private sService sService;
	
	@RequestMapping(value="/upload.do", method=RequestMethod.POST)
	public ModelAndView uploadPhoto(MultipartHttpServletRequest request){
		System.out.println("*********업로드 테스트");
		
		//hidden값 = 사진 or 영상 or 문서
		String hidden = request.getParameter("hidden");
		System.out.println("hidden : " + hidden);
		
		//comment값
		String comment = request.getParameter("comment");
		System.out.println("comment : " + comment);
		
		//hash값
		String hash = request.getParameter("hash");
		//hash값
		String[] fhash = hash.split("#");
		for(int i=1; i<fhash.length; i++){
			System.out.println("hash : " + fhash[i]);
		}

		//Year Month 나눠서 upload
		String date = request.getParameter("date");
		System.out.println("date : " + date);
		
		String pYear = date.substring(0, 4);
		String pMonth = date.substring(5, 7);
		String pDay = date.substring(8, 10);
		System.out.println("Year : " + pYear);
		System.out.println("Month : " + pMonth);
		System.out.println("Day : " + pDay);
		
		//사용자 아이디
		String email= (String)request.getSession().getAttribute("id");
		System.out.println("사용자 아이디 : " + email);
		
		ModelAndView mav = new ModelAndView();
		
		List<MultipartFile> file = request.getFiles("fileNm");
		List<String> fullPathNames = new ArrayList<String>();
		ServletContext scontext = request.getSession().getServletContext();	
		
		System.out.println("UploadController before : " + file + " " + scontext);
		System.out.println("입력값 확인 : " + scontext + " ** " + file + " ** " + hidden +" ** " + pYear + " ** " + pMonth + " ** " + pDay + " ** " + comment + " ** " + email);
		
		fullPathNames = uService.uploadPhoto(scontext, file, hidden, pYear, pMonth, pDay, comment, email, hash);
		
		//사진
		List<PhotoDTO> allPhoto = new ArrayList<PhotoDTO>();
		allPhoto = sService.selectAllPhoto(email);
		System.out.println(allPhoto);
		mav.addObject("allPhoto", allPhoto);
		//비디오
		List<VideoDTO> allVideo = new ArrayList<VideoDTO>();
		allVideo = sService.selectAllVideo(email);
		System.out.println(allVideo);
		mav.addObject("allVideo", allVideo);
		/*//문서
			List<DocumentDTO> allDoc = new ArrayList<DocumentDTO>();
			//allDoc = sService.selectAllDoc(email);
			System.out.println(allDoc);
			mav.addObject("allDoc", allDoc);*/
	
		//mav.addObject("fullPathNames", fullPathNames);
		//mav.addObject("allPhoto", allPhoto);
		//mav.addObject("hidden", hidden);
		System.out.println("hidden : " + hidden);
		mav.addObject("comment", comment);
		mav.addObject("hash", fhash);
		mav.setViewName("uploadSuccess");
		return mav; 
	}
	
	@RequestMapping(value="search.do")
	public ModelAndView selectHashTag(String hash, HttpServletRequest request){
		//System.out.println("UploadController에서 hash : " + hash);

		String email = (String)request.getSession().getAttribute("id");
		//System.out.println("사용자 아이디 : " + email);
		
		ModelAndView mav = new ModelAndView();
		
		List<Object> obj = new ArrayList<Object>();
		obj = uService.selectHashTag(hash, email);
		//System.out.println("Controller after Obj : " + obj);
		
		mav.addObject("totalObj", obj);
		mav.setViewName("hash");
		return mav;
	}
}




