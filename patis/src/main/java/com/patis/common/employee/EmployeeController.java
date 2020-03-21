package com.patis.common.employee;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.patis.middleware.I_MiddlewareService;
import com.patis.model.CommonVO;

@Controller
public class EmployeeController {

	@Resource(name="middlewareService")
	private I_MiddlewareService middlewareService;
	
	@Resource(name = "employeeService")
	private I_EmployeeService employeeService;
	
	@RequestMapping(value="/join-step-1.do", method=RequestMethod.GET)
	public String join(Model model) throws Exception {
		
		List<CommonVO> menuList = middlewareService.getMenu();
		model.addAttribute("menuList", menuList);
		List<CommonVO> subMenuList = middlewareService.getSubMenu();
		model.addAttribute("subMenuList", subMenuList);
		List<CommonVO> DetailMenuList = middlewareService.getDetailMenu();
		model.addAttribute("DetailMenuList", DetailMenuList);
		
		return "join-step-1";
	}
	
	
	@RequestMapping(value="/join-step-2.do", method=RequestMethod.POST)
	public String joinStart(Model model) throws Exception {
		
		List<CommonVO> menuList = middlewareService.getMenu();
		model.addAttribute("menuList", menuList);
		List<CommonVO> subMenuList = middlewareService.getSubMenu();
		model.addAttribute("subMenuList", subMenuList);
		List<CommonVO> DetailMenuList = middlewareService.getDetailMenu();
		model.addAttribute("DetailMenuList", DetailMenuList);
		
		return "join-step-2";
	}
	
	
	@RequestMapping(value="/join-step-3.do", method=RequestMethod.POST)
	public String agree(Model model) throws Exception {
		
		List<CommonVO> menuList = middlewareService.getMenu();
		model.addAttribute("menuList", menuList);
		List<CommonVO> subMenuList = middlewareService.getSubMenu();
		model.addAttribute("subMenuList", subMenuList);
		List<CommonVO> DetailMenuList = middlewareService.getDetailMenu();
		model.addAttribute("DetailMenuList", DetailMenuList);
		
		return "join-step-3";
	}
	
	@RequestMapping(value="/phonePop.do", method=RequestMethod.GET)
	public String phonePop(Model model) throws Exception {
		
		
		return "phonePop";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(Model model) throws Exception {
		
		
		return "login";
	}
	
	
	@RequestMapping(value="/idDupleCheckAjax.do", method=RequestMethod.POST)
	@ResponseBody
	public String idDupleCheckAjax(@RequestParam("joinId")String joinId ,Model model) throws Exception {
			
		int result = employeeService.dupleCheckId(joinId);
		
		return result + "";
	}
	
	@RequestMapping(value="/joinUs.do", method=RequestMethod.POST)
	public String joinUs(	@RequestParam("joinId")String joinId 
						,	@RequestParam("joinName")String joinName 
						,	@RequestParam("joinPassword")String joinPassword 
						,	@RequestParam("joinZonecode")String joinZonecode 
						,	@RequestParam("joinAddr1")String joinAddr1 
						,	@RequestParam("joinAddr2")String joinAddr2 
						,	@RequestParam("joinEmail")String joinEmail 
						,	@RequestParam("joinMobile")String joinMobile 
						,	@RequestParam("joinTel")String joinTel 
						,	Model model) throws Exception {
			
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("joinId", joinId);
		params.put("joinName", joinName);
		params.put("joinPassword", joinPassword);
		params.put("joinZonecode", joinZonecode);
		params.put("joinAddr1", joinAddr1);
		params.put("joinAddr2", joinAddr2);
		params.put("joinEmail", joinEmail);
		params.put("joinMobile", joinMobile);
		params.put("joinTel", joinTel);
		
		int result = employeeService.joinUs(params);
		
		return "redirect:/main.do";
	}
	
	
	@RequestMapping(value="/findId.do", method=RequestMethod.GET)
	public String findId(Model model) throws Exception {
		
		
		return "findId";
	}
	
	@RequestMapping(value="/findPass.do", method=RequestMethod.GET)
	public String findPass(Model model) throws Exception {
		
		
		return "findPass";
	}
	
	
	
}
