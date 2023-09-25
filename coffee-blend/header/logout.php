<?php 

session_start();

?>


<?php

    unset($_SESSION['userName']);
    unset($_SESSION['userId']);
    
    session_destroy();

    header("location:../login.php");


?>