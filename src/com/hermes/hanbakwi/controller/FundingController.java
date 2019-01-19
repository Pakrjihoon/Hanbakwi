package com.hermes.hanbakwi.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hermes.hanbakwi.service.FundingsService;
import com.hermes.hanbakwi.service.PatronsService;
import com.hermes.hanbakwi.service.UsersService;
import com.hermes.hanbakwi.util.FileRenameUtil;
import com.hermes.hanbakwi.util.ResizeImageUtil;
import com.hermes.hanbakwi.vo.Funding;

@Controller
public class FundingController {

	private FundingsService fundingsService;
	private PatronsService patronsService;
	
	public void setFundingsService(FundingsService fundingsService) {
		this.fundingsService = fundingsService;
	}
	public void setPatronsService(PatronsService patronsService) {
		this.patronsService = patronsService;
	}
	
	private ResizeImageUtil resizeImageUtil;
	
	public void setResizeImageUtil(ResizeImageUtil resizeImageUtil) {
		this.resizeImageUtil = resizeImageUtil;
	}
	
	private UsersService usersService;
	
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping(value="/funding/main", method=RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("successList",fundingsService.success());
		model.addAttribute("deadlineList",fundingsService.deadline());
		model.addAttribute("newList",fundingsService.newList());
		return "fundingMain";
	}
	
	//detail
	@RequestMapping(value="/fundingViewer/{fdNo}",method=RequestMethod.GET)
	public String detail(Model model,@PathVariable int fdNo) {  //model은 view에서만 (출력할것이 있을때)
		
		
		
		model.addAttribute("funding",fundingsService.selectOne(fdNo));
		
		
		return "fundingViewer";
	}
	
	//insert view 페이지
		@RequestMapping(value="/funding/register",method=RequestMethod.GET)
		public String fundingInsertForm(Model model) {
		
			System.out.println("GET/funding");
			return "fundingForm";
		}
		
	//insert 논뷰 페이지
		@RequestMapping(value="/funding",method=RequestMethod.POST)
		public String fundingRegister(Funding funding,int uNo) {
			
			fundingsService.insert(funding);
			
			System.out.println("POST/funding");
			return "fundingMain";
		}
	
	
		
		//page 
		@RequestMapping(value="/funding",method=RequestMethod.GET)
		public String welcome() {
			System.out.println("GET /");
			
			return "redirect:/funding/page/1/filter/all";
		}
		
		@RequestMapping(value="/funding/page/{pageNo}/filter/{filter}",method=RequestMethod.GET)
		public String index(Model model,@PathVariable int pageNo,
				@PathVariable String filter) {
			System.out.println("GET /");
			
			model.addAllAttributes(fundingsService.getList(pageNo,filter));
			
			return "fundingList";
		}
		
		

		@RequestMapping(value="/ajax/funding/image/upload",
				method=RequestMethod.POST,
				produces="application/json;charset=UTF-8")
		@ResponseBody
		public String uploadImage(HttpServletRequest request,String type,
				MultipartFile uploadImg) {
			
			ServletContext sc = request.getServletContext();
			
			String uploadPath = sc.getRealPath("funding"+File.separator+"original");
			String profilePath = sc.getRealPath("funding"+File.separator+"thumb");
			
			System.out.println(uploadPath);
			
			System.out.println(uploadImg.getOriginalFilename());
			
			File file = new File(uploadPath+File.separator+uploadImg.getOriginalFilename()); 
			
			file = FileRenameUtil.rename(file);
			
				String src = "/funding/original/"+file.getName();
			
			try {
				
				uploadImg.transferTo(file);
				
				if(type.equals("T")) {
					resizeImageUtil.resize(file.getAbsolutePath(),profilePath+File.separator+file.getName(), 230,150);
				}//if end
				
				return "{\"src\":\""+src+"\"}";
				
			} catch (Exception e) {
				e.printStackTrace();
				
				return "에러";
			} 
			
		}
		
	
}
