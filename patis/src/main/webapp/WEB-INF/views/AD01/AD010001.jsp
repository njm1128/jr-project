<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>ADMIN CONTENT</h1>
<%
	out.println(session.getAttribute("loginId"));
	out.println(session.getAttribute("loginName"));
	out.println(session.getAttribute("loginRight"));
%>
