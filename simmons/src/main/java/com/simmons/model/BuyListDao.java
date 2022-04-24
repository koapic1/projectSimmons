package com.simmons.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BuyListDao {

	@Autowired
	public SqlSessionFactory sqlSessionFactory;
	
	@Autowired
	BuyListDto buyListDto;
	
	@Autowired
	BuyListDao buyListDao;
	
	public int purchase(BuyListDto pBuyListDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("purchase",pBuyListDto);
		sqlSession.close();
		return result;
	}

	public BuyListDto buyListInquire(BuyListDto pBuyListDto) {
		System.out.println("dao로 넘어온 값===="+pBuyListDto);
		BuyListDto buyListDto = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		buyListDto = sqlSession.selectOne("buyListInquire",pBuyListDto);
		sqlSession.close();
		return buyListDto;
	}
	
	public BuyListDto memberBuyListInquire(BuyListDto pBuyListDto) {
		BuyListDto buyListDto = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		buyListDto = sqlSession.selectOne("memberBuyListInquire",pBuyListDto);
		sqlSession.close();
		return buyListDto;
	}
	
}
