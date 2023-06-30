package com.find.mapper;

import java.util.List;

import com.find.model.PagingVO;
import com.find.model.SitterVO;

public interface SitterFindMapper {
	
	int getTotalCount(PagingVO paging);
	
	// 지역 별로 펫시터 보여주기
	List<SitterVO> selectByAddr(String addr);
	
	// 페이징 처리하여 보여주기
	List<SitterVO> selectPaging(PagingVO paging);
	

}
