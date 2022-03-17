        <div class="row justify-content-around p-3">
            <?php $i=0;
            while($ret[$i]){?>
                    <div class="card col-md-3" style="width: 35rem;">
                        <div class="card-body bg-light">
                            <h5 class="card-title"><?= $ret[$i]->gettitre() ?></h5>
                            <p class="card-text"><?= $ret[$i]->getnote() ?></p>
                        </div>
                    </div>
                <?php
                $i++; ?>
                
            <?php }?>
        </div>