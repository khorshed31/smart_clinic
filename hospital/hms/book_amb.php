<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
$book_id=intval($_GET['id']);
$user_id = $_SESSION['id'];
if(isset($_POST['submit']))
{
$sql=mysqli_query($con,"select * from ambulance where amb_id='$book_id'");
while($data=mysqli_fetch_array($sql)) {
    $num = $data['number'];
}
    if ($num != 0){
        $sql = mysqli_query($con, "insert into book_amb(userId,amb_id) values('$user_id','$book_id')");
        $msg = "Ambulance Booked Successfully";
        $num = $num-1;
        $sql=mysqli_query($con,"Update ambulance set number ='$num' where amb_id='$book_id'");
    }
    else{
        $msg = "Ambulance Not Available";
    }



}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Patient | Booked Ambulance</title>

    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
    <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/plugins.css">
    <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />


</head>
<body>
<div id="app">
    <?php include('include/sidebar.php');?>
    <div class="app-content">

        <?php include('include/header.php');?>
        <!-- start: MENU TOGGLER FOR MOBILE DEVICES -->

        <!-- end: TOP NAVBAR -->
        <div class="main-content" >
            <div class="wrap-content container" id="container">
                <!-- start: PAGE TITLE -->
                <section id="page-title">
                    <div class="row">
                        <div class="col-sm-8">
                            <h1 class="mainTitle">Patient | Booked Ambulance</h1>
                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span>Patient</span>
                            </li>
                            <li class="active">
                                <span>Booked Ambulance</span>
                            </li>
                        </ol>
                    </div>
                </section>
                <!-- end: PAGE TITLE -->
                <!-- start: BASIC EXAMPLE -->
                <div class="container-fluid container-fullw bg-white">
                    <div class="row">
                        <div class="col-md-12">
                            <h5 style="color: green; font-size:18px; ">
                                <?php if($msg) { echo htmlentities($msg);}?> </h5>
                            <div class="row margin-top-30">
                                <div class="col-lg-8 col-md-12">
                                    <div class="panel panel-white">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">Edit Doctor info</h5>
                                        </div>
                                        <div class="panel-body">
                                            <?php $sql=mysqli_query($con,"select * from ambulance where amb_id='$book_id'");
                                            while($data=mysqli_fetch_array($sql))
                                            {
                                                $num = $data['number'];
                                            ?>

                                            <hr />
                                            <form role="form" name="adddoc" method="post" onSubmit="return valid();">
                                                <div class="form-group">
                                                    <label>
                                                        Number of Ambulance
                                                    </label>
                                                    <input type="text" readonly name="amb_num" class="form-control" value="<?php echo htmlentities($data['number']);?>"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Start Time
                                                    </label>
                                                    <input type="text" readonly name="s_time" class="form-control" value="<?php echo htmlentities($data['s_time']);?>"/>
                                                </div>

                                                <div class="form-group">
                                                    <label>
                                                        End Time
                                                    </label>
                                                    <input type="text" readonly name="e_time" class="form-control" value="<?php echo htmlentities($data['e_time']);?>"/>
                                                </div>


                                                <?php } ?>


                                                <button type="submit" name="submit" class="btn btn-o btn-primary">
                                                    Booked
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end: BASIC EXAMPLE -->






        <!-- end: SELECT BOXES -->

    </div>
</div>
</div>
<!-- start: FOOTER -->
<?php include('include/footer.php');?>
<!-- end: FOOTER -->

<!-- start: SETTINGS -->
<?php include('include/setting.php');?>
<>
<!-- end: SETTINGS -->
</div>
<!-- start: MAIN JAVASCRIPTS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/modernizr/modernizr.js"></script>
<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="vendor/switchery/switchery.min.js"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="vendor/autosize/autosize.min.js"></script>
<script src="vendor/selectFx/classie.js"></script>
<script src="vendor/selectFx/selectFx.js"></script>
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<!-- start: CLIP-TWO JAVASCRIPTS -->
<script src="assets/js/main.js"></script>
<!-- start: JavaScript Event Handlers for this page -->
<script src="assets/js/form-elements.js"></script>
<script>
    jQuery(document).ready(function() {
        Main.init();
        FormElements.init();
    });
</script>
<!-- end: JavaScript Event Handlers for this page -->
<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>
</html>


