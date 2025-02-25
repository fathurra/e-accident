<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">

    <title>Login | E-Accident </title>

    <link rel="apple-touch-icon" href="<?= base_url() ?>assets/base/assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="<?= base_url() ?>assets/base/assets/images/favicon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/base/assets/css/site.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/global/vendor/flag-icon-css/flag-icon.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/base/assets/examples/css/pages/login-v2.css">


    <!-- Fonts -->
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

<body class="animsition page-login-v2 layout-full page-dark">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->


    <style>
        body {
            background: transparent;
        }
    </style>
    <!-- Page -->
    <div class="page" data-animsition-in="fade-in" data-animsition-out="fade-out">

        <div class="page-content">
            <div class="page-brand-info">
                <div class="brand">
                    <img class="brand-img" src="<?= base_url() ?>assets/base/assets/images/logo3.png" alt="...">
                    <h2 class="brand-text font-size-40">E-ACCIDENT</h2>
                </div>
                <p class="font-size-20">Laporkan Kecelakaan Kerja</p>
            </div>

            <div class="page-login-main animation-slide-right animation-duration-1">
                <div class="brand hidden-md-up">
                    <img class="brand-img" src="<?= base_url() ?>assets/base/assets/images/logo-colored@2x.png" alt="...">
                    <h3 class="brand-text font-size-40">Remark</h3>
                </div>
                <h3 class="font-size-24">Sign In</h3>

                <form method="post" action="<?= base_url('auth/login') ?>">
                    <?php
                    if (isset($_GET['pesan'])) {
                        if ($_GET['pesan'] == 'gagal') {
                            echo "<div class='alert alert-danger'>Login gagal! Username dan password salah.</div>";
                        } elseif ($_GET['pesan'] == 'logout') {
                            echo "<div class='alert alert-danger'>Anda Telah Logout.</div>";
                        } elseif ($_GET['pesan'] == 'belumlogin') {
                            echo "<div class='alert alert-success'>Silahkan login dulu.</div>";
                        }
                    }
                    ?>
                    <div class="form-group">
                        <label class="sr-only" for="inputNIK">NIK</label>
                        <input type="text" class="form-control" id="inputNIK" name="nik" placeholder="NIK">
                        <small class="text-danger"><?php echo form_error('nik'); ?></small>
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="inputPassword">Password</label>
                        <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
                        <small class="text-danger"><?php echo form_error('password'); ?></small>
                    </div>
                    <!-- <div class="form-group clearfix">
                        <div class="checkbox-custom checkbox-inline checkbox-primary float-left">
                            <input type="checkbox" id="rememberMe" name="rememberMe">
                            <label for="rememberMe">Remember me</label>
                        </div>
                        <a class="float-right" href="forgot-password.html">Forgot password?</a>
                    </div> -->
                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                </form>


                <footer class="page-copyright">
                    <p>WEBSITE BY IT Dept</p>
                    <p>© 2020. All RIGHT RESERVED.</p>

                </footer>
            </div>

        </div>
    </div>
    <!-- End Page -->


    <!-- Core  -->
    <script src="<?= base_url() ?>assets/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/jquery/jquery.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/popper-js/umd/popper.min.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/bootstrap/bootstrap.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/animsition/animsition.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/asscrollable/jquery-asScrollable.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>

    <!-- Plugins -->
    <script src="<?= base_url() ?>assets/global/vendor/switchery/switchery.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/intro-js/intro.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/screenfull/screenfull.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/slidepanel/jquery-slidePanel.js"></script>
    <script src="<?= base_url() ?>assets/global/vendor/jquery-placeholder/jquery.placeholder.js"></script>

    <!-- Scripts -->
    <script src="<?= base_url() ?>assets/global/js/Component.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Plugin.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Base.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Config.js"></script>

    <script src="<?= base_url() ?>assets/base/assets/js/Section/Menubar.js"></script>
    <script src="<?= base_url() ?>assets/base/assets/js/Section/GridMenu.js"></script>
    <script src="<?= base_url() ?>assets/base/assets/js/Section/Sidebar.js"></script>
    <script src="<?= base_url() ?>assets/base/assets/js/Section/PageAside.js"></script>
    <script src="<?= base_url() ?>assets/base/assets/js/Plugin/menu.js"></script>

    <script src="<?= base_url() ?>assets/global/js/config/colors.js"></script>
    <script src="<?= base_url() ?>assets/base/assets/js/config/tour.js"></script>
    <script>
        Config.set('assets', '<?= base_url() ?>assets/base/assets');
    </script>

    <!-- Page -->
    <script src="<?= base_url() ?>assets/base/assets/js/Site.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Plugin/asscrollable.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Plugin/slidepanel.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Plugin/switchery.js"></script>
    <script src="<?= base_url() ?>assets/global/js/Plugin/jquery-placeholder.js"></script>

    <script>
        (function(document, window, $) {
            'use strict';

            var Site = window.Site;
            $(document).ready(function() {
                Site.run();
            });
        })(document, window, jQuery);
    </script>
</body>

</html>