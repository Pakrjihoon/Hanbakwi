package com.hermes.hanbakwi.controller;
import java.io.File;
import java.util.Arrays;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.hermes.hanbakwi.service.SitesService;
import com.hermes.hanbakwi.util.FileRenameUtil;
import com.hermes.hanbakwi.util.ResizeImageUtil;
import com.hermes.hanbakwi.vo.Culture;
import com.hermes.hanbakwi.vo.Site;
import com.hermes.hanbakwi.vo.User;

@Controller
public class SightController {

	private SitesService sitesService;
	private ResizeImageUtil resizeImageUtil;
	
	public void setSitesService(SitesService sitesService) {
		this.sitesService = sitesService;
	}
	
	@RequestMapping(value="/sight",method=RequestMethod.GET)
	public String sight(Model model) {
		
		model.addAllAttributes(sitesService.getSite());
		
		return"allSight";
	}
	
	/*@RequestMapping(value="/ajax/sight/image",
			method=RequestMethod.POST,
			produces="application/json;charset=UTF-8")
	@ResponseBody
	public String sightImage(HttpServletRequest request,String type,
			MultipartFile uploadImg) {
		
		ServletContext sc = request.getServletContext();
		
		String uploadPath = sc.getRealPath("upload");
		String tumbnailPath = sc.getRealPath("tumbnail");
		//프로필 사진 모아놓는 경로
		System.out.println(uploadPath);
		
		System.out.println(uploadImg.getOriginalFilename());
		
		File file = new File(uploadPath+File.separator+uploadImg.getOriginalFilename()); 
		
		file = FileRenameUtil.rename(file);
		
		String src = "/";
		
		try {
			
			uploadImg.transferTo(file);
			
			if(type.equals("S")) {
				src+="tumbnail/";	   
				resizeImageUtil.resize(file.getAbsolutePath(),tumbnailPath+File.separator+file.getName(), 230,160);
				src+= file.getName();
				return "{\"src\":\""+src+"\"}";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "에러";
		}
		return "allSight";
	}*/
	
	@RequestMapping(value="/ajax/sight/search/{sl}",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getLocation(@PathVariable String sl) {		
		
		sl="%"+sl+"%";
		return sitesService.selectLocation(sl);
	}
	
	@RequestMapping(value="/sight/register",method=RequestMethod.POST)
	public String siteInfo(HttpSession session, Site site,String open,String close,String off,String cType,int[] crNo,String rsType,String dType,
			String foodType,String[] feePrice,int isRepNo) {
		
		User user=(User) session.getAttribute("loginUser");
		int uNo=user.getuNo();
		
		sitesService.info(uNo,site,open,close,off,cType,crNo,rsType,dType,foodType,feePrice,isRepNo);
		
		return "redirect:/sight";
		
	}
	
	/*@RequestMapping(value="/sight")
	public Map<String,Object> siteGet(){
		
	}*/
}

