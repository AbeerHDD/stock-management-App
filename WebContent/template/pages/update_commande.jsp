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
update  commande
set 
    id_devis=  '<c:out value="${param.id_devis}" />' ,
    numcommande =  '<c:out value="${param.numcommande}" />',
    client=  '<c:out value="${param.client}" />' ,
    date =  '<c:out value="${param.date}" />',
    notes=  '<c:out value="${param.notes}" />' 
    
    
     where id = '<c:out value="${param.id}" />'  
    
   
</sql:update>

<c:redirect url="liste-commandes.jsp"/>
