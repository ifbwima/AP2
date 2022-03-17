        <center>
            <br>
            <div class="card" style="width: 20rem;">
                <div class="card-body bg-light">
                    <h5 class="card-title">Mon Profil</h5>
                    <p class="card-text">
                        <a>Nom: <?= $user->getnom() ?></a><br/>
                        <a>Prenom: <?= $user->getprenom() ?></a><br/>
                        <a>Mail: <?= $user->getmail() ?></a><br/><br/>    
                        <a href="./?change=oui&action=change">cliquez ici pour changer de nom</a><br/>
                        <a href="./?deco=oui&action=connexion">deconnexion</a><br/>
                    </p>
                </div>
            </div>
                                                                                                                                                                                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </center>