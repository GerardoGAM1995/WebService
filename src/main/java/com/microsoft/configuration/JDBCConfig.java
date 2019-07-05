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
	
	@Bean("datasource-ifx")
	public JdbcTemplate informixJDBCTemplate(@Qualifier("informix") DataSource dataSource){
        return new JdbcTemplate(dataSource);
    }

    @Bean("datasource-atn")
    public JdbcTemplate ateneaJDBCTemplate(@Qualifier("atenea") DataSource dataSource){
        return new JdbcTemplate(dataSource);
    }

    @Bean("informix")
    @ConfigurationProperties(prefix="spring.datasource")
    public DataSource informixDataSource() {
    	return DataSourceBuilder.create().build();
    }

    @Bean("atenea")
    @ConfigurationProperties(prefix="spring.atenea")
    public DataSource ateneaDataSource() {
    	return DataSourceBuilder.create().build();
    }

}
