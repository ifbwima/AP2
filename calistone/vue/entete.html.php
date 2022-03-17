
<html>
	<head>
		<!-- Base -->
		<meta charset='UTF-8'>
    	<meta name='viewport' content='width=device-width, initial-scale=1'>
    	<title>Calistone-Catalogue Hearthstone</title>


    	<!-- Adding Bootstrap -->
    	<link href='./css/bootstrap.min.css' rel='stylesheet'>
    	<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css'>
    	<script src="https://code.jquery.com/jquery.js"></script>
		<script type="text/javascript" src="./js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	</head>
	<body>
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<!--debut de la navbar avec le logo et le nom Calistone-->
				<img src="./images/logo.png" width="40"/>
				<a class="navbar-brand" href="./?action=defaut">Calistone</a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
						<li class="nav-item">
							<a class="nav-link <?= $_GET['action'] == 'defaut' ? 'active' : '' ?>" aria-current="page" href="./?action=defaut">Accueil</a>
						</li>

						<li class="nav-item">
							<a class="nav-link <?= $_GET['action'] == 'actualite' ? 'active' : '' ?>" aria-current="page" href="./?action=actualite">Actualité</a>
						</li>

						<li class="nav-item">
							<a class="nav-link <?= $_GET['action'] == 'catalogue' ? 'active' : '' ?>" aria-current="page" href="./?action=catalogue">Catalogue</a>
						</li>

						<li class="nav-item">
							<a class="nav-link <?= $_GET['action'] == 'catalogueH' ? 'active' : '' ?>" aria-current="page" href="./?action=catalogueH">Catalogue Héros</a>
						</li>

						<?php if(isLoggedOn()){ ?>
							<!--on affiche le profil si l'utilisateur est connecté-->
							<li class="nav-item">
								<a class="nav-link <?= $_GET['action'] == 'connexion' ? 'active' : '' ?>" aria-current="page" href="./?action=connexion">Profil</a>
							</li>
						<?php }else{ ?>
							<li class="nav-item">
								<a class="nav-link <?= $_GET['action'] == 'connexion' ? 'active' : '' ?>" aria-current="page" href="./?action=connexion">Connexion</a>
							</li>
						<?php } ?>

					</ul>
					
						<?php if($action=='catalogue' && isLoggedOn()){?>
							<!-- si l'utilisateur est connecté alors il a acces a la barre de recherche dans l'onglet catalogue-->
							<form action="./?action=catalogue" method="POST" class="d-flex">
								<input class="form-control me-2" name='nomP' type="search" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">rechercher</button>
							</form>
						<?php } ?>
						<!--fin de la navbar-->
				</div>
			</div>
		</nav>