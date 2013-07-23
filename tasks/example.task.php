<?php 

 $console
    ->register('setup:demo')
    ->setDescription('Sets up the data')
    ->setDefinition(array(
            
    ))
    ->setCode(function ( $input,  $output) use($console) {
    	$data = COMPOSER_ROOT.'/data/data.sql';
    	$console->runCommand("site:init --database-dump=$data --drop-database");
    })
    ;

?>