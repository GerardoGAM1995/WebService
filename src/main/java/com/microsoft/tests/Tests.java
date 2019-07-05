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
	@Qualifier("informix")
	JdbcTemplate jdbcTemplateIfx;
	
	@Autowired
	@Qualifier("atenea")
	JdbcTemplate jdbcTemplateAtn;
	
	@Autowired
	@Qualifier("apolo")
	JdbcTemplate jdbcTemplateApl;
	
	@GetMapping("/ifx")
	public String ifx() 
	{
		String sql = "select * from item_digital_esd";
		SqlRowSet rs = jdbcTemplateIfx.queryForRowSet(sql);
		while(rs.next())
		{
			System.out.println("es:"+rs.getString("item_num"));
		}
		return "ifx";
	}
	
	@GetMapping("/atn")
	public String atn() 
	{
		String sql = "select * from mensajesCredito;";
		SqlRowSet rs = jdbcTemplateAtn.queryForRowSet(sql);
		while(rs.next())
		{
			System.out.println("es:"+rs.getString("mensaje"));
		}
		return "atn";
	}
	
	@GetMapping("/apl")
	public String apl() 
	{
		String sql = "select * from mensajero;";
		SqlRowSet rs = jdbcTemplateApl.queryForRowSet(sql);
		while(rs.next())
		{
			System.out.println("es:"+rs.getString("nombre"));
		}
		return "apl";
	}
}
