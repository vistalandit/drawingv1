<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">
    <?php
      foreach($data_menu as $detail)
      {

    ?>
    <li class="nav-item">
      <a class="nav-link collapsed" href="<?php echo base_url();?>index.php/c_test/index">
        <i class="bi bi-grid"></i><span><?php echo  $detail->menu_name;?></span>
      </a>
    </li>

    <?php
    }
    ?>


    <!-- <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-journal-text"></i><span>Activity Log</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
                        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                          <li>
                            <a href="<?php echo base_url();?>index.php/c_test/elements" >
                              <i class="bi bi-circle"></i><span>Entry Activity Log
                              </span>
                            </a>
                          </li>
                          <li>
                            <a href="<?php echo base_url();?>index.php/c_test/general">
                              <i class="bi bi-circle"></i><span>View Activity Log</span>
                            </a>
                          </li>
                          <li>
                            <a href="<?php echo base_url();?>index.php/c_test/chart">
                              <i class="bi bi-circle"></i><span>Chart Activity Log</span>
                            </a>
                          </li>
                        </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-layout-text-window-reverse"></i><span>Inventory</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
                    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                      <li>
                        <a href="<?php echo base_url();?>index.php/c_test/elements" >
                          <i class="bi bi-circle"></i><span>Add Inventory
                          </span>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo base_url();?>index.php/c_test/general">
                          <i class="bi bi-circle"></i><span>View Inventory</span>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo base_url();?>index.php/c_test/chart">
                          <i class="bi bi-circle"></i><span>Chart Inventory</span>
                        </a>
                      </li>
                    </ul>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="<?php echo base_url();?>index.php/c_test/index">
        <i class="bi bi-bar-chart"></i><span>Red Tag</span>
      </a>
    </li>



    <li class="nav-item">
      <a class="nav-link collapsed" href="<?php echo base_url();?>index.php/c_test/index">
        <i class="bi bi-gem"></i><span>ATK</span>
      </a>
    </li> -->


  </ul>

</aside>
