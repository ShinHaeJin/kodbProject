package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import model.domain.PhotoDTO;
import model.domain.VideoDTO;
import model.service.sService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SelectController {
	@Resource(name="sService")
	private sService sService;
	
	@RequestMapping(value="/selectByMonth.do")
	public ModelAndView selectPhotoByMonth(HttpServletRequest request){
		ModelAndView photo = new ModelAndView();
		List<PhotoDTO> data= new ArrayList<PhotoDTO>();
		//String month = request.getParameter("month");
		//hidden 값으로 연도 받아오기!!
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		
		data = sService.selectPhotoByYearMonth(year, month);
		
		
		//request.setAttribute("photo", data);
		photo.addObject("allPhoto", data);
		photo.setViewName("uploadSuccess");
		System.out.println(data);
		return photo;
	}
	
	
	@RequestMapping(value="/selectByYear.do", method=RequestMethod.POST)
	public ModelAndView selectPhotoByYear(HttpServletRequest request, @RequestParam("year") String year){
		ModelAndView photo = new ModelAndView();
		List<PhotoDTO> data= new ArrayList<PhotoDTO>();
		//String month = request.getParameter("month");
		
		System.out.println("++++ :"+year);
	//	data = sService.selectAllPhoto();

		
		//request.setAttribute("photo", data);
		photo.addObject("allPhoto", data);
		photo.setViewName("yearly");
		System.out.println(data);
		return photo;
	}
	
	@RequestMapping(value="/selectAllPhoto.do", method=RequestMethod.POST)
	public ModelAndView selectAllPhoto(HttpServletRequest request, String email){
		//id pw session에 넣기
		email = (String)request.getSession().getAttribute("id");
		System.out.println(email);
		
		ModelAndView photo = new ModelAndView();
		List<PhotoDTO> data= new ArrayList<PhotoDTO>();
		data = sService.selectAllPhoto(email);
		System.out.println("select data test :!!!!!" + data);
		String hidden = request.getParameter("hidden");
		
		photo.addObject("photo", data);
		photo.addObject("hidden", hidden);
		photo.setViewName("yearly");
		return photo;
	}
	
	@RequestMapping(value="/selectPhotoByMonthOne.do", method=RequestMethod.POST)
	   public ModelAndView selectPhotoByMonthOne(HttpServletRequest request, String email){
	      //id pw session에 넣기
	      email = (String)request.getSession().getAttribute("id");
	      System.out.println("selectPhotoByMonthOne!!! ");
	      System.out.println(email);
	      
	      ModelAndView photo = new ModelAndView();
	      List<PhotoDTO> allPhoto= new ArrayList<PhotoDTO>();
	      allPhoto = sService.selectPhotoByMonthOne(email);
	      //String hidden = request.getParameter("hidden");
	      List<VideoDTO> allVideo= new ArrayList<VideoDTO>();
	      allVideo = sService.selectVideoByMonthOne(email);
	      
	      
	      photo.addObject("allPhoto", allPhoto);
	      photo.addObject("allVideo",allVideo);
	      //photo.addObject("hidden", hidden);
	      photo.setViewName("yearly");
	      return photo;
	   }
	
}
