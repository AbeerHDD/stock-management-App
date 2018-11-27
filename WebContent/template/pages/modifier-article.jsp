<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>  
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Modifier un Article</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- Calendar CSS -->
    <link href="../plugins/bower_components/calendar/dist/fullcalendar.css" rel="stylesheet" />
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.min.css" rel="stylesheet">
                              
    <!-- color CSS -->
    <link href="css/colors/megna.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<c:if test="${empty sessionScope.login }">
<c:redirect url="login.jsp">
</c:redirect>
</c:if>
<sql:setDataSource 
 var="source" 
 url="jdbc:mysql://localhost/stock"
 driver="com.mysql.jdbc.Driver"
	user="root" />
	<sql:query dataSource="${source}" var="list">
select * from article where id = '<c:out value="${param.id}" />' ; 
</sql:query>
<sql:query dataSource="${source }" var="list1">
select * from famille ; 
</sql:query>
	<sql:query dataSource="${source }" var="list2">
select * from sous_famille where id = '<c:out value="${param.id}" />' ;  
</sql:query>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="index.jsp"><b><img src="../plugins/images/eliteadmin-logo.png" alt="home" /></b><span class="hidden-xs"><strong>UC</strong>Management</span></a></div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                    <li>
                        <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Rechercher..." class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                  
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>
                        
                      
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="icon-note"></i>
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>
                        <ul class="dropdown-menu dropdown-tasks animated slideInUp">
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 1</strong> <span class="pull-right text-muted">40% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> <span class="sr-only">40% Complete (success)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 2</strong> <span class="pull-right text-muted">20% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> <span class="sr-only">20% Complete</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 3</strong> <span class="pull-right text-muted">60% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"> <span class="sr-only">60% Complete (warning)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 4</strong> <span class="pull-right text-muted">80% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> <span class="sr-only">80% Complete (danger)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#"> <strong>See All Tasks</strong> <i class="fa fa-angle-right"></i> </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/d1.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Utilisateur</b> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li><a href="profile.jsp"><i class="ti-user"></i>  Mon Profile</a></li>
                            
                            <li><a href="parametres-compte.jsp"><i class="ti-settings"></i>  Paramètres de Compte</a></li>
                            <li><a href="logout.jsp"><i class="fa fa-power-off"></i>  Déconnexion</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <li class="right-side-toggle"> <a class="waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <!-- input-group -->
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
            </span> </div>
                <!-- /input-group -->
            </li>
            <li class="user-pro">
                <a href="#" class="waves-effect"><img src="../plugins/images/users/d1.jpg" alt="user-img" class="img-circle"> <span class="hide-menu">Utilisateur<span class="fa arrow"></span></span>
                </a>
                <ul class="nav nav-second-level">
                    <li><a href="profile.jsp"><i class="ti-user"></i> Mon Profile</a></li>
                    
                    <li><a href="parametres-compte.jsp"><i class="ti-settings"></i>Paramètres de Compte</a></li>
                   <li><a href="logout.jsp"><i class="fa fa-power-off"></i>  Déconnexion</a></li>
                </ul>
            </li>
               <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-user"></i> <span class="hide-menu"> Utilisateurs <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-utilisateur.jsp">Liste des Utilisateurs</a> </li>
                            <li> <a href="ajout-utilisateur.jsp">Ajouter Utilisateur</a> </li>
                        </ul>
                    </li>
                   
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-truck"></i><span class="hide-menu"> Fournisseur <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-fournisseur.jsp">Liste des Fournisseur</a> </li>
                            <li> <a href="ajout-fournisseur.jsp">Ajouter Fournisseur</a> </li>
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"> <i class="fa fa-folder-open"></i> <span class="hide-menu"> Familles et Sous Familles <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-famille.jsp">Liste des Familles</a> </li>
                            <li> <a href="ajout-famille.jsp">Ajouter Familles</a> </li>
                            <li> <a href="liste-sous-famille.jsp">Liste de Sous Familles</a> </li>
                            <li> <a href="ajout-sous-famille.jsp">Ajouter Sous Familles</a> </li>
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-group"></i> <span class="hide-menu"> Clients <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-client.jsp">Liste des Clients</a> </li>
                            <li> <a href="ajout-client.jsp">Ajouter Clients</a> </li>
                            
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tags"></i><span class="hide-menu"> Articles <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-article.jsp">Liste des Articles</a></li>
                            <li> <a href="ajout-article.jsp">Ajouter Articles</a></li>
                            <li> 
                        </ul>
                    </li>
                      <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-shopping-cart"></i><span class="hide-menu"> Ventes <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                           
                            <li> <a href="javascript:void(0);" class="waves-effect"><span class="hide-menu"> Devis<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-third-level">
                           <li> <a href="liste-devis.jsp">Liste des Devis</a></li>
                            <li> <a href="ajout-devis.jsp">Ajouter Devis</a></li> 
                        </ul>
                    </li>
                           <li> <a href="javascript:void(0);" class="waves-effect"><span class="hide-menu"> Commandes<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-third-level">
                           <li> <a href="liste-commandes.jsp">Liste des Commandes</a></li>
                            <li> <a href="ajout-commandes.jsp">Ajouter Commande</a></li> 
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><span class="hide-menu"> Facturation<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-third-level">
                           <li> <a href="liste-facture.jsp">Liste des Factures</a></li>
                            <li> <a href="ajout-facture.jsp">Ajouter Facture</a></li> 
                        </ul>
                    </li> 
                            
                        </ul>
                    </li>
    </div>
