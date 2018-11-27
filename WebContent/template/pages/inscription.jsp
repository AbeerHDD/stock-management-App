<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Elite Hospital Admin Template - Hospital admin dashboard web app kit</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Wizard CSS -->
    <link href="../plugins/bower_components/register-steps/steps.css" rel="stylesheet">
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
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="step-register">
        <div class="register-box">
            <div class="">
                
                <form class="form-material form-horizontal" action="add_user.jsp" method="POST">
                         
                <h5 class="box-title m-t-40 m-b-0">Créer votre compte</h5>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" name="nom" placeholder="Nom"> </div>
                    </div>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" name="prenom" placeholder="Prénom"> </div>
                    </div>
                    
                <div class="form-group m-t-20">
                        <div class="col-xs-12">    
                    <select class="form-control" name="sexe">
  <option >Sexe</option>
  <option value="homme">Homme</option>
  <option value="femme">Femme</option>
  
</select>

</div>
</div>
<p></p>
<div class="form-group m-t-20">
                        <div class="col-xs-12">
<select class="form-control" name="poste">
  <option>Poste</option>
  <option  value="Administrateur">Administrateur</option>
  <option  value="Caissier">Caissier</option>
  
</select>
          
           </div>
           </div>
                    

                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <input class="form-control" type="tel" name="telephone" placeholder="Téléphone"> </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" name="email" placeholder="Email"> </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" name="motdepasse" placeholder="Mot de Passe"> </div>
                    </div>
  
                <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                      
                              <a href="index.jsp"><button type="submit" class="btn btn-inverse waves-effect waves-light">Annuler</button></a> 
                                <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Ajouter</button>
                        </div>
                    </div>
                    
                
                            </form>
                <div class="clear"></div>
            </div>
        </div>
    </section>
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/tether.min.js"></script>
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <script src="../plugins/bower_components/register-steps/jquery.easing.min.js"></script>
    <script src="../plugins/bower_components/register-steps/register-init.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>