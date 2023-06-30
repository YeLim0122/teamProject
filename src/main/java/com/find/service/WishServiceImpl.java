package com.find.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.find.mapper.WishMapper;
import com.find.model.WishVO;

@Service("wishService")
public class WishServiceImpl implements WishService {
	
	@Inject
	private WishMapper wishMapper;

	@Override
	public List<WishVO> selectWno(int wno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addWish(WishVO wish) {
	
		return this.wishMapper.addWish(wish);
	}

	@Override
	public int delWish(WishVO wish) {
		
		return this.wishMapper.delWish(wish);
	}

}
