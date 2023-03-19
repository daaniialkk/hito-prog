<!--Formulario contacto-->
<link rel="stylesheet" href="../css/stylepost.css">
<section class="pagina_contacto">
        <div class="container">
          <div class="titulo1">
            <div class="contactanos">Post Nuevo</div>
            <h2>Postea lo que quieras</h2>
          </div>
          <div class="inner-container">
            <div class="row clearfix">
  <!--Formulario login-->
                <div class="form-column col-md-8 col-sm-12 col-xs-12">
                  <div class="inner-column">
                    <div class="formulario_contacto">
                      <form method="post" action="../modelo/post_controler.php" id="formulario_contacto">
                        <div class="row clearfix">
                            <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                <input type="email" name="email" value="" placeholder="Email del Autor" required>
                                <input type="hidden" name="acction" value="registrar">
                            </div>
                            <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                <input type="text" name="titulo" value="" placeholder="Titulo" required>
                            </div>
                            <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                <input type="text" name="contenido" value="" placeholder="Post max 200 caracteres" required>
                            </div>
                            <div class="form-group col-md-6 col-sm-6 co-xs-12">
                            <input type="hidden" name="fecha"  value="<?php echo date("Y-m-d");?>">
                            </div>
                            <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                <input type="text" name="imagen" value="" placeholder="Imagen (Opcional)">
                            </div>
                            <div class="form-group col-md-12 col-sm-12 co-xs-12">
                                <button type="submit" class="theme-btn btn-style-one">Registrar</button>
                            </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </section>