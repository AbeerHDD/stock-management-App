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
insert into fournisseur(code,raison_sociale,responsable,matricule_fiscale,telephone,fax,email,adresse,ville,code_postal,paiement) values('<c:out value="${param.code}" />','<c:out value="${param.raison_sociale}"/>','<c:out value="${param.responsable}"/>','<c:out value="${param.matricule_fiscale}"/>','<c:out value="${param.telephone}"/>','<c:out value="${param.fax}"/>','<c:out value="${param.email}"/>','<c:out value="${param.adresse}"/>','<c:out value="${param.ville}"/>','<c:out value="${param.code_postal}"/>','<c:out value="${param.paiement}"/>')
</sql:update>
 <c:redirect url="liste-fournisseur.jsp"/>
<%-- <c:if test="${param.b}" > --%>
<%-- <c:redirect url="show_livre.jsp"/> --%>
<%-- </c:if> --%>
<%-- <c:if test="${param.a}"> --%>
<%-- <c:redirect url="ajouter_livre.jsp"/> --%>
<%-- </c:if> --%>