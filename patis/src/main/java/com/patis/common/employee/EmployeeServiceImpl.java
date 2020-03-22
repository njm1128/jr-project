package com.patis.common.employee;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.codec.net.URLCodec;
import org.springframework.stereotype.Service;

import com.patis.admin.AD01.I_Ad010001DAO;
import com.patis.middleware.I_MiddlewareService;
import com.patis.model.EmpVO;
import com.patis.util.AES256Util;


@Service("employeeService")
public class EmployeeServiceImpl implements I_EmployeeService{
	
	@Resource(name="employeeDAO")
	private I_EmployeeDAO employeeDAO;
	
	@Resource(name = "ad010001DAO")
	private  I_Ad010001DAO ad010001DAO;

	@Resource(name="middlewareService")
	private I_MiddlewareService middlewareService;
	
	
	@Override
	public int dupleCheckId(String joinId) {
		return employeeDAO.dupleCheckId(joinId);
	}

	@Override
	public int joinUs(Map<String, String> params) throws Exception {
		String scKey = AES256Util.generateKey();
		
		
		String skey = AES256Util.getHexStringKey(scKey);
		AES256Util aes256 = new AES256Util(skey);
		URLCodec codec = new URLCodec();
	
		String encPassword = codec.encode(aes256.aesEncode((String)params.get("joinPassword")));
		
		params.put("joinPassword", encPassword);
		params.put("secretKey", scKey);
		
		return employeeDAO.joinUs(params);
	}

	@Override
	public EmpVO mainLogin(Map<String, String> params) throws Exception {
		try {
			String privateKey = ad010001DAO.getEmpSecretInfo(params).getSECRET_KEY();
			String skey = AES256Util.getHexStringKey(privateKey);
			AES256Util aes256 = new AES256Util(skey);
			URLCodec codec = new URLCodec();
		
			String encPassword = codec.encode(aes256.aesEncode((String)params.get("input_password")));
			
			middlewareService.printLog("Encoding password: " + encPassword);
			
			params.put("input_password", encPassword);
		} catch(Exception e) {
			System.out.println(e);
		}
		
		
		return employeeDAO.mainLogin(params);
	}

	@Override
	public int LOGIN_TRY_TO_ZERO(String input_id) throws Exception {
		return employeeDAO.LOGIN_TRY_TO_ZERO(input_id);
	}

	@Override
	public EmpVO getUserInfoByMypage(String input_id) throws Exception {
		return employeeDAO.getUserInfoByMypage(input_id);
	}

	@Override
	public int updateUserInfoMyPage(Map<String, String> params) {
		return employeeDAO.updateUserInfoMyPage(params);
	}

	@Override
	public String findIdType1(Map<String, String> params) {
		return employeeDAO.findIdType1(params);
	}
	
	
}
