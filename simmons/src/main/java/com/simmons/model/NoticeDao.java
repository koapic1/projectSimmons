package com.simmons.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NoticeDao {
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	@Autowired
	NoticeDto noticeDto;
	
	public int NoticeWrite(NoticeDto noticeDto) {
		int result = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("NoticeWrite", noticeDto);
		sqlSession.commit();
		sqlSession.close();
		
		return result;
	}
}
