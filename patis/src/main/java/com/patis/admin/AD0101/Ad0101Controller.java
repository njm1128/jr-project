package com.patis.admin.AD0101;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.patis.middleware.I_MiddlewareService;
import com.patis.model.CommonVO;
import com.patis.model.ConnectRecordVO;
import com.patis.model.LoginLogVO;

/**
 * @author 4leaf.ysh
 * @SCREEN : 로그인기록 관리 페이지(loginInfo.do)
 *
 */

@Controller
public class Ad0101Controller {

	@Resource(name = "middlewareService")
	private I_MiddlewareService middlewareService;
	
	@Resource(name = "ad0101Service")
	private I_Ad0101Service ad0101Service;
	
	/**
	 * @AUTHOR : 4LEAF.YSH
	 * @DATE : Mar 6, 2020
	 * @RETURN : String
	 * @DESC : 로그인기록 관리 페이지로 이동
	 */
	@RequestMapping(value = "/loginInfo.do", method = RequestMethod.GET)
	public String sendScreen(@RequestParam("mc") String mc, @RequestParam("sc") String sc, HttpSession session,
			Model model) {

		boolean flag = false;
		int right = 0;

		if (session.getAttribute("loginRight") == null) {
			try {
				List<CommonVO> menuList = middlewareService.getMenu();
				model.addAttribute("menuList", menuList);
				List<CommonVO> subMenuList = middlewareService.getSubMenu();
				model.addAttribute("subMenuList", subMenuList);
				List<CommonVO> DetailMenuList = middlewareService.getDetailMenu();
				model.addAttribute("DetailMenuList", DetailMenuList);
			} catch (Exception e) {
				System.out.println(e);
			}

		} else {
			right = Integer.parseInt((String) session.getAttribute("loginRight"));
		}

		if (right == 1 || right == 2 || right == 3) {
			middlewareService.printLog("관리자 또는 운영자 권한으로 로그인 되었습니다.");
			
			
			
			int page = ad0101Service.getListCount();
			page = page / 10;
			model.addAttribute("page", page+1);
			
			flag = true;

		}

		if (flag) {
			return "loginInfo";
		} else {
			return "main";

		}

	}
	
	@RequestMapping(value = "/ad0101Init.do", method = RequestMethod.GET)
	public String ajaxGetLoginData(Model model,
							@RequestParam("page")int page) {
		
		List<LoginLogVO> loginLogDataList = ad0101Service.getLogData((page-1)*10);
		model.addAttribute("loginLogDataList", loginLogDataList);
	
		
		return "ajax/ad0101Init";
	}
	
	
	@RequestMapping(value = "/getTodayLoginData.do", method = RequestMethod.GET)
	@ResponseBody
	public String getTodayLoginData(@RequestParam("today")String today) {
		
		String result = "";
		
		try {
			result = ad0101Service.getTodayLoginData(today);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}	
	
	@RequestMapping(value = "/getSearchLoginData.do", method = RequestMethod.GET)
	@ResponseBody
	public String getSearchLoginData( @RequestParam("start")String start
									, @RequestParam("end")String end) {
		
		String result = "";
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("start", start);
		params.put("end", end);
		
		try {
			result = ad0101Service.getSearchLoginData(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}	
	
	
	
	@RequestMapping(value = "/getTodayDetailLoginData.do", method = RequestMethod.GET)
	public String getTodayDetailLoginData(@RequestParam("today")String today, Model model) {
		
		List<LoginLogVO> list = new ArrayList<LoginLogVO>();
		
		try {
			list = ad0101Service.getTodayDetailLoginData(today);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		model.addAttribute("list", list);
		
		
		return "ajax/loginList";
	}
	
	
	@RequestMapping(value = "/getSearchDetailLoginData.do", method = RequestMethod.GET)
	public String getSearchDetailLoginData(	  @RequestParam("start")String start
											, @RequestParam("end")String end
											, Model model) {
		
		List<LoginLogVO> list = new ArrayList<LoginLogVO>();
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("start", start);
		params.put("end", end);
		
		try {
			list = ad0101Service.getSearchDetailLoginData(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		model.addAttribute("list", list);
		
		
		return "ajax/loginList";
	}
	
	

}
