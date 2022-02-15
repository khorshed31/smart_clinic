<?php
include('include/config.php');

if(!empty($_POST["p_name"]))
{

    $sql=mysqli_query($con,"select email from users where fullName ='".$_POST['p_name']."'");?>
    <?php
    while($row=mysqli_fetch_array($sql))
    {?>
        <option value="<?php echo htmlentities($row['email']); ?>"><?php echo htmlentities($row['email']); ?></option>
        <?php
    }
}

?>

