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