</div>

        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Modifier un Article</h4> </div>
                    
                    <!-- /.col-lg-12 -->
                </div>
                
                   <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title m-b-0">Modifier un Article</h3>
                           
                            <div class="row">
                                <div class="col-sm-12 col-xs-12">
                                
                                 <c:forEach var="article" items="${list.rows}">
                                 
                               <form class="form-horizontal form-material" id="loginform" action="update_article.jsp" method="POST">
                 <input class="form-control" type="hidden" name="id" value="${article.id}">
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                         <label>Désignation :</label> 
                           <input class="form-control" type="text" name="designation" value="<c:out value="${article.designation}"/>"  placeholder="Désignation"> </div>
                    </div>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                           <label>Libillé :</label>
                            <input class="form-control" type="text" name="libille" value="<c:out value="${article.libille}" />" placeholder="Libillé"> </div>
                    </div>
                     <div class="form-label-group">
                    <label>Unité :</label>
                    <select class="form-control" name="unite" >
                    
   <option>Unité</option>                 
  <option value="<c:out value="${article.unite}" />">cm3 </option>
  <option  value="<c:out value="${article.unite}" />">kg</option>
  <option  value="<c:out value="${article.unite}" />">mètre</option>
  <option  value="<c:out value="${article.unite}" />">nombre</option>
  <option  value="<c:out value="${article.unite}" />">paquet</option>
  <option  value="<c:out value="${article.unite}" />">litre</option>
  <option  value="<c:out value="${article.unite}" />">sans unité</option>
</select>
                  </div>
                  <p></p>
                  <div class="form-group m-t-20">
                        <div class="col-xs-12">
                           <label>Prix :</label>
                            <input class="form-control" type="number" name="prix" placeholder="Quantité"> </div>
                    </div>
                  <div class="form-group m-t-20">
                        <div class="col-xs-12">
                           <label>Quantité :</label>
                            <input class="form-control" type="number" name="quantite" placeholder="Quantité"> </div>
                    </div>
                   <div class="form-label-group">
                  <label>Famille :</label>
                    <select class="form-control" name="famille">
                  <c:forEach var="famille" items="${list1.rows}">
                     
                    
  <option value="<c:out value="${famille.nom_famille}" />"><c:out value="${famille.nom_famille}" />  </option> 
 </c:forEach> 
 
</select>
                  </div>
                  <p></p>
                   <div class="form-label-group">
                   <label>Sous Famille :</label>
                    <select class="form-control" name="sous_famille">
     <option>Sous Famille</option>                 
 <c:forEach var="sous_famille" items="${list2.rows}">
                     
                    
  <option value="<c:out value="${sous_famille.nom_sous_famille}" />"><c:out value="${sous_famille.nom_sous_famille}" />  </option> 
 </c:forEach> 
</select>
                  </div>
                  <p></p>
                    
                   
                    
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                      
                                <a href="index.jsp"><button type="submit" class="btn btn-inverse waves-effect waves-light">Annuler</button></a>
                                <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Modifier</button>
                        </div>
                    </div>
                    
                </form> 
                        </c:forEach>        
                       </div>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                
      <div class="right-sidebar">
                    <div class="slimscrollright">
                        <div class="rpanel-title"> Panneau de Service <span><i class="ti-close right-side-toggle"></i></span> </div>
                        <div class="r-panel-body">
                            <ul>
                                <li><b>Mise en Page</b></li>
                                <li>
                                    <div class="checkbox checkbox-info">
                                        <input id="checkbox1" type="checkbox" class="fxhdr">
                                        <label for="checkbox1"> Fixer l'en-tête</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox checkbox-warning">
                                        <input id="checkbox2" type="checkbox" checked="" class="fxsdr">
                                        <label for="checkbox2"> Fixer la barre latérale </label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox checkbox-success">
                                        <input id="checkbox4" type="checkbox" class="open-close">
                                        <label for="checkbox4"> Basculer la barre latérale </label>
                                    </div>
                                </li>
                            </ul>
                            <ul id="themecolors" class="m-t-20">
                                <li><b>Avec barre latérale léger</b></li>
                                <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                                <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme working">6</a></li>
                                <li class="d-block m-t-30"><b>Avec barre latérale  sombre</b></li>
                              
                              
                                <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                                <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme">12</a></li>
                            </ul>
                          
                        </div>
                    </div>
                </div>
                <!-- /.right-sidebar -->
            </div>
            <!-- /.container-fluid -->
           
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/tether.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <!-- Calendar JavaScript -->
    <script src="../plugins/bower_components/calendar/jquery-ui.min.js"></script>
    <script src="../plugins/bower_components/moment/moment.js"></script>
    <script src='../plugins/bower_components/calendar/dist/fullcalendar.min.js'></script>
    <script src="../plugins/bower_components/calendar/dist/jquery.fullcalendar.js"></script>
    <script src="../plugins/bower_components/calendar/dist/cal-init.js"></script>
    <!--Style Switcher -->
<script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>