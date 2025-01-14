<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">

    <title><?= $judul ?></title>

    <link rel="apple-touch-icon" href=" <?= base_url() ?>assets/base/assets/images/apple-touch-icon.png ">
    <link rel="shortcut icon" href=" <?= base_url() ?>assets/base/assets/images/favicon.ico ">

    <!-- Stylesheets -->
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/css/bootstrap.min.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/css/bootstrap-extend.min.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/base/assets/css/site.min.css ">

    <!-- Plugins -->
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/animsition/animsition.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/asscrollable/asScrollable.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/switchery/switchery.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/intro-js/introjs.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/slidepanel/slidePanel.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/flag-icon-css/flag-icon.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-bs4/dataTables.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-fixedheader-bs4/dataTables.fixedheader.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-fixedcolumns-bs4/dataTables.fixedcolumns.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-rowgroup-bs4/dataTables.rowgroup.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-scroller-bs4/dataTables.scroller.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-select-bs4/dataTables.select.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-responsive-bs4/dataTables.responsive.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/vendor/datatables.net-buttons-bs4/dataTables.buttons.bootstrap4.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/base/assets/examples/css/tables/datatable.css ">


    <!-- Fonts -->
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/fonts/font-awesome/font-awesome.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/fonts/web-icons/web-icons.min.css ">
    <link rel="stylesheet" href=" <?= base_url() ?>assets/global/fonts/brand-icons/brand-icons.min.css ">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>

    <!--[if lt IE 9]>
    <script src="../../../global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->

    <!--[if lt IE 10]>
    <script src="../../../global/vendor/media-match/media.match.min.js"></script>
    <script src="../../../global/vendor/respond/respond.min.js"></script>
    <![endif]-->

    <!-- Scripts -->
    <script src=" <?= base_url() ?>assets/global/vendor/breakpoints/breakpoints.js "></script>
    <script>
        Breakpoints();
    </script>
</head>

<body class="animsition">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">

        <div class="navbar-header">
            <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided" data-toggle="menubar">
                <span class="sr-only">Toggle navigation</span>
                <span class="hamburger-bar"></span>
            </button>
            <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse" data-toggle="collapse">
                <i class="icon wb-more-horizontal" aria-hidden="true"></i>
            </button>
            <div class="navbar-brand navbar-brand-center site-gridmenu-toggle" data-toggle="gridmenu">
                <img class="navbar-brand-logo" src=" <?= base_url() ?>assets/base/assets/images/logo3.png " title="Remark">
                <span class="navbar-brand-text hidden-xs-down"> E-Accident </span>
            </div>
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

                <!-- Navbar Toolbar Right -->
                <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                    <div class="navbar-brand navbar-brand-center site-gridmenu-toggle" data-toggle="gridmenu">
                        <span class="navbar-brand-text hidden-xs-down"><?= $this->session->userdata('nama'); ?></span>
                    </div>
                    <li class="nav-item dropdown">
                        <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false" data-animation="scale-up" role="button">
                            <span class="avatar avatar-online">
                                <img src=" <?= base_url() ?>assets/global/portraits/pp.gif " alt="...">
                                <i></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Profile</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-settings" aria-hidden="true"></i> Settings</a>
                            <div class="dropdown-divider" role="presentation"></div>
                            <a class="dropdown-item" href="<?= base_url('auth/logout') ?>" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Logout</a>
                        </div>
                    </li>
                </ul>
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
    <div class="site-menubar">
        <div class="site-menubar-body">
            <div>
                <div>
                    <ul class="site-menu" data-plugin="menu">
                        <li class="site-menu-category">General</li>
                        <li class="site-menu-item has-sub">
                            <a href="{{'itcs'}}">
                                <i class="site-menu-icon wb-dashboard" aria-hidden="true"></i>
                                <span class="site-menu-title">Dashboard</span>
                                <div class="site-menu-badge">
                                    <span class="badge badge-pill badge-success">3</span>
                                </div>
                            </a>
                            <!-- <ul class="site-menu-sub">
                                <li class="site-menu-item">
                                    <a class="animsition-link" href="../index.html">
                                        <span class="site-menu-title">Dashboard v1</span>
                                    </a>
                                </li>
                            </ul> -->
                        </li>
                        <li class="site-menu-category">Main Menu</li>
                        <li class="site-menu-item has-sub">
                            <a href="javascript:void(0)">
                                <i class="icon fa-calendar-plus-o" aria-hidden="true"></i>
                                <span class="site-menu-title">Kecelakaan Kerja</span>
                                <span class="site-menu-arrow"></span>
                            </a>
                            <ul class="site-menu-sub">
                                <li class="site-menu-item">
                                    <a class="animsition-link" href="<?= base_url('lik') ?>">
                                        <span class="site-menu-title">Lap Kecelakaan Kerja</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php if ($this->session->userdata('role') == 0) { ?>
                            <li class="site-menu-category">Settings</li>
                            <li class="site-menu-item has-sub">
                                <a href="javascript:void(0)">
                                    <i class="site-menu-icon wb-users" aria-hidden="true"></i>
                                    <span class="site-menu-title">Karyawan</span>
                                    <span class="site-menu-arrow"></span>
                                </a>
                                <ul class="site-menu-sub">
                                    <li class="site-menu-item">
                                        <a class="animsition-link" href="<?= base_url('dept') ?>">
                                            <span class="site-menu-title">Dept</span>
                                        </a>
                                    </li>
                                    <li class="site-menu-item">
                                        <a class="animsition-link" href="<?= base_url('user') ?>">
                                            <span class="site-menu-title">User</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>

        <div class="site-menubar-footer">
            <a href="javascript: void(0);" class="fold-show" data-placement="top" data-toggle="tooltip" data-original-title="Settings">
                <span class="icon wb-settings" aria-hidden="true"></span>
            </a>
            <a href="javascript: void(0);" data-placement="top" data-toggle="tooltip" data-original-title="Lock">
                <span class="icon wb-eye-close" aria-hidden="true"></span>
            </a>
            <a href="javascript: void(0);" data-placement="top" data-toggle="tooltip" data-original-title="Logout">
                <span class="icon wb-power" aria-hidden="true"></span>
            </a>
        </div>
    </div>