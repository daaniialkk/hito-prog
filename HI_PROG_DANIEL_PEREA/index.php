<?php 
#cookies
date_default_timezone_set('Europe/Madrid');
setcookie("ip", $_SERVER["REMOTE_ADDR"]);
setcookie("fecha", date('d-m-Y h:i:s'));
$cookieip= $_COOKIE['ip'];
$cookiefecha = $_COOKIE['fecha'];
$file = fopen("cookies/cookies.txt","a");
fwrite($file, $cookieip.PHP_EOL);
fwrite($file, $cookiefecha.PHP_EOL);
fclose($file);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/normalize.css">
    <script src="https://kit.fontawesome.com/a7daddc7d9.js" crossorigin="anonymous"></script>

    <title>HOME</title>
</head>
<body>
<div id="top">  
    <div id="menunav">
      <div class="navega"><span><a class="anav" href="index.php"> <strong> HOME</strong></a></span></div>
      <div class="navega"><span><a class="anav" href="login.html"><strong>Iniciar sesión</strong></a></span></div>
      <div class="navega"><span><a class="anav" href="registro.html"><strong>Registrarse</strong></a></span></div>
  </div>
</div>

<div id="parra1">
  <div id="textsupe">
 <h1><strong>Lenguajes de programación</strong></h1>
  </div>
</div>




<div id="infomacionho">
<div class="espacio">
 <div class="texto1">    <div class="nere">
      <img class="fototext" src="foto/1_4KEYbVW7F7TuagCSmRXOtQ.png" alt="">
    </div>
    <div class="h1text1"><h1>Los lenguajes de primera generación: Estos son lenguajes de bajo nivel llamados lenguajes de máquina. Se utilizan para programar ordenadores
    con un nivel de abstracción muy simple.
    Ejemplo: COBOL se creó con el objetivo de crear un lenguaje de programación universal que pudiera ser usado en cualquier ordenador</h1></div>

  </div>
</div>

  <div class="espacio">
    <div class="texto1">    
      <div class="nere">
        <img class="fototext2" src="foto/fortran.png" alt="">
      </div>
      <div class="h1text2"><h1>Los lenguajes de segunda generación: Son lenguaje ensamblador de bajo nivel. Se usan en kernels y dispositivos de hardware, y se usan
        comúnmente en edición de video, gráficos y juegos.
        Ejemplo: Fortran Es un lenguaje de programación de propósito general, procedimental, imperativo y de alto nivel diseñado específicamente para
        computación numérica y científica.</h1></div>

    </div>
  </div>

  <div class="espacio">
    <div class="texto1">    <div class="nere">
        <img class="fototext" src="foto/javas.png" alt="">
      </div>
      <div class="h1text1"><h1>Los lenguajes de tercera generación: Son lenguajes de alto nivel, como C, C++, C#, Java, BASIC, JavaScript y Visual Basic.
        Ejemplo: JavaScript es un lenguaje de programación o de secuencias de comandos que te permite implementar funciones complejas en páginas
        web,</h1></div>
  
    </div>
  </div>

  <div class="espacio">
    <div class="texto1">    
      <div class="nere">
        <img class="fototext2" src="foto/que-es-sql-todo-debes-saber-lenguaje-1160x630.png" alt="">
      </div>
      <div class="h1text2"><h1>Los lenguajes de cuarta generación: Se usan comúnmente en la programación de bases de datos, y los ejemplos de scripts incluyen Unix Shell, Perl,
        PHP, Python, Ruby y SQL.
        Ejemplo: SQL es un lenguaje que te permite manipular y descargar datos de una base de datos, también tiene capacidad de hacer cálculos
        avanzados y álgebra</h1></div>

    </div>
  </div>

  <div class="espacio">
    <div class="texto1">    <div class="nere">
        <img class="fototext" src="foto/Mercury-Logo-OGMeta.png" alt="">
      </div>
      <div class="h1text1"><h1>Los lenguajes de quinta generación: Es un lenguaje de programación que incluye herramientas visuales para ayudarte a desarrollar programas. Los
        ejemplos de lenguajes de quinta generación incluyen Mercury, OPS5 y Prolog.
        Ejemplo: Mercury es un lenguaje de programación funcional lógico, es decir, combina &quot;soluciones puras&quot; y cálculos con información parcial</h1></div>
  
    </div>
  </div>
</div>
<footer class="abajo">
  <img src="foto/Captura de pantalla 2023-02-07 124004-PhotoRoom.png-PhotoRoom.png" alt="" class="logo">
  <div class="social-icons-container">
      <a href="https://es-es.facebook.com/" class="social-icon"></a>
      <a href="https://www.instagram.com/" class="social-icon"></a>
      <a href="https://twitter.com/?lang=es" class="social-icon"></a>
      <a href="https://es.linkedin.com/?src=go-pa&trk=sem-ga_campid.18146679037_asid.140850334975_crid.619061882347_kw.linkedin_d.c_tid.kwd-148086543_n.g_mt.e_geo.9049081&mcid=6968657504633266178&cid=&gclid=CjwKCAiArY2fBhB9EiwAWqHK6vlIGiC0VRmICaoxC0hU02Qy5HfYYP6Os0SDSqkIMV4UeDodlJ_KzhoCfGcQAvD_BwE&gclsrc=aw.ds" class="social-icon"></a>
  </div>
  <ul class="footer-menu-container">
      <li class="menu-item">Legal</li>
      <li class="menu-item">Cookies</li>
      <li class="menu-item">Privacidad</li>
      <li class="menu-item">Contacto</li>
      <li class="menu-item">Formación</li>
  </ul>
  <span class="copyright">&copy;2023, ©copyright. All rights reserved.</span>
</footer>
</body>
</html>