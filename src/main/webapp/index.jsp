<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Optional JavaScript; choose one of the two! -->

    <link rel="stylesheet" href="assets/stylesheets/estilos-index.css">
  <!---OTROS CDN-->


    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.bundle.min.js"
        integrity="sha512-mULnawDVcCnsk9a4aG1QLZZ6rcce/jSzEGqUkeOLy0b6q0+T6syHrxlsAGH7ZVoqC93Pd0lBqd6WguPWih7VHA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!---FIN CDNS-->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"
        defer></script>
    <script defer type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js" defer></script>
    <script defer src="scripts\validacion-contacto.js"></script>
    

    <title>Turismo En Tierra Media</title>
</head>

<body>

    <!---NAV BAR --->
    <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="assets/img/logo_small.png" alt="" width="200px"
                    class="d-inline-block align-text-center pt-1 pb-2"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <ion-icon name="menu-outline"></ion-icon>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#" id="inicio">Inicio</a>
                    </li>
                    <li class="nav-item">

                        <a class="nav-link" href="#" data-bs-target="#carouselExampleControlsNoTouching"
                            data-bs-slide="next">Atracciones</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#" data-bs-target="#carouselExampleControlsNoTouching"
                            data-bs-slide="prev">Promociones</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a id="perfiles-creados" class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                            role="button" data-bs-toggle="dropdown" aria-expanded="false" >
                            Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="login.jsp" id="usuario">Iniciar Sesion</a></li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#quienes-somos" tabindex="-1" aria-disabled="false">Quienes
                            Somos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contacto" tabindex="-1" aria-disabled="false">Contacto</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <!---FIN NAVBAR-->
    <!---Sectccion Imagen y breve despcripcion-->
    <section id="hero" style=" background-image: url(assets/img/img5.jpg)">
      
        <div class="container align-items-center  text-center pt-2 mb-5 mt-5   ">
            <h1 class="text-center fw-bolder pt-5">Turismo En Tierra Media</h1>
            <p class="pt-2">La Secretaría de Turismo de la Tierra Media ha decidido crear un sistema para promocionar el
                turismo en su territorio. Éste contará con la información de las distintas atracciones de toda la Tierra
                Media.
            </p>
            <button type="menu" class=" text-center btn btn-light btn-sm mt-5   border border-light fw-bold "><a
                    href="#ayp"> Explorar
                    Ahora</a>
            </button>
        </div>
    </section>
    <!---FIN SECCION-->

    <!----SECCION ATRACCIONES Y PROMOCIONES-->
    <section id="ayp" class="p-4">
        <div class="container-fluid  text-center">


            <!-----CARRUSEL SLIDER-->

            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                data-bs-interval="false">
                <div class="carousel-inner">
                    <!--PRIMER ITEM-->
                    <div class="carousel-item active" id="atracciones">
                        <h2 class="display-2 fw-bold">Atracciones</h2>
                        <p class="">La secretaría de turismo de la Tierra Media ha decidido crear un sistema para
                            promocionar el
                            turismo en su territorio. Éste contará con la información de las distintas atracciones de
                            toda la Tierra
                            Media.</p>
                        <!----ATRACCIONES-->
                        <div class=" pt-5 row row-cols-1 row-cols-md-3 g-4">
                            <div class="col-lg-6 col-sm-6" id="col1">
                                <div class="card h-100 card_1">
                                    <img src="assets/img/card-1.jpg" class="card-img-top" alt="mordor">
                                    <div class="card-body card-1">
                                        <h5 class="card-title fw-bold">Mordor</h5>
                                        <p class="card-text">Mordor es una atraccion muy tenebrosa <br>su costo de
                                            entrada es de
                                            $ 10 y requiere un tiempo de 2.5 horas </p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-6  col-sm-6" id="col2">
                                <div class="card h-100">
                                    <img src="assets/img/card-2.jpg" class="card-img-top" alt="minas-thirt">
                                    <div class="card-body" id="card-2">
                                        <h5 class="card-title fw-bold">Minas Thirt</h5>
                                        <p class="card-text">Minas Thirt es una de las Atracciones mas visitadas <br> su
                                            costo de
                                            entrada es de $ 15 y requiere un tiempo de 6.5 horas .</p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-6  col-sm-6" id="col3">
                                <div class="card h-100">
                                    <img src="assets/img/card-3.png" class="card-img-top" alt="...">
                                    <div class="card-body" id="card-3">
                                        <h5 class="card-title fw-bold">Abismo de Helm</h5>
                                        <p class="card-text">Abismo de Helm es una atraccion que tiene el mejor campo de
                                            batalla
                                            <br> su costo de entrada es de $ 20 y requiere un tiempo de 1.5 horas.
                                        </p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6  col-sm-6" id="col4">
                                <div class="card h-100">
                                    <img src="assets/img/card-4.jpg" class="card-img-top" alt="...">
                                    <div class="card-body" id="card-4">
                                        <h5 class="card-title  fw-bold">Moria</h5>
                                        <p class="card-text">Moria es una atraccion donde siempre pasan hechos
                                            sobrenaturales <br>
                                            su costo de entrada es de $ 36 y requiere un tiempo de 3 horas .</p>
                                        <button type="button"
                                            class="btn btn-transparent border-dark mt-2">Visitar</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6  col-sm-6" id="col5">
                                <div class="card h-100">
                                    <img src="assets/img/card-5.jpg" class="card-img-top" alt="...">
                                    <div class="card-body" id="card-5">
                                        <h5 class="card-title fw-bold">Bosque Negro</h5>
                                        <p class="card-text">Bosque Negro es una atraccion donde predomina la oscuridad
                                            <br> su
                                            costo de entrada es $ 3 y requiere un tiempo de 12 horas.
                                        </p>
                                          <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6   col-sm-6" id="col6">
                                <div class="card h-100">
                                    <img src="assets/img/card-6.jpg" class="card-img-top" alt="...">
                                    <div class="card-body" id="card-6">
                                        <h5 class="card-title fw-bold">La Comarca</h5>
                                        <p class="card-text">La Comarca es una de las atracciones mas alegres y mas
                                            tranquilas del
                                            parque <br> su costo de entrada es $ 8 y requiere un tiempo de 4 horas.</p>
                                          <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>
                            </div>
                            <!---FIN ATRACCIONES-->
                        </div>
                    </div>
                    <!--FIN PRIMER ITEM-->



                    <!---SEGUNDO ITEM-->
                    <div class="carousel-item " id="promociones">
                        <h2 class="display-2 fw-bold">Promociones</h2>
                        <p class="">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusamus eveniet ipsam
                            cumque .</p>
                        <!---PROMOCIONES-->
                        <div class=" pt-5 row row-cols-1 row-cols-md-3 g-4">
                            <div class="col-lg-6 col-sm-6" id="col1">
                                <div class="card h-100 card_1">
                                    <img src="assets/img/card-promo4.jpg" class="card-img-top" alt="Degustacion">
                                    <div class="card-body card-1">
                                        <h5 class="card-title fw-bold">Pack Degustacion</h5>
                                        <p class="card-text"> ¡NO TE PIERDAS ESTA OFERTA INCREIBLE!<br> Llevando
                                            Lothlorien y La Comarca
                                            Te hacemos un descuento unico de $36 monedas</p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-6  col-sm-6" id="col2">
                                <div class="card h-100">
                                    <img src="assets/img/card-promo3.jpg" class="card-img-top" alt="Paisaje">
                                    <div class="card-body" id="card-2">
                                        <h5 class="card-title fw-bold">Pack Paisaje</h5>
                                        <p class="card-text">Con la compra de Erebor y Minas Tirith te llevas de regalo
                                            una visita a Abismo de Helm <br> ¡LLEVATE ESTE INCREIBLE COMBO POR SOLO $120
                                            MONEDAS! </p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-6  col-sm-6" id="col3">
                                <div class="card h-100">
                                    <img src="assets/img/card-promo2.jpg" class="card-img-top" alt="adrenalina">
                                    <div class="card-body" id="card-3">
                                        <h5 class="card-title fw-bold">Pack Adrenalina</h5>
                                        <p class="card-text">¡QUERES VIVIR UNA EXPERIENCIA UNICA?!<br>
                                            ¡QUE TE DEJE LOS PELOS DE PUNTA?!<br>
                                            Entonces este pack es el tuyo, no esperes mas y empeza a disfrutar de
                                            Mordor y Bosque Negro. <br>comprando ahora te hacemos un descuento del 25%
                                        </p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6  col-sm-6" id="col4">
                                <div class="card h-100">
                                    <img src="assets/img/card-promo.jpg" class="card-img-top" alt="Aventura">
                                    <div class="card-body" id="card-4">
                                        <h5 class="card-title  fw-bold">Pack Aventura</h5>
                                        <p class="card-text">¡APROVECHA ESTE COMBO INCREIBLE!<br>
                                            Combo ideal para visitar con la familia, no te pierdas la posibilidad de
                                            conocer Mordor y Moria,<br> y tener una experiencia unica a tan solo el
                                            precio de $ 140 monedas </p>
                                         <a type="button" class="btn btn-transparent border-dark mt-2" href=""
                                            data-toggle="modal" data-target="#RegistrarModal">Visitar</a>
                                    </div>
                                </div>
                            </div>



                        </div>

                        <!----FIN PROMOCIONES-->
                    </div>
                    <!--FIN SEGUNDO ITEM-->
                </div>

            </div>

            <!----FIN CARRUSEL SLIDER-->



        </div>


    </section>
    <!---FIN SECCION ATRACCIONES Y PROMOCIONES-->


    <!----SECCION SOBRE LA EMPRESA--->
    <section id="quienes-somos">
        <div class="container bg-light">
            <div class="contenido-empresa">
                <h2 class="display-5 text-center mt-5 pt-2 ">Turismo en Tierra Media <br>Fue desarrollado por el grupo
                    <br> <b>Hijos Del Rigor</b>
                </h2>
                <p class="text-center">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempore repellat nulla
                    eum et explicabo
                    provident officia, impedit consectetur vitae aspernatur suscipit perferendis quia quam. Est rem
                    accusamus aliquid ipsum sint!</p>
            </div>
            <div class=" pt-5 row row-cols-1 row-cols-md-3 g-4">
                <div class="col-lg-3 col-sm-6">
                    <div class="contenido-miembro">
                        <div class="contenido-detalles">
                            <h5 class="text-start ps-1 mt-2">Jeremias Lapalma</h5>
                            <span class="ps-1">Programador Full-Stack jr</span>
                            <ul class="list-inline pe-3">
                                <li class=" list-inline-item"><a href="">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-slack"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-linkedin"></ion-icon>
                                    </a></li>
                            </ul>
                        </div>
                        <img src="assets/img/pf-1.jpg" class="img-fluid" alt="perfil-1">
                    </div>

                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="contenido-miembro">
                        <div class="contenido-detalles">
                            <h5 class="text-start ps-1 mt-2">Joana Bugarin</h5>
                            <span class="ps-1">Programador Full-Stack jr</span>
                            <ul class="list-inline pe-3">
                                <li class=" list-inline-item"><a href="">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-slack"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-linkedin"></ion-icon>
                                    </a></li>
                            </ul>
                        </div>
                        <img src="assets/img/pf-2.jpg" class="img-fluid" alt="perfil-2">
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="contenido-miembro">
                        <div class="contenido-detalles">
                            <h5 class="text-start ps-1 mt-2">Patricia Bernasconi</h5>
                            <span class="ps-1">Programador Full-Stack jr</span>
                            <ul class="list-inline pe-3">
                                <li class=" list-inline-item"><a href="">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-slack"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-linkedin"></ion-icon>
                                    </a></li>
                            </ul>
                        </div>
                        <img src="assets/img/pf-3.jpg" class="img-fluid" alt="perfil-3">
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="contenido-miembro">
                        <div class="contenido-detalles">
                            <h5 class="text-start ps-1 mt-2">Emilio Filipi-Cano</h5>
                            <span class="ps-1">Programador Full-Stack jr</span>
                            <ul class="list-inline pe-3">
                                <li class=" list-inline-item"><a href="">
                                        <ion-icon name="logo-instagram"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-slack"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-twitter"></ion-icon>
                                    </a></li>
                                <li class="list-inline-item"><a href="">
                                        <ion-icon name="logo-linkedin"></ion-icon>
                                    </a></li>
                            </ul>
                        </div>
                        <img src="assets/img/pf-4.jpg" class="img-fluid" alt="perfil-4">
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!---FIN SECCION SOBRE LA EMPRESA-->


    <!--CONTACTO-->
    <section id="contacto">
        <div class="container bg-light mt-2 mb-3">
            <div class="row">
                <div class="col-lg-6 col-sm-6 mt-5 pt-5 mb-2">
                    <h2 class="fw-bolder ">Estas Listo Para ser Parte de esta aventura?</h2>
                    <p class="pp">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque adipisci repellat
                        illum, suscipit
                        enim vitae corporis maxime tempora tempore deserunt qui aspernatur dolores iure esse? Deserunt
                        reprehenderit culpa sit distinctio.</p>

                </div>
                <div class="col-lg-6 col-sm-6 mt-5 pt-5 pe-3 mb-2">
                    <h2 class="fw-bolder display-5 ms-2 ps-3">Contacto</h2>
                    
                        <form id="form-contact" class="row g-3 needs-validation" novalidate  > 
                            <div class="col-md-4">
                              <label for="validationCustom01" class="form-label">Nombre</label>
                              <input type="text" class="form-control" id="validationCustom01" required>
                              <div class="valid-feedback">
                        
                                ¡Se ve bien!
                              </div>
                            </div>
                            <div class="col-md-4">
                              <label for="validationCustom02" class="form-label">Apellido</label>
                              <input type="text" class="form-control" id="validationCustom02" required>
                              <div class="valid-feedback">
                        
                                ¡Se ve bien!
                              </div>
                            </div>
                            <div class="col-md-4">
                              <label type="Email" for="validationCustomUsername" class="form-label">Email</label>
                              <div class="input-group has-validation" >
                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend"
                                  required>
                                <div class="invalid-feedback">
                                  Por favor, ingrese un nombre de usuario.
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6">
                              <label for="validationCustom03" class="form-label">Ciudad</label>
                              <input type="text" class="form-control" id="validationCustom03" required>
                              <div class="invalid-feedback">
                                Proporcione una ciudad válida.
                              </div>
                            </div>
                        
                            <div class="col-md-3">
                              <label for="validationCustom05" class="form-label">Comentario</label>
                              <textarea type="text" class="form-control" id="validationCustom05" ></textarea>
                              <div class="invalid-feedback">
                                por favor ingrese un comentario
                              </div>
                            </div>
                            <div class="col-12">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                <label class="form-check-label" for="invalidCheck">
                                  Acepta terminos y condiciones
                                </label>
                                <div class="invalid-feedback">
                                  Debes estar de acuerdo antes de enviar.
                                </div>
                              </div>
                            </div>
                            <div class="col-12">
                              <button class="btn btn-primary" type="submit">Enviar Formulario</button>
                            </div>
                          </form>
                        
                    </div>
                </div>


            </div>

        </div>
    </section>
    <!---FIN CONTACTO-->


    <!--FOOTER-->
    <footer class=" py-5 mt-5 bg-light shadow">
        <div class="container">




            <div class="row">
                <div class="col-lg-3 mb-3 ">
                    <a class="d-inline-flex align-items-center mb-2" href=""> <img src="assets/img/logo_small.png" alt="logo"
                            width="200px"></a>
                    <div>
                        <ul class="list-unstyled  small  text-muted">
                            <li class="mb-2">
                                <p>This card has supporting text below as a natural lead-in to
                                    additional content.</p>
                            </li>
                            <li class="mb-2">Gracias Por visitar Nuestra web</li>


                        </ul>
                    </div>

                </div>
                <div class="col-6 col-lg-2 mb-3">
                    <div>
                        <a href="" class="fw-bolder text-dark">Atracciones</a>
                        <ul class="list-unstyled  small  text-muted">
                            <li class="mb-2">
                                <a href="" class="text-dark">Lista De Atracciones</a>
                            </li>
                            <li class="mb-2">
                                <p>Lorem ipsum </p>
                            </li>


                        </ul>
                    </div>
                    <div class="col-6 col-lg-2 mb-3">
                        <div>
                            <a href="" class="fw-bolder text-dark">Promociones</a>
                            <ul class="list-unstyled  small  text-muted">
                                <li class="mb-2">
                                    <a href="" class="text-dark">Promociones Disponibles</a>
                                </li>
                                <li class="mb-2">
                                    <p>Lorem ipsum </p>
                                </li>


                            </ul>
                        </div>

                    </div>
                    <div class="col-8 col-lg-2 mb-3">
                        <div>
                            <a href="" class="fw-bolder text-dark">Otros Servicios</a>
                            <ul class="list-unstyled  small  text-muted">
                                <li class="mb-2">
                                    <a href="" class="text-dark">Argentina Programa</a>
                                </li>
                                <li class="mb-2">
                                    <p>Lorem ipsum </p>
                                </li>


                            </ul>
                        </div>

                    </div>

                </div>


            </div>
        </div>

    </footer>



<!-- MODAL REGISTER -->
  <div class="modal fade" id="RegistrarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Aun No Estas Registrado?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                               <div class="modal-body">

                    <form class="row g-3 needs-validation" novalidate action="dashboard.jsp" method="" >
                   
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Nombre Completo" required>

                        </div>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" placeholder="Email" required>

                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" placeholder="Contrase�a" required>

                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" placeholder="Repetir Contrase�a" required>

                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input ps-2 " type="checkbox" value="" id="invalidCheck" required>
                            <label class="form-check-label" for="invalidCheck">
                              Acepta terminos y condiciones
                            </label>
                            <div class="invalid-feedback pb-2">
                              Debes estar de acuerdo antes de enviar.
                            </div>
                        <button type="submit" class="btn btn-primary w-100 mt-5 mb-4">Registrarse</button>
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    </form>
                </div>
                <div class="modal-footer">
                   
                    <p class="mb-0 text-center " style="font-size: 14px;">Ya Tenes una cuenta? <a
                        href="login.jsp" >Inicia Sesion ahora!</a></p>
                   
                </div>
            </div>
        </div>
    </div>


<!-- FIN MODAL REGISTER -->

</body>

</html>