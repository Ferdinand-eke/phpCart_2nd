
<?php
session_start();
$link = mysqli_connect("localhost","root", "ferazi");
mysqli_select_db($link, "shopping_cart_am");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Admin Panel</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/nav.css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" type="text/css" href="css/ie6.css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" /><![endif]-->

    <link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.min.css">
    <!-- BEGIN: load jquery -->
    <script src="js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.effects.core.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui/jquery.effects.slide.min.js" type="text/javascript"></script>
    <!-- END: load jquery -->
    <!-- BEGIN: load jqplot -->
    <link rel="stylesheet" type="text/css" href="css/jquery.jqplot.min.css" />
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="js/jqPlot/excanvas.min.js"></script><![endif]-->
    <script language="javascript" type="text/javascript" src="js/jqPlot/jquery.jqplot.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jqPlot/plugins/jqplot.barRenderer.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jqPlot/plugins/jqplot.pieRenderer.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jqPlot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jqPlot/plugins/jqplot.highlighter.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jqPlot/plugins/jqplot.pointLabels.min.js"></script>
    <!-- END: load jqplot -->
    <script src="js/setup.js" type="text/javascript"></script>

</head>
<body>





<div class="container" style="width: 400px; margin-top:50px ">
    <div class="card mx-auto" style="width: 20rem;">
        <h2 class="text-primary">
            Admin Login
        </h2>
<!--        <img class="card-img-top mx-auto" style="height:60%; width: 100%;"  src="img/wood.png" alt="Login icon">-->
        <div class="card-body" style="background: transparent;">
            <h4 class="card-title"></h4>
            <form class="login-container" action="" method="POST" name="form1">



                <label for="email">Username</label>
                <input type="text" name="username" class="form-control"   placeholder="Enter Username" required>

                <br>

                <label for="password">Password</label>
                <input type="password" name="pwd" class="form-control"  placeholder="Enter Password" required>
                <br>

                <input type="submit" name="submit1" class="btn btn-primary" value="Submit" id="submit" />
                <span><a href="#">Register</a></span>
            </form>
        </div>
        <div class="card-footer"><a href="#">Forgot Password?</a></div>
    </div>

</div>

            <?php
            if(isset($_POST["submit1"]))
            {

                $res=mysqli_query($link, "select * from admin_login where username='$_POST[username]' && password='$_POST[pwd]'");
                while($row=mysqli_fetch_array($res))
                {
                    $_SESSION["admin"]=$row["username"];
                    ?>

                    <script type="text/javascript">
                        window.location="add_product.php";
                    </script>

                    <?php
                }
            }

            ?>




<script  src="js/jquery-1.6.4.min.js"></script>
</body>
</html>