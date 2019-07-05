package com.microsoft.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
public class JDBCConfig {
	
	@Bean("informix")
	public JdbcTemplate informixJDBCTemplate(@Qualifier("informix-ds") DataSource dataSource){
        return new JdbcTemplate(dataSource);
    }

    @Bean("atenea")
    public JdbcTemplate ateneaJDBCTemplate(@Qualifier("atenea-ds") DataSource dataSource){
        return new JdbcTemplate(dataSource);
    }

    @Bean("apolo")
    public JdbcTemplate apoloJDBCTemplate(@Qualifier("apolo-ds") DataSource dataSource){
        return new JdbcTemplate(dataSource);
    }

    @Bean("informix-ds")
    @ConfigurationProperties(prefix="spring.datasource")
    public DataSource informixDataSource() {
    	return DataSourceBuilder.create().build();
    }

    @Bean("atenea-ds")
    @ConfigurationProperties(prefix="spring.atenea")
    public DataSource ateneaDataSource() {
    	return DataSourceBuilder.create().build();
    }

    @Bean("apolo-ds")
    @ConfigurationProperties(prefix="spring.apolo")
    public DataSource apoloDataSource() {
    	return DataSourceBuilder.create().build();
    }

}
