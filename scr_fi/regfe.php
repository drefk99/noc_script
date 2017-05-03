<!doctype html>
   <html>
    <head>
      <meta charset="utf-8">
      <title>Sistema NOC-Acatlán</title>
      <link href="css/estilo.css" rel="stylesheet" type="text/css">
    </head>

    <body>   
      <div class="group">
      <h2><em>Sistema NOC-Acatlán</em></h2>

            <nav>
               <ul>
                  <li><a href="index.php"> Inicio</a> </li>
            
                  <li><a href="acuser.php"> Usuarios</a> </li>

                  <li><a href="acafec.php"> Registros</a> </li>
                  
                  <li><a href="acahelp.php"> Ayuda</a> </li>  

               </ul>
            </nav>

            <section>


            <?php


                  $subs_ins1 = utf8_decode($_POST['insc1']);
                  $subs_ins2 = utf8_decode($_POST['insc2']);

                  $subs_ido1 = utf8_decode($_POST['ins_ido1']);
                  $subs_ido2 = utf8_decode($_POST['ins_ido2']);

                  $subs_fin1 = utf8_decode($_POST['fin1']);
                  $subs_fin2 = utf8_decode($_POST['fin2']);

                  $subs_ext1 = utf8_decode($_POST['extr1']);
                  $subs_ext2 = utf8_decode($_POST['extr2']);

                  
                  $filei1 =  fopen("ins1.txt","w+");
                     fwrite($filei1, "$subs_ins1" . PHP_EOL);
                  fclose($filei1);

                  $filei2 =  fopen("ins2.txt","w+");
                     fwrite($filei2, "$subs_ins2" . PHP_EOL);
                  fclose($filei2);

                  $filed1 =  fopen("ido1.txt","w+");
                     fwrite($filed1, "$subs_ido1" . PHP_EOL);
                  fclose($filed1);

                  $filed2 =  fopen("ido2.txt","w+");
                     fwrite($filed2, "$subs_ido2" . PHP_EOL);
                  fclose($filed2);

                  $filef1 =  fopen("fin1.txt","w+");
                     fwrite($filef1, "$subs_fin1" . PHP_EOL);
                  fclose($filf1);

                  $filef2 =  fopen("fin2.txt","w+");
                     fwrite($fileef, "$subs_fin2" . PHP_EOL);
                  fclose($filef2);

                  $filee1 =  fopen("ext1.txt","w+");
                     fwrite($filee1, "$subs_ext1" . PHP_EOL);
                  fclose($filee1);

                  $filee2 =  fopen("ext2.txt","w+");
                     fwrite($filee2, "$subs_ext2" . PHP_EOL);
                  fclose($filee2);

             
                  echo "Se ha enviado el mensaje a correctamente!";

               ?>

              <form action="regfe.php" method="POST">
     
                <BR>

                <P>
                  <label for="apellido">Inicio de inscripciones<span><em>(requerido)</em></span></label>
                  <input type="text" name="insc1" class="form-input" required/>
                </P>

                <P>
                  <label for="apellido">Fin de inscripciones <span><em>(requerido)</em></span></label>
                  <input type="text" name="insc2" class="form-input" required/>
                </P>
                <BR>

                <P>
                  <label for="apellido">Inicio de inscripciones para idiomas<span><em>(requerido)</em></span></label>
                  <input type="text" name="ins_ido1" class="form-input" required/>
                </P>

                <P>
                  <label for="apellido">Fin de inscripciones para idiomas <span><em>(requerido)</em></span></label>
                  <input type="text" name="ins_ido2" class="form-input" required/>
                </P>
                <BR>

                <P>
                  <label for="apellido">Inicio de extraordinarios<span><em>(requerido)</em></span></label>
                  <input type="text" name="extr1" class="form-input" required/>
                </P>
        
                <P>
                  <label for="apellido">Fin de extraordinarios <span><em>(requerido)</em></span></label>
                  <input type="text" name="extr2" class="form-input" required/>
                </P>
                <BR>


                <center> <input class="form-btn" name="submit" type="submit" value="Guardar" /></center>
                </p>
              </form>
            </section>
      </div>
    </body>
  </html>

