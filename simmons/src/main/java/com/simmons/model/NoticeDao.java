package com.simmons.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NoticeDao {
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	public int NoticeWrite(NoticeDto noticeDto) {
		int result = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("NoticeWrite", noticeDto);
		sqlSession.commit();
		sqlSession.close();
		
		return result;
	}

	public List<NoticeDto> NoticeAllList() {
		List<NoticeDto> noticeList = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		noticeList = sqlSession.selectList("NoticeAllList");
		sqlSession.close();
		
		return noticeList;
	}

	public NoticeDto NoticeSelectOne(int no) {
		NoticeDto noticeDto = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		noticeDto = sqlSession.selectOne("NoticeSelectOne", no);
		sqlSession.close();
		
		return noticeDto;
	}
}
