<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "java.util.List" %>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import= "com.javaex.dao.PhoneDao" %>


<%
	//get 방식 --> http://localhost:8088/phonebook1/insert.jsp?name=표이슬&hp=010-1111-1111&company=02-2222-2222
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	
	/*저장*/
	phoneDao.personInsert(personVo);
	
	/*
	리스트 --> list.jsp 에서 작업하고 있기 때문에 필요없음 
	List<PersonVo> personList = phoneDao.getPersonList();
	*/
	
	//주소를 심어둠-- 중요 --> 다시 리스트.jsp로 돌아감
	//response.sendRedirect("./list.jsp");
%>

