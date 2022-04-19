package com.simmons.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@ComponentScan("com.simmons.model")
@MapperScan("com.simmons.mybatis")
public class RootAppContext {

	// Hikari : Database�� Connection Pool �뿰寃�
	@Bean
	public DataSource dataSource() {
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:xe");
		hikariConfig.setUsername("TIS002");
		hikariConfig.setPassword("1234");
		
		HikariDataSource dataSource = new HikariDataSource(hikariConfig);
		
		return dataSource;
	}

	// mybatis 留ㅽ븨(SQL 留ㅽ븨)
	@Bean
	public SqlSessionFactory sqlSesionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource);
		PathMatchingResourcePatternResolver pathResolver = new PathMatchingResourcePatternResolver();
		sqlSessionFactoryBean.setConfigLocation(pathResolver.getResource("classpath:com/simmons/mybatis/config.xml"));
		sqlSessionFactoryBean.setMapperLocations(pathResolver.getResources("classpath:com/simmons/mybatis/*Mapper.xml"));
		
		return (SqlSessionFactory)sqlSessionFactoryBean.getObject();
	}
	
	// �듃�옖�옲�뀡 : �뿬�윭媛�吏� �씪�쓣 �븳踰덉뿉 泥섎━(�넚湲� : 異쒓툑 - �엯湲�)
	@Bean
	public PlatformTransactionManager transactionManager() {
		return new DataSourceTransactionManager(dataSource());
	}
}
