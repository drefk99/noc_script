<?php

$Archivo='intento2.xml';
 
    if (file_exists($Archivo)) 
           {
       $xml = simplexml_load_file($Archivo);
       $f = fopen('convertido.csv', 'w');
       createCsv($xml, $f);
       fclose($f);
    }
 
    function createCsv($xml,$f)
    {
 
        foreach ($xml->children() as $item) 
        {
 
           $hasChild = (count($item->children()) > 0)?true:false;
 
        if( ! $hasChild)
        {
           $put_arr = array($item->getName(),$item); 
           fputcsv($f, $put_arr ,',','"');
 
        }
        else
        {
         createCsv($item, $f);
        }
     }
 
    }

?>
