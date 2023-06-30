package com.find.model;

import lombok.Data;

@Data
public class SitterVO {
	
	// property
	private int ino;	// 기본키
	
	private String nickname;
	private String title;	 		// 소개 제목
	private String short_content;	// 간단한 소개
	private String addr;			// 지역
	private String category;		// 태그
	private String service;			// 이용 가능 서비스
	private String content;			// 소개 내용
	
	private String license;			// 전문가 자격
	private String ifile;			// 펫시터 소개 사진
	
	
//	private String findAddr;	// 지역 검색
	
	
}
