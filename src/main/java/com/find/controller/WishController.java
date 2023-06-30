package com.find.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.find.model.WishVO;
import com.find.service.WishService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class WishController {
	
	@Resource(name="wishService")
	private WishService wishService;
	
//	@GetMapping(value="/find", produces="application/json")
//	public Map<String, String> wish(@RequestParam WishVO vo) {
//
////		List<WishVO> wish = new ArrayList<>();
//		vo = new WishVO();
//		int wcheck = vo.getWcheck();
//		int n;
//		if (wcheck == 0) {
//			n = this.wishService.addWish(vo);
//			wcheck = 1;
//		} else {
//			n = this.wishService.delWish(vo);
//			wcheck = 0;
//		}
//		log.info("wcheck: "+wcheck);
//		
//		Map<String, String> map = new HashMap<>();
//		String str = (n>0)?"OK":"Fail";
//		map.put("result", str);
//		
//		return map;
//	}
	
	
//	@PutMapping(value="/find/{wno}", produces= "application/json")
//	public Map<String, String> wishAdd(@PathVariable("wno") int wno, @RequestBody WishVO vo){
//		
//		log.info("wno: "+wno+" / vo: "+vo);
//		int n = this.wishService.addWish(vo);
//		String str = (n>0)? "OK":"FAIL";
//		
//		Map<String, String> map = new HashMap<>();
//		map.put("result", str);
//		
//		return map;
//	}

	
	@ResponseBody
	@RequestMapping(value="/shop/heart.do")
	public WishVO wishAdd(@RequestParam String ino, @RequestParam String unickname, 
						HttpSession session) {
		
//		// 로그인한 회원의 회원번호
//		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
//		int idx_fk = loginUser.getIdx();
//				
//		CartVO cvo = new CartVO();
//		cvo.setIdx_fk(idx_fk);
//		cvo.setPnum_fk(pnum);
//		cvo.setPqty(pqty);
		
		WishVO wish = new WishVO();
		wish.setIno(ino);
		wish.setUnickname(unickname);
		log.info("vo: "+wish);
		
		int n = wishService.addWish(wish);
		log.info("n: "+n);
		
		return wish;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/shop/removeHeart.do")
	public WishVO wishDel(@RequestParam String ino, @RequestParam String unickname, 
						HttpSession session) {
		
		WishVO wish = new WishVO();
		wish.setIno(ino);
		wish.setUnickname(unickname);
		log.info("vo: "+wish);
		
		int n = wishService.delWish(wish);
		log.info("n: "+n);
		
		return wish;
	}

}
