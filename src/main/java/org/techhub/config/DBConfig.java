package org.techhub.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@ComponentScan(basePackages = {"org.techhub"})
public class DBConfig {

	public DriverManagerDataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUsername("root");
		dataSource.setPassword("7007");
		dataSource.setUrl("jdbc:mysql://localhost:3306/onlinecomplainttrackingsystem");
		return dataSource;
	}
	@Bean(name = "jdbcTemplate")
	public JdbcTemplate getTemplate() {
		return new JdbcTemplate(this.getDataSource());
	}
}
