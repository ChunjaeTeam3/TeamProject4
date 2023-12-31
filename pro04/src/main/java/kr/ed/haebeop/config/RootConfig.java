package kr.ed.haebeop.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

// applicationContext.xml을 대신하는 RootConfig.java : kr.ed.haebeop.config
@Configuration
@ComponentScan(basePackages = {"kr.ed.haebeop.service", "kr.ed.haebeop.persistence"})
@MapperScan(basePackages = {"kr.ed.haebeop.persistence"})       // MyBatis-Spring
public class RootConfig {

    @Autowired
    private ApplicationContext applicationContext;

    @Bean
    public SqlSessionTemplate sqlSessionTemplate() throws Exception {
        return new SqlSessionTemplate((SqlSessionFactory) sqlSessionFactoryBean());
    }

    @Bean
    public SqlSessionFactory sqlSessionFactoryBean() throws Exception {         // SqlFactory 설정
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        sqlSessionFactory.setConfigLocation(applicationContext.getResource("classpath:/mybatis-config.xml"));
        sqlSessionFactory.setMapperLocations(applicationContext.getResources("classpath*:/mappers/**/*Mapper.xml"));
        sqlSessionFactory.setDataSource(dataSource());
        return (SqlSessionFactory) sqlSessionFactory.getObject();
    }

    @Bean
    public DataSourceTransactionManager transactionManager() {      // 트랜잭션 설정
        DataSourceTransactionManager transaction = new DataSourceTransactionManager();
        transaction.setDataSource(dataSource());
        return transaction;
    }

    @Bean
    public BasicDataSource dataSource() {                           // 데이터베이스 설정
        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName("org.mariadb.jdbc.Driver");
//        basicDataSource.setUrl("jdbc:mariadb://localhost:3306/team34");
//        basicDataSource.setUsername("root");
//        basicDataSource.setPassword("1234");
        basicDataSource.setUrl("jdbc:mariadb://10.41.1.198:3306/team34");
        basicDataSource.setUsername("team34");
        basicDataSource.setPassword("bobo34");
        return basicDataSource;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {           // 멀티파트 파일 업로드 설정
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
        commonsMultipartResolver.setMaxUploadSize(100000000);
        commonsMultipartResolver.setMaxInMemorySize(100000000);
        return commonsMultipartResolver;
    }
}
