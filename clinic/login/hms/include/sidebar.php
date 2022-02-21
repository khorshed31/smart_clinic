<div class="sidebar app-aside" id="sidebar">
				<div class="sidebar-container perfect-scrollbar">

<nav>
						
						<!-- start: MAIN NAVIGATION MENU -->
						<div class="navbar-title">
							<span>Main Navigation</span>
						</div>
    <?php $query=mysqli_query($con,"select image from users where userId='".$_SESSION['id']."'");
    while($row=mysqli_fetch_array($query))
    {?>
        <img src="assets/images/upload/<?php echo $row['image']?>" alt="" width="65%">
    <?php }
    ?>
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
								<a href="book-appointment.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-pencil-alt"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Book Appointment </span>
										</div>
									</div>
								</a>
							</li>

							<li>
								<a href="appointment-history.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-list"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Appointment History </span>
										</div>
									</div>
								</a>
							</li>
<li>
								<a href="manage-medhistory.php">
									<div class="item-content">
										<div class="item-media">
											<i class="ti-list"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Medical History </span>
										</div>
									</div>
								</a>
							</li>

                            <li>
                                <a href="all_amb.php">
                                    <div class="item-content">
                                        <div class="item-media">
                                            <i class="ti-truck"></i>
                                        </div>
                                        <div class="item-inner">
                                            <span class="title"> Ambulance</span>
                                        </div>
                                    </div>
                                </a>
                            </li>

						</ul>
						<!-- end: CORE FEATURES -->
						
					</nav>
					</div>
			</div>