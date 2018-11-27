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
    <title>Liste des Clients</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">
    <link href="../plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
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

<body class="fix-sidebar">
<c:if test="${empty sessionScope.login }">
<c:redirect url="login.jsp">
</c:redirect>
</c:if>
<sql:setDataSource var="source" 
	url="jdbc:mysql://localhost/stock"
	driver="com.mysql.jdbc.Driver" 
	user="root" />
	<sql:query dataSource="${source }" var="list">
select * from client ; 
</sql:query>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Top Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="index.html"><b><img src="../plugins/images/eliteadmin-logo.png" alt="home" /></b><span class="hidden-xs"><strong>UC</strong>Management</span></a></div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                    <li>
                        <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Rechercher..." class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                   
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
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/d1.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Utilisateur</b> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li><a href="profile.jsp"><i class="ti-user"></i>  Mon Profile</a></li>
                            
                            <li><a href="parametres-compte.jsp"><i class="ti-settings"></i>  Paramètres de Compte</a></li>
                            <li><a href="logout.jsp"><i class="fa fa-power-off"></i>  Déconnexion</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                    <!-- .Megamenu -->
                   
                    <li class="right-side-toggle"> <a class="waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- Left navbar-header -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse slimscrollsidebar">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                        <!-- input-group -->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Rechercher..."> <span class="input-group-btn">
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
                        <h4 class="page-title">Liste des Clients</h4> </div>
                    
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                 
                <div class="col-sm-1"></div>
                 <div class="col-sm-10">
                        <div class="white-box">
                            
                            <div class="table-responsive">
                                <table id="example23" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Nom</th>
                                            <th>Prénom</th>
                                              <th>Mtricule Fiscale</th>
                                            <th>Téléphone</th>
                                            <th>Email</th>
                                            <th>Action</th>
                                            
                                       </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                             <th>Nom</th>
                                            <th>Prénom</th>
                                              <th>Matricule Fiscale</th>
                                            <th>Téléphone</th>
                                            <th>Email</th>
                                            <th>Action</th>
                                           
                                            
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            
                                   <c:forEach var="client" items="${list.rows}">
					<tr>
						<td><c:out value="${client.nom}" /></td>
						<td><c:out value="${client.prenom}" /></td>
						<td><c:out value="${client.matricule_fiscale}" /></td>
						<td><c:out value="${client.telephone}" /></td>
						<td><c:out value="${client.email}" /></td>
						
						<td>
						<c:url value="/template/pages/detail-client.jsp" var="update_url">
								<c:param name="id" value="${client.id}" />
						</c:url> 
							<a href="<c:out value="${update_url}" />" >
							<button class="btn btn-info"  type="submit"data-toggle="tooltip" data-placement="top" title="Détails"><i class="fa fa-info"></i></button>
                             
									</a>
						
						<c:url value="/template/pages/modifier-client.jsp" var="update_url">
								<c:param name="id" value="${client.id}" />
						</c:url> 
							<a href="<c:out value="${update_url}" />" >
							<button type="submit" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Modifier"><i class="fa fa-edit"></i></button>
                             
									</a>
						
						<c:url value="/template/pages/delete_client.jsp" var="delete_url">
								<c:param name="id" value="${client.id}" />
						</c:url> 
							<a href="<c:out value="${delete_url}" />" >
									<button class="btn btn-danger"  type="submit"data-toggle="tooltip" data-placement="top" title="Supprimer"><i class="fa fa-trash"></i></button>
                                
									</a>
						</td>
					</tr>
				</c:forEach>         
                      </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .right-sidebar -->
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
    <script src="../plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
    <!-- start - This is for export functionality only -->
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
            $(document).ready(function () {
                var table = $('#example').DataTable({
                    "columnDefs": [
                        {
                            "visible": false
                            , "targets": 2
                        }
          ]
                    , "order": [[2, 'asc']]
                    , "displayLength": 25
                    , "drawCallback": function (settings) {
                        var api = this.api();
                        var rows = api.rows({
                            page: 'current'
                        }).nodes();
                        var last = null;
                        api.column(2, {
                            page: 'current'
                        }).data().each(function (group, i) {
                            if (last !== group) {
                                $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                                last = group;
                            }
                        });
                    }
                });
                // Order by the grouping
                $('#example tbody').on('click', 'tr.group', function () {
                    var currentOrder = table.order()[0];
                    if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                        table.order([2, 'desc']).draw();
                    }
                    else {
                        table.order([2, 'asc']).draw();
                    }
                });
            });
        });
        $('#example23').DataTable({
            dom: 'Bfrtip'
            , buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
        });
    </script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>