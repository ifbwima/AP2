        <div class="container-fluid">
            <div class="row flex-nowrap">
                <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-light">
                    <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-dark min-vh-100">
                        <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-secondary text-decoration-none">
                            <!-- debut de la side bar pour filtrer les serviteurs du catalogue-->
                            <span class="fs-5 d-none d-sm-inline">Filtre</span>
                        </a>
                        <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">

                            <li class="nav-item">
                                <a href="./?filtre=defaut" class="nav-link align-middle px-0 text-dark">
                                    <span class="ms-1 d-none d-sm-inline">Par défaut</span>
                                </a>
                            </li>

                            <li>
                                <a href="./?filtre=taverne" class="nav-link px-0 align-middle text-dark">
                                    <span class="ms-1 d-none d-sm-inline">Par niveau de taverne</span> 
                                </a>
                            </li>

                            <li>
                                <a href="./?filtre=pv" class="nav-link px-0 align-middle text-dark">
                                    <span class="ms-1 d-none d-sm-inline">Par pv</span>
                                </a>
                            </li>

                            <li>
                                <a href="./?filtre=attaque" class="nav-link px-0 align-middle text-dark">
                                    <span class="ms-1 d-none d-sm-inline">Par attaque</span>
                                </a>
                            </li>

                            <li>
                                <a href="./?filtre=espece" class="nav-link px-0 align-middle text-dark">
                                    <span class="ms-1 d-none d-sm-inline">Par espece</span> 
                                </a>
                            </li>

                            <?php if(isLoggedOn()){?>
                                <!-- si l'utilisateur est connecter il a le droit de voir les serviteurs populaires-->
                                <li>
                                    <a href="./?filtre=aimer" class="nav-link px-0 align-middle text-dark">
                                        <span class="ms-1 d-none d-sm-inline">Les serviteurs populaires</span> 
                                    </a>
                                </li>
                            <?php } ?>
                        </ul>
                        <hr>
                    </div>
                </div>
                <div class="col py-3">
                <!-- ici l'endroit ou sont afficher les serviteurs -->
                    <?php $i=0;
                    while($ret[$i]){   
                    ?>
                        <html>
                            <?php if(isLoggedOn()){ ?>
                                <!-- si l'utilisateur est connecter il a le droit d'aimer des serviteurs-->
                                <a href=<?php echo "./?action=catalogue&aimer=".$ret[$i]->getnom() ?>>
                            <?php } ?>
                            <img src="./photos/serviteurs/<?= $ret[$i]->getchemin()?>.png" width="240"/>
                            </a>
                        </html>
                
                    <?php $i++;
                    }?>
                    <!--fin de la side bar-->
                </div>
            </div>
        </div>




