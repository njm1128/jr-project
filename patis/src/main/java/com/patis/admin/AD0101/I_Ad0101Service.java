package com.patis.admin.AD0101;

import java.util.List;

import com.patis.model.LoginLogVO;

public interface I_Ad0101Service {
	
	/**
	 * @AUTHOR : 4LEAF.YSH
	 * @DATE   : Mar 8, 2020
	 * @RETURN : List<LoginLogVO>
	 * @DES    : 로그인 정보를 가져오는 함수
	 */
	List<LoginLogVO> getLogData(int paging);
	
	
	/**
	 * @AUTHOR : 4LEAF.YSH
	 * @DATE   : Mar 8, 2020
	 * @RETURN : int
	 * @DES    : 데이터를 카운팅 하여 리턴
	 */
	int getListCount();

}