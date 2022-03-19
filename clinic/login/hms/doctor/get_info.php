<?php
include('include/config.php');

if(!empty($_POST["p_name"]))
{

    $sql=mysqli_query($con,"select * from users where userId ='".$_POST['p_name']."'");?>
    <?php
    while($row=mysqli_fetch_array($sql))
    {?>
        <option value="<?php echo htmlentities($row['userId']); ?>"><?php echo htmlentities($row['email']); ?></option>
        <?php
    }
}

if(!empty($_POST["uid"]))
{

    $sql=mysqli_query($con,"select * from users where userId ='".$_POST['uid']."'");?>
    <?php
    while($row=mysqli_fetch_array($sql))
    {?>
        <option value="<?php echo htmlentities($row['userId']); ?>"><?php echo htmlentities($row['age']); ?></option>
        <?php
    }
}
if(!empty($_POST["uuid"]))
{

    $sql=mysqli_query($con,"select * from users where userId ='".$_POST['uuid']."'");?>
    <?php
    while($row=mysqli_fetch_array($sql))
    {?>
        <option value="<?php echo htmlentities($row['userId']); ?>"><?php echo htmlentities($row['phone']); ?></option>
        <?php
    }
}

?>

