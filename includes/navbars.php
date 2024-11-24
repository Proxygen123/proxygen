<div id="wrapper" >
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar" >
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.php"  style="background: #88C273;">
        <div class="sidebar-brand-icon" >
          <img src="assets/img/school.png">
        </div>
        <div class="sidebar-brand-text mx-2" style="color: black;">ID GENERATOR</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item active"  style="backgruond">
        <a class="nav-link" href="dashboard.php" style="color: black; ">
          <i class="fas fa-fw fa-chart-bar" style="color: black; font-size: 20px;"></i>
          <span style="color: black; font-size: 15px;">Dashboard</span></a>
      </li>
      <hr class="sidebar-divider">
      <div class="sidebar-heading" style="color: black; font-size: 12px;">
        Features
      </div>
     
      <li class="nav-item ">
        <a class="nav-link" href="studentinfo.php">
          <i class="fas fa-user-tie p-1" style="color: black; font-size: 20px;"></i>
          <span style="color: black; font-size: 15px; font-weight: bold;"> Students Info</span>
        </a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="studentrecord.php">
          <i class="fas fa-fw fa-columns"  style="color: black; font-size: 20px;"></i>
          <span style="color: black; font-size: 15px; font-weight: bold;">Student ID's</span>
        </a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="archive.php">
          <i class="fas fa-fw fa-archive"  style="color: black; font-size: 20px;"></i>
          <span style="color: black; font-size: 15px; font-weight: bold;">Archive</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="settings.php">
          <i class="fas fa-fw fa-cogs"  style="color: black; font-size: 20px;"></i>
          <span style="color: black; font-size: 15px; font-weight: bold;">Settings</span>
        </a>
      </li>

      
      <hr class="sidebar-divider">
      <div class="version" style ="color: black; font-weight: bold;">Developed by: <?php echo $_SESSION['Fullname']; ?></div>
    </ul>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top" style="background: #88C273;">
          <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
             <li type="none" style="font-size: 25px; color: black; font-weight: bold;">
              PABLO VALENCIA NATIONAL HIGH SCHOOL
            </li>
          <ul class="navbar-nav ml-auto">

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                aria-labelledby="searchDropdown">
                <form class="navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-1 small" placeholder="What do you want to look for?"
                      aria-label="Search" aria-describedby="basic-addon2" style="border-color: #3f51b5;">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>
            <div class="topbar-divider d-none d-sm-block"></div>
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <img class="img-profile rounded-circle" src="img/boy.png" style="max-width: 60px; color: black; font-size: 15px; font-weight: bold; " >
                <span class="ml-2 d-none d-lg-inline text-white small" >
                  <?php 
                  if(isset($_SESSION['username'])){
                   echo 'Welcome'." ".$_SESSION['username'] ;
                  }


                  ?>


                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <form method="POST" action="backup.php" >
                 <button class="dropdown-item" type="submit" name="backup" onclick="confirm('Do you want to backup database?')" >
                  <i class="fas fa-file fa-sm fa-fw mr-2 "></i>
                  Backup
                </button>
              </form>
                <a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>  

