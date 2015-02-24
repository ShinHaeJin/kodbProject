package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import model.domain.HashPhotoViewDTO;
import model.domain.HashVideoViewDTO;
import model.domain.MemberDTO;
import model.domain.PhotoDTO;
import model.domain.VideoDTO;
import model.service.mService;
import model.service.sService;

import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TimeController {
	@Resource(name="mService")
    private mService mService;
	
	@Resource(name="sService")
    private sService sService;
	
	//로그인 아이디체크
	@RequestMapping(value="/idCheck.do",  method=RequestMethod.POST)
	public ModelAndView checkId(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("pw") String pw){
		//System.out.println("Controller!" + email + pw);
		MemberDTO member = mService.checkId(email, pw);
		System.out.println("Controller!!!!! " + member);

		
		//연도별 사진 불러오기
		ModelAndView data = new ModelAndView();
		List<PhotoDTO> allPhoto= new ArrayList<PhotoDTO>();
		List<VideoDTO> allVideo = new ArrayList<VideoDTO>();
		
		if(member == null){
			/*비회원일 경우 예외처리 => 	public String getProcessG(String id, Model model){
		model.addAttribute("kodb", id);
		return "redirect:/welcome7.jsp";
		*/
			return null;
		}else{
			
			//id pw session에 넣기
			request.getSession().setAttribute("id", member.getEmail());
			request.getSession().setAttribute("pw", member.getPw());
			
			System.out.println("****" + data);
			
			System.out.println("사용자 이메일 !! : " +email);
			////////////////////////////
			List<PhotoDTO> obj = new ArrayList<PhotoDTO>();
			allPhoto = sService.selectPhotoByMonthOne(email);
			
			System.out.println("hashPhoto after " + obj);
			
			List<VideoDTO> obj2 = new ArrayList<VideoDTO>();
			allVideo = sService.selectVideoByMonthOne(email);
			
			///////////////////////////////
			data.addObject("hidden",1);
			data.addObject("allPhoto",allPhoto);
			data.addObject("allVideo",allVideo);
			data.setViewName("yearly");
			return data;
			
		}
			
	}
	//회원가입
	@RequestMapping(value="/insert.do", method=RequestMethod.POST)
	public String insert(@RequestParam("email2") String email, @RequestParam("name2") String name,@RequestParam("pw2") String pw) {
		String resultMsg = "no";
		System.out.println(email + name + pw);
		int result = mService.insertMember(email, name, pw);
		if(result > 0 )  {
			resultMsg = "ok";
		}
		return "redirect:index.html";
	}
	
	//회원가입 이메일 체크??? 삭제예정
	@RequestMapping(value="checkMember.do", method=RequestMethod.POST)
	public String checkMember(@RequestParam("emailc") String email){
		String checkMsg = "사용가능";
		System.out.println("--------"+email);
		MemberDTO member = mService.checkMember(email);
		if(member != null){
			checkMsg = "중복";
		}
		HttpHeaders resHeader = new HttpHeaders();
		resHeader.add("Content-Type", "text/html;charset=UTF-8");
		return checkMsg;
	}
	
}
