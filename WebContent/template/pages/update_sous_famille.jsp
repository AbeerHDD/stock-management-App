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
<sql:update dataSource="${source }">
update  sous_famille
set 
    nom_sous_famille=  '<c:out value="${param.nom_sous_famille}" />' ,
    tva =  '<c:out value="${param.tva}" />'  ,
    description=  '<c:out value="${param.description}" />'
     where id = '<c:out value="${param.id}" />'
    
   
</sql:update>

<c:redirect url="liste-sous-famille.jsp"/>
