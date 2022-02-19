<?php
session_start();
include 'config.php';
$id = $_SESSION['id'];
$sql=mysqli_query($con,"select * from admin where id = $id");
$row=mysqli_fetch_array($sql);

    $status = $row['status'];
?>


<div class="sidebar app-aside" id="sidebar">
				<div class="sidebar-container perfect-scrollbar">

<nav>
						
						<!-- start: MAIN NAVIGATION MENU -->
						<div class="navbar-title">
							<span>Main Navigation</span>
						</div>
						<ul class="main-navigation-menu">
							<li>
								<a href="dashboard.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-home"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Dashboard </span>
										</div>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-user"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Doctors </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									<li>
										<a href="doctor-specilization.php">
											<span class="title"> Doctor Specialization </span>
										</a>
									</li>
                                    <?php if($status == 1){?>
									<li>
										<a href="add-doctor.php">
											<span class="title"> Add Doctor</span>
										</a>
                                    <?php } ?>
									</li>
									<li>
										<a href="Manage-doctors.php">
											<span class="title"> Manage Doctors </span>
										</a>
									</li>
									
								</ul>
								</li>

				              <li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-user"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Users </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									
									<li>
										<a href="manage-users.php">
											<span class="title"> Manage Users </span>
										</a>
									</li>
									
								</ul>
								</li>
                            <?php if($status == 1){?>
                            <li>
                                <a href="javascript:void(0)">
                                    <div class="item-content">
                                        <div class="item-media">
                                            <i class="ti-user"></i>
                                        </div>
                                        <div class="item-inner">
                                            <span class="title"> Admin </span><i class="icon-arrow"></i>
                                        </div>
                                    </div>
                                </a>
                                <ul class="sub-menu">

                                    <li>
                                        <a href="admin.php">
                                            <span class="title"> Add Admin </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="show_admin.php">
                                            <span class="title"> Show Admin </span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            <?php }?>
                            <li>
                                <a href="javascript:void(0)">
                                    <div class="item-content">
                                        <div class="item-media">
                                            <i class="ti-truck"></i>
                                        </div>
                                        <div class="item-inner">
                                            <span class="title"> Ambulance </span><i class="icon-arrow"></i>
                                        </div>
                                    </div>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="add_amb.php">
                                            <span class="title"> Add Ambulance </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="manage_amb.php">
                                            <span class="title"> Manage Ambulance </span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
								<li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-user"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Patients </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									
									<li>
										<a href="manage-patient.php">
											<span class="title"> Manage Patients </span>
										</a>
									</li>
									
								</ul>
								</li>	

<li>
								<a href="appointment-history.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-file"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Appointment History </span>
										</div>
									</div>
								</a>
							</li>



				<li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-files"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Conatctus Queries </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									
									<li>
										<a href="unread-queries.php">
											<span class="title"> Unread Query </span>
										</a>
									</li>

									<li>
										<a href="read-query.php">
											<span class="title"> Read Query </span>
										</a>
									</li>
									
								</ul>
								</li>


                            <?php if($status == 1){?>
                            <li>
								<a href="doctor-logs.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-list"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Doctor Session Logs </span>
										</div>
									</div>
								</a>
							</li>
                            <?php } ?>


							<li>
								<a href="user-logs.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-list"></i>
										</div>
										<div class="item-inner">
											<span class="title"> User Session Logs </span>
										</div>
									</div>
								</a>
							</li>						
				<li>
								<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-files"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Reports </span><i class="icon-arrow"></i>
										</div>
									</div>
								</a>
								<ul class="sub-menu">
									
									<li>
										<a href="between-dates-reports.php">
											<span class="title">B/w dates reports </span>
										</a>
									</li>

									
									
								</ul>
								<li>
								<a href="patient-search.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-search"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Patient Search </span>
										</div>
									</div>
								</a>
							</li>
                            <li>
                                <a href="message.php">
                                    <div class="item-content">
                                        <div class="item-media">
                                            <i class="ti-envelope"></i>
                                        </div>
                                        <div class="item-inner">
                                            <span class="title"> Message </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
								</li>

						</ul>
						<!-- end: CORE FEATURES -->
						
					</nav>
					</div>
			</div>