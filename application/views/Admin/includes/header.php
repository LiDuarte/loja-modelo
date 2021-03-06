<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $title; ?></title>
    <!-- Bootstrap core CSS -->
    <link href="<?= base_url("assets/css/bootstrap.css") ?>" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="<?= base_url("assets/css/font-awesome.min.css") ?>" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="<?= base_url("assets/ItemSlider/css/main-style.css"); ?>" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="<?= base_url("assets/css/style.css") ?>" rel="stylesheet" />
        <script src="<?= base_url("assets/js/jquery.min.js"); ?>"></script>

</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url("loja/"); ?>"><strong>ADMIN</strong> LOJA ONLINE</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <!-- Carrinho -->
                <ul class="nav navbar-nav navbar-right">
                    <?php if($this->session->userdata("logged_in")): ?>
                        <li><a href="<?php echo base_url("Login") ?>"><?php echo $this->session->userdata("username"); ?></a></li>
                        <li><a href="<?php echo base_url("Login/logout") ?>">Sair</a></li>
                    <?php else: ?>
                    <li><a href="<?php echo base_url("Login") ?>">Login</a></li>
                    <li><a href="#">Signup</a></li>
                    <?php  endif; ?>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">24x7 Support <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><strong>Call: </strong>+09-456-567-890</a></li>
                            <li><a href="#"><strong>Mail: </strong>info@yourdomain.com</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><strong>Address: </strong>
                                <div>
                                    234, New york Street,<br />
                                    Just Location, USA
                                </div>
                            </a></li>
                        </ul>
                    </li>
                </ul>
           
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="container">
    <div class="row">
        <div class="col-xs-2">
            <div class="row">
                <ul class="list-group">
                  <li class="list-group-item active"><a href="<?php echo base_url("cadastrar/produto/") ?>">Cadastrar Produto</a></li>
                  <li class="list-group-item"><a href="<?php echo base_url("cadastrar/categoria/") ?>">Cadastrar Categorias</a></li>
                </ul>
            </div>
        </div>