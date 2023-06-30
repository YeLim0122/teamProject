package com.find.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.find.model.PagingVO;
import com.find.model.SitterVO;
import com.find.service.SitterFindService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/shop")
@Log4j
public class FindController {
	
	@Resource(name="sitterFindService")
	private SitterFindService sitterFindService;
	
	// 지역 검색 @RequestParam(name="addr", defaultValue="논현동") String addr
//	@GetMapping("/find_old")
//	public String findSitter(Model m,
//							@RequestParam(name="addr", defaultValue="논현동") String addr) {
//		
//		log.info("addr: "+addr);
//		
//		List<SitterVO> sitter = this.sitterFindService.selectByAddr(addr);
//		
//		log.info("sitter: "+sitter);
//		m.addAttribute("sitter", sitter);
//		m.addAttribute("addr", addr);
//		
//		return "shop/find";
//	}
	
	
	// 페이징
	@GetMapping("/find")
	public String findSitterPaging(Model m, HttpServletRequest req,
									@ModelAttribute PagingVO paging) {
		
		HttpSession session = req.getSession();
		
		// 1. 총 게시글 수 가져오기 or 검색한 게시글 수 가져오기
		int total = sitterFindService.getTotalCount(paging);
		paging.setTotalCount(total);
		paging.setPagingBlock(5);
		
		paging.paging(session);
		
		log.info("paging: "+paging);
		
		// 2. 게시글 목록 가져오기 or 검색한 게시글 목록 가져오기
		List<SitterVO> sitter = sitterFindService.selectPaging(paging);
		String myctx = req.getContextPath();
		String loc = "shop/find";
		
		// 3. 페이지 네비게이션 문자열 받아오기
		String pageNavi = paging.pageNavi(myctx, loc);
		
		m.addAttribute("paging", paging);
		m.addAttribute("sitter", sitter);
		m.addAttribute("pageNavi", pageNavi);
		
		return "shop/find";
		
	}
	
	
	// 시터 상세 페이지
	@GetMapping("/info")
	public String sitterInfo() {
		
		return "shop/detail";
	}

}
