<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>User  | Book Ambulance</title>

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

        <!-- end: TOP NAVBAR -->
        <div class="main-content" >
            <div class="wrap-content container" id="container">
                <!-- start: PAGE TITLE -->
                <section id="page-title">
                    <div class="row">
                        <div class="col-sm-8">
                            <h1 class="mainTitle">User | Book Ambulance</h1>
                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span>User</span>
                            </li>
                            <li class="active">
                                <span>Book Ambulance</span>
                            </li>
                        </ol>
                </section>
                <!-- end: PAGE TITLE -->
                <!-- start: BASIC EXAMPLE -->
                <div class="container-fluid container-fullw bg-white">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="row margin-top-30">
                                <div class="col-lg-8 col-md-12">
                                    <div class="panel panel-white">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Search Ambulance</h3>

                                        </div>
                                        <h5>Start Time Between</h5>
                                        <div class="panel-body">
                                            <p style="color:red;"><?php echo htmlentities($_SESSION['msg1']);?>
                                                <?php echo htmlentities($_SESSION['msg1']="");?></p>
                                            <form role="form" name="book" method="post" >
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="AppointmentDate">
                                                            Time 1
                                                        </label>
                                                        <input type="time" class="form-control" name="t1"  required="required">

                                                    </div>

                                                    <div class="form-group col-md-6">
                                                        <label for="AppointmentDate">
                                                            Time 2
                                                        </label>
                                                        <input type="time" class="form-control" name="t2"  required="required">

                                                    </div>
                                                </div>


                                                <button type="submit" name="submit" class="btn btn-o btn-primary">
                                                    Submit
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <!-- end: BASIC EXAMPLE -->

                <div class="container-fluid container-fullw bg-white">


                    <div class="row">
                        <div class="col-md-12">
                            <h5 class="over-title margin-bottom-15">Manage <span class="text-bold">Ambulance</span></h5>
                            <p style="color:red;"><?php echo htmlentities($_SESSION['msg']);?>
                                <?php echo htmlentities($_SESSION['msg']="");?></p>
                            <table class="table table-hover" id="sample-table-1">
                                <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>Number of Ambulance</th>
                                    <th>Start Time</th>
                                    <th>End Time</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                if(isset($_POST['submit'])) {

                                    $t1 = $_POST['t1'];
                                    $t2 = $_POST['t2'];
                                    $sql = mysqli_query($con, "SELECT * FROM ambulance WHERE s_time BETWEEN '$t1' AND '$t2'");
                                }
                                $cnt=1;
                                while($row=mysqli_fetch_array($sql))
                                {
                                    $num = $row['number'];
                                    ?>

                                    <tr>
                                        <td class="center"><?php echo $cnt;?>.</td>
                                        <td class="hidden-xs"><?php echo $row['number'];?></td>
                                        <td class="hidden-xs"><?php echo $row['s_time'];?></td>
                                        <td class="hidden-xs"><?php echo $row['e_time'];?></td>

                                        <td >
                                            <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                <?php if ($num != 0) {?>
                                                    <a href="book_amb.php?id=<?php echo $row['amb_id'];?>" class="btn btn-transparent btn-xs" tooltip-placement="top" tooltip="Edit">Book</a>
                                                <?php } else {?>
                                                    <a href="" class="btn btn-transparent btn-xs disabled" tooltip-placement="top" tooltip="Edit">Booked</a>
                                                <?php }?>
                                            </div>
                                            <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                <div class="btn-group" dropdown is-open="status.isopen">
                                                    <button type="button" class="btn btn-primary btn-o btn-sm dropdown-toggle" dropdown-toggle>
                                                        <i class="fa fa-cog"></i>&nbsp;<span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu pull-right dropdown-light" role="menu">
                                                        <li>
                                                            <a href="#">
                                                                Edit
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                Share
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                Remove
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div></td>
                                    </tr>

                                    <?php
                                    $cnt=$cnt+1;
                                }?>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>





                <!-- end: SELECT BOXES -->

            </div>
        </div>
    </div>
    <!-- start: FOOTER -->
    <?php include('include/footer.php');?>
    <!-- end: FOOTER -->

    <!-- start: SETTINGS -->
    <?php include('include/setting.php');?>

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

    $('.datepicker').datepicker({
        format: 'yyyy-mm-dd',
        startDate: '-3d'
    });
</script>
<script type="text/javascript">
    $('#timepicker1').timepicker();
</script>
<!-- end: JavaScript Event Handlers for this page -->
<!-- end: CLIP-TWO JAVASCRIPTS -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>

</body>
</html>

