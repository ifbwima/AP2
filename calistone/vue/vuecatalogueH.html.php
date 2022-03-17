<div class="row justify-content-around px-1 py-2">
    <?php
    $i=0;
    while($ret[$i]){?>
            <div class="card bg-light" style="width: 14rem;">
                <img src="./photos/heros/<?= $ret[$i]->getchemin()?>.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?= $ret[$i]->getnom() ?></h5>
                    <p class="card-text"><?= $ret[$i]->gethp() ?></p>
                </div>
            </div>
        
        <?php
        $i++; ?>
        
    <?php }?>
</div>