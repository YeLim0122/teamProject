package com.find.mapper;

import java.util.List;

import com.find.model.WishVO;

public interface WishMapper {
	
	// 찜목록 보여주기
	List<WishVO> selectWno(int wno);

	// 찜 목록 추가 및 삭제
	int addWish(WishVO wish);
	int delWish(WishVO wish);
	
}
