<?php 

 $console
    ->register('setup:demo')
    ->setDescription('Sets up the data')
    ->setDefinition(array(
            
    ))
    ->setCode(function ( $input,  $output) use($console) {
    	$data = COMPOSER_ROOT.'/data/data.sql';
    	$console->runCommand("site:init --database-dump=$data --drop-database --database-prefix=demo");
    	passthru("php anahita package:install connect photos topics pages todos html demo/demo");    	
    	passthru("php anahita site:config --new-secret");    	    	
    })
    ;

?>