<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">

    <title>E-Accident | Home </title>

    <link rel="apple-touch-icon" href="<?= base_url() ?>assets/topbar/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="<?= base_url() ?>assets/topbar/images/favicon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/topbar/css/site.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/flag-icon-css/flag-icon.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-fixedheader-bs4/dataTables.fixedheader.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-fixedcolumns-bs4/dataTables.fixedcolumns.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-rowgroup-bs4/dataTables.rowgroup.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-scroller-bs4/dataTables.scroller.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-select-bs4/dataTables.select.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-responsive-bs4/dataTables.responsive.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/datatables.net-buttons-bs4/dataTables.buttons.bootstrap4.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/topbar/examples/css/tables/datatable.css">


    <!-- Fonts -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/fonts/font-awesome/font-awesome.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>

    <!--[if lt IE 9]>
    <script src="<?= base_url() ?>assets/global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->

    <!--[if lt IE 10]>
    <script src="<?= base_url() ?>assets/global/vendor/media-match/media.match.min.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/respond/respond.min.js"></script>
    <![endif]-->

    <!-- Scripts -->
    <script src="<?= base_url() ?>assets/global/vendor/breakpoints/breakpoints.js"></script>
    <script>
        Breakpoints();
    </script>
</head>

<body class="animsition site-navbar-small ">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega navbar-inverse" role="navigation">

        <div class="navbar-header">
            <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided" data-toggle="menubar">
                <span class="sr-only">Toggle navigation</span>
                <span class="hamburger-bar"></span>
            </button>
            <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse" data-toggle="collapse">
                <i class="icon wb-more-horizontal" aria-hidden="true"></i>
            </button>
            <a class="navbar-brand navbar-brand-center" href="../index.html">
                <img class="navbar-brand-logo navbar-brand-logo-normal" src="<?= base_url() ?>assets/base/assets/images/logo3.png" title="Remark">
                <img class="navbar-brand-logo navbar-brand-logo-special" src="<?= base_url() ?>assets/topbar/images/logo-colored.png" title="Remark">
                <span class="navbar-brand-text hidden-xs-down"> E-Accident</span>
            </a>
            <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-search" data-toggle="collapse">
                <span class="sr-only">Toggle Search</span>
                <i class="icon wb-search" aria-hidden="true"></i>
            </button>
        </div>

        <div class="navbar-container container-fluid">
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
                <!-- Navbar Toolbar -->
                <ul class="nav navbar-toolbar">
                    <li class="nav-item hidden-float" id="toggleMenubar">
                        <a class="nav-link" data-toggle="menubar" href="#" role="button">
                            <i class="icon hamburger hamburger-arrow-left">
                                <span class="sr-only">Toggle menubar</span>
                                <span class="hamburger-bar"></span>
                            </i>
                        </a>
                    </li>
                    <li class="nav-item hidden-sm-down" id="toggleFullscreen">
                        <a class="nav-link icon icon-fullscreen" data-toggle="fullscreen" href="#" role="button">
                            <span class="sr-only">Toggle fullscreen</span>
                        </a>
                    </li>
                    <li class="nav-item hidden-float">
                        <a class="nav-link icon wb-search" data-toggle="collapse" href="#" data-target="#site-navbar-search" role="button">
                            <span class="sr-only">Toggle Search</span>
                        </a>
                    </li>
                </ul>
                <!-- End Navbar Toolbar -->

                <!-- Navbar Toolbar Right
                <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                    <li class="nav-item dropdown">
                        <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false" data-animation="scale-up" role="button">
                            <span class="avatar avatar-online">
                                <img src="<?= base_url() ?>assets/global/portraits/5.jpg" alt="...">
                                <i></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Profile</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-payment" aria-hidden="true"></i> Billing</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-settings" aria-hidden="true"></i> Settings</a>
                            <div class="dropdown-divider" role="presentation"></div>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Logout</a>
                        </div>
                    </li>
                </ul> -->
                <!-- End Navbar Toolbar Right -->
            </div>
            <!-- End Navbar Collapse -->

            <!-- Site Navbar Seach -->
            <div class="collapse navbar-search-overlap" id="site-navbar-search">
                <form role="search">
                    <div class="form-group">
                        <div class="input-search">
                            <i class="input-search-icon wb-search" aria-hidden="true"></i>
                            <input type="text" class="form-control" name="site-search" placeholder="Search...">
                            <button type="button" class="input-search-close icon wb-close" data-target="#site-navbar-search" data-toggle="collapse" aria-label="Close"></button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- End Site Navbar Seach -->
        </div>
    </nav>
    <div class="site-menubar site-menubar-light">
        <div class="site-menubar-body">
            <div>
                <div>
                    <ul class="site-menu" data-plugin="menu">
                        <li class="site-menu-item has-sub">
                            <a href="<?= base_url('auth'); ?>">
                                <span class="site-menu-title">Laporan Investigasi Kecelakaan</span>
                            </a>
                        </li>
                        <li class="site-menu-item has-sub">
                            <a href="#rs">
                                <span class="site-menu-title">RS Trauma Center</span>
                            </a>
                        </li>
                        <li class="site-menu-item has-sub">
                            <a href="#cp" data-toggle="modal" data-target="#exampleTabs">
                                <span class="site-menu-title">Dokumen Yang Disiapkan</span>
                            </a>
                        </li>
                        <li class="site-menu-item has-sub">
                            <a href="<?= base_url('dashboard/start_download') ?>">
                                <span class="site-menu-title">Surat Perny saksi</span>
                            </a>
                        </li>
                        <li class="site-menu-item has-sub">
                            <a href="#kontak">
                                <span class="site-menu-title">Kontak</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Page -->
    <div class="page">
        <div class="page-content">
            <!-- Panel Carousel -->
            <div class="panel">
                <div class="panel-body container-fluid">
                    <div class="row row-lg">
                        <div class="col-md">
                            <!-- Example Captions -->
                            <div class="example-wrap">
                                <div class="example">
                                    <div class="carousel slide" id="exampleCarouselCaptions" data-ride="carousel">
                                        <ol class="carousel-indicators carousel-indicators-fillin">
                                            <li class="active" data-slide-to="0" data-target="#exampleCarouselCaptions"></li>
                                            <li data-slide-to="1" data-target="#exampleCarouselCaptions"></li>
                                            <li data-slide-to="2" data-target="#exampleCarouselCaptions"></li>
                                        </ol>
                                        <div class="carousel-inner" role="listbox">
                                            <div class="carousel-item active">
                                                <img class="w-full" src="<?= base_url() ?>assets/global/photos/gambar0.png" alt="..." />
                                                <div class="carousel-caption">
                                                    <h3>Kerja Aman Membuat Pekerjaan Menjadi Aman</h3>
                                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <img class="w-full" src="<?= base_url() ?>assets/global/photos/gambar.png" alt="..." />
                                                <div class="carousel-caption">
                                                    <h3>Second Slide Label</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit.</p>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <img class="w-full" src="<?= base_url() ?>assets/global/photos/gambar1.png" alt="..." />
                                                <div class="carousel-caption">
                                                    <h3>Third Slide Label</h3>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl
                                                        consectetur.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#exampleCarouselCaptions" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon wb-chevron-left" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#exampleCarouselCaptions" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon wb-chevron-right" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Example Captions -->
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-12">
                            <h1 class="text-center">Laporkan Kecelakaan Kerja </h1>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col col-lg-6">

                            <div class="">
                                <img class="img-thumnail float-right" width="500px" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                            </div>
                            <br>
                        </div>
                        <div class="col col-lg-6">
                            <blockquote class="blockquote cover-quote">
                                Kehati-hatian tidak membuat kita rugi apapun, namun kecerobohan bisa membuat kita mengorbankan seluruh kehidupan kita.
                                <footer class="blockquote-footer">Someone famous in
                                    <cite title="Source Title">Unknown</cite>
                                </footer>
                            </blockquote>
                            <div class="text-center">
                                <a href="<?= base_url('auth'); ?>" type="button" class="btn btn-success">Lapor</a>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="container text-center" id="rs">
                    <h1>RS Trauma Center</h1>
                </div>
                <div class="container">
                    <div class="panel">
                        <div class="panel-body">


                            <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama RS</th>
                                        <th>Alamat</th>
                                        <th>Telepon</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($rs as $r) {
                                    ?>
                                        <tr>
                                            <td><?= $no++; ?></td>
                                            <td><?= $r->nama_rs ?></td>
                                            <td><?= $r->alamat_rs ?></td>
                                            <td><?= $r->telepon_rs ?></td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <br>
                    <h1 class="text-center" id="kontak">KONTAK</h1>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <p><b>Jusfen Karmindo</b></p>
                            <p><span class="glyphicon glyphicon-map-marker"></span> HRD</p>
                            <p><span class="glyphicon glyphicon-phone"></span> 0899 7804 802</p>
                            <p><span class="glyphicon glyphicon-envelope"></span> jusfen.karmindo@pttrimitra.com</p>
                        </div>
                        <div class="col-sm-3">
                            <p><b>Lolla Viana</b></p>
                            <p><span class="glyphicon glyphicon-map-marker"></span> HRD</p>
                            <p><span class="glyphicon glyphicon-phone"></span> 0813 1804 0875</p>
                            <p><span class="glyphicon glyphicon-envelope"></span> lolla@pttrimitra.com</p>
                        </div>
                        <div class="col-sm-3">
                            <p><b>Jarot</b></p>
                            <p><span class="glyphicon glyphicon-map-marker"></span> QHSE</p>
                            <p><span class="glyphicon glyphicon-phone"></span> 0812 9388 4086</p>
                            <p><span class="glyphicon glyphicon-envelope"></span> jarot@pttrimitra.com</p>
                        </div>
                        <div class="col-sm-3">
                            <p><span class="glyphicon glyphicon-map-marker"></span> <b>SECURITY</b></p>
                            <p><span class="glyphicon glyphicon-phone"></span> EXT 300 /301</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Panel Carousel -->
        </div>
        <!-- End Page -->


        <!-- Footer -->
        <footer class="site-footer">
            <div class="site-footer-legal">© 2018 <a href="http://themeforest.net/item/remark-responsive-bootstrap-admin-template/11989202">Remark</a></div>
            <div class="site-footer-right">
                Crafted with <i class="red-600 wb wb-heart"></i> by <a href="https://themeforest.net/user/creation-studio">Creation Studio</a>
            </div>
        </footer>
        <!-- Core  -->
        <script src="<?= base_url() ?>assets/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/jquery/jquery.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/popper-js/umd/popper.min.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/bootstrap/bootstrap.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/animsition/animsition.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/mousewheel/jquery.mousewheel.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/asscrollable/jquery-asScrollable.js"></script>

        <!-- Plugins -->
        <script src="<?= base_url() ?>assets/global/vendor/switchery/switchery.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/intro-js/intro.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/screenfull/screenfull.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net/jquery.dataTables.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-bs4/dataTables.bootstrap4.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-fixedheader/dataTables.fixedHeader.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-fixedcolumns/dataTables.fixedColumns.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-rowgroup/dataTables.rowGroup.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-scroller/dataTables.scroller.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-responsive/dataTables.responsive.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-responsive-bs4/responsive.bootstrap4.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons/dataTables.buttons.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons/buttons.html5.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons/buttons.flash.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons/buttons.print.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons/buttons.colVis.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/datatables.net-buttons-bs4/buttons.bootstrap4.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/asrange/jquery-asRange.min.js"></script>
        <script src="<?= base_url() ?>assets/global/vendor/bootbox/bootbox.js"></script>

        <!-- Scripts -->
        <script src="<?= base_url() ?>assets/global/js/Component.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Plugin.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Base.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Config.js"></script>

        <script src="<?= base_url() ?>assets/topbar/js/Section/Menubar.js"></script>
        <script src="<?= base_url() ?>assets/topbar/js/Section/Sidebar.js"></script>
        <script src="<?= base_url() ?>assets/topbar/js/Section/PageAside.js"></script>
        <script src="<?= base_url() ?>assets/topbar/js/Plugin/menu.js"></script>

        <!-- Config -->
        <script src="<?= base_url() ?>assets/global/js/config/colors.js"></script>
        <script src="<?= base_url() ?>assets/topbar/js/config/tour.js"></script>
        <script>
            Config.set('assets', '<?= base_url() ?>assets/topbar');
        </script>

        <!-- Page -->
        <script src="<?= base_url() ?>assets/topbar/js/Site.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Plugin/asscrollable.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Plugin/slidepanel.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Plugin/switchery.js"></script>
        <script src="<?= base_url() ?>assets/global/js/Plugin/datatables.js"></script>

        <script src="<?= base_url() ?>assets/topbar/examples/js/tables/datatable.js"></script>

</body>

</html>

<!-- Modal -->
<div class="modal fade" id="exampleTabs" aria-hidden="true" aria-labelledby="exampleModalTabs" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-simple">
        <div class="modal-content">
            <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                <li class="nav-item" role="presentation"><a class="nav-link active" data-toggle="tab" href="#exampleLine1" aria-controls="exampleLine1" role="tab">Kecelakaan Kerja</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleLine2" aria-controls="exampleLine2" role="tab">Kecelakaan Lalu Lintas</a></li>
            </ul>

            <div class="modal-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="exampleLine1" role="tabpanel">
                        <p>1. Copy kartu BPJSK (4 Lembar) </p>
                        <p>2. Laporan investigasi kecelakaan</p>
                        <p>3. Foto anggota tubuh yang terluka</p>
                        <p>4. Copy KTP (4 Lembar)</p>
                    </div>

                    <div class="tab-pane" id="exampleLine2" role="tabpanel">
                        <p>1. Copy kartu BPJSK (4 Lembar) </p>
                        <p>2. Laporan investigasi kecelakaan</p>
                        <p>3. Surat pernyataan saksi <a href="<?= base_url('dashboard/start_download') ?>" class="badge badge-round badge-primary">Download</a></p>
                        <p>4. Foto anggota tubuh yang terluka</p>
                        <p>5. Copy KTP saksi (4 Lembar)</p>
                        <p>6. Copy KTP korban (4 Lembar)</p>

                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Modal -->