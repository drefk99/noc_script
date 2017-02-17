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
               
               <form action="regus.php" method="POST">
     
                <BR>
                <P>
                  <label for="nombre">Nombre <span><em>(requerido)</em></span></label>
                  <input type="text" name="nombre" id="nombre" class="form-input" required/>
                </P>
                <BR>


                <P>
                  <label for="email">Email <span><em>(requerido)</em></span></label>
                  <input type="email" name="email" class="form-input" />
                </P>

                <center> <input class="form-btn" name="submit" type="submit" value="Guardar" /></center>
                </p>
              </form>
               <BR>

            </section>
         </div>
      </body>
   </html>


