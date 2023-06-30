package com.find.service;

import java.util.List;
import java.util.Map;

import com.find.model.PagingVO;
import com.find.model.SitterVO;
import com.find.model.WishVO;

public interface SitterFindService {
	
	int getTotalCount(PagingVO paging);

	// 지역 별로 펫시터 보여주기
	public List<SitterVO> selectByAddr(String addr);
	
	// 페이징 처리하여 보여주기
	List<SitterVO> selectPaging(PagingVO paging);
	
	
}
