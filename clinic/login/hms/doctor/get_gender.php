<?php
include('include/config.php');

if(!empty($_POST["email"]))
{

    $sql=mysqli_query($con,"select gender from users where userId ='".$_POST['email']."'");?>
    <?php
    while($row=mysqli_fetch_array($sql))
    {?>

        <option value="<?php echo htmlentities($row['gender']); ?>"><?php echo htmlentities($row['gender']); ?></option>
        <?php
    }
}

?>
