<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<sql:setDataSource 
 var="source" 
 url="jdbc:mysql://localhost/stock"
 driver="com.mysql.jdbc.Driver"
	user="root" />
<sql:query var="res" dataSource="${source}">
select* from utilisateur where email='<c:out value="${param.email}"/>'and motdepasse='<c:out value="${param.motdepasse}" />'
</sql:query>

 <c:if test="${res.rowCount eq 1}">
 <c:set var="login" value="$param.email" scope="session">
 </c:set>
<c:redirect url="index.jsp">
 </c:redirect>
 </c:if>
 
 <c:set var="msg" value="Login ou Mot de passe incorrects" scope="session"/>
 
<c:redirect url="login.jsp">login.jsp</c:redirect>


   