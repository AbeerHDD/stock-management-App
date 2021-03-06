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
update  fournisseur
set 
    code=  '<c:out value="${param.code}" />' ,
    raison_sociale=  '<c:out value="${param.raison_sociale}" />'  ,
    responsable=  '<c:out value="${param.responsable}" />',
      matricule_fiscale=  '<c:out value="${param.matricule_fiscale}" />'  ,
        telephone=  '<c:out value="${param.telephone}" />'  ,
          fax=  '<c:out value="${param.fax}" />'  ,
          email=  '<c:out value="${param.email}" />'  ,
              adresse=  '<c:out value="${param.adresse}" />'  ,
               ville=  '<c:out value="${param.ville}" />'  ,
                  code_postal=  '<c:out value="${param.code_postal}" />'  ,
                    paiement=  '<c:out value="${param.paiement}" />'  
                       where id = '<c:out value="${param.id}" />'
  
</sql:update>

<c:redirect url="liste-fournisseur.jsp"/>