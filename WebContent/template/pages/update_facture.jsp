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
update  facture
set 
    id_commande=  '<c:out value="${param.id_commande}" />' ,
    numfacture =  '<c:out value="${param.numfacture}" />',
    client=  '<c:out value="${param.client}" />' ,
    date =  '<c:out value="${param.date}" />',
    articles=  '<c:out value="${param.articles}" />' ,
    prix =  '<c:out value="${param.prix}" />',
    paiement=  '<c:out value="${param.paiement}" />' 
    
     where id = '<c:out value="${param.id}" />'  
    
   
</sql:update>

<c:redirect url="liste-facture.jsp"/>
