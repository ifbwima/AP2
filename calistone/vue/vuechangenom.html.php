<center>
    <form action="./?action=change" method="POST">

        <br><?php if($message){
            print $message;
        }?><br><br>

        <input type="text" name="mail" placeholder="entrez votre mail" /><br /><br />
        <input type="text" name="nom" placeholder="nouveu nom" /><br /><br />
        <input type="text" name="prenom" placeholder="nouveau prenom"  /><br /><br />

        <input type="submit" /><br />

    </form> 
</center>