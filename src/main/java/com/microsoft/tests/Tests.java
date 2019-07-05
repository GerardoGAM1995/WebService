package com.microsoft.tests;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Tests {
	
	@Autowired
	@Qualifier("datasource-ifx")
	JdbcTemplate jdbcTemplateIfx;
	
	@GetMapping("/Tests")
	public String tests() 
	{
		String sql = "select * from item_digital_esd";
		SqlRowSet rs = jdbcTemplateIfx.queryForRowSet(sql);
		while(rs.next())
		{
			System.out.println("es:"+rs.getString("item_num"));
		}
		return "hey";
	}
}
