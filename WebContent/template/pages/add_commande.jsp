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
insert into commande(id_devis,numcommande,client,date,notes) values('<c:out value="${param.id_devis}" />','<c:out value="${param.numcommande}"/>','<c:out value="${param.client}"/>','<c:out value="${param.date}"/>','<c:out value="${param.notes}"/>')
</sql:update>
 <c:redirect url="liste-commandes.jsp"/>
<%-- <c:if test="${param.b}" > --%>
<%-- <c:redirect url="show_livre.jsp"/> --%>
<%-- </c:if> --%>
<%-- <c:if test="${param.a}"> --%>
<%-- <c:redirect url="ajouter_livre.jsp"/> --%>
<%-- </c:if> --%>