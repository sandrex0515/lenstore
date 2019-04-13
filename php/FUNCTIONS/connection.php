<?php
$con = pg_connect("host=localhost dbname=lenstore user=sandrex password=user123456");
if(!$con){
    echo '
        <center>
        <h1 style="margin-top:10%;">
        DATABASE CONNECTION FAILED 
        </h1>
        <div>
            404 error
        </div>
        </center>
    ';
    error_reporting(0);
}


?>