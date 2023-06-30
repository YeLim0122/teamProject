package com.find.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.find.mapper.SitterFindMapper;
import com.find.mapper.WishMapper;
import com.find.model.PagingVO;
import com.find.model.SitterVO;
import com.find.model.WishVO;

@Service("sitterFindService")
public class SitterFindServiceImpl implements SitterFindService {

	@Inject
	private SitterFindMapper sitterFindMapper;
	
	@Inject
	private WishMapper wishMapper;
	
	
	@Override
	public int getTotalCount(PagingVO paging) {

		return this.sitterFindMapper.getTotalCount(paging);
	}
	

	@Override
	public List<SitterVO> selectByAddr(String addr) {
		
		return this.sitterFindMapper.selectByAddr(addr);
	}
	
	
	@Override
	public List<SitterVO> selectPaging(PagingVO paging) {
		
		return this.sitterFindMapper.selectPaging(paging);
	}

}
