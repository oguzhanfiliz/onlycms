<!DOCTYPE html>
<html lang="en">
	<head>
		<?php $this->load->view("include/head");?>


	</head>

<body class="menubar-left menubar-unfold menubar-light theme-primary">
<!--============= start main area -->

	<!-- APP NAVBAR ==========-->
		<?php $this->load->view("include/navbar");?>


	<!--========== END app navbar -->

	<!-- APP ASIDE ==========-->
		<?php $this->load->view("include/aside");?>
	<!--========== END app aside -->

	<!-- navbar search -->
		<?php $this->load->view("include/navbar_search");?>
	<!-- .navbar-search -->

<!-- APP MAIN ==========-->
<main id="app-main" class="app-main">
  <div class="wrap">
	<section class="app-content">
		<?php $this->load->view("{$viewFolder}/{$subViewFolder}/content");?>
	</section>
	  <!-- #dash-content -->
</div>

	<!-- .wrap -->

  <!-- APP FOOTER -->
 <?php $this->load->view("include/footer");?>
  <!-- /#app-footer -->
</main>
<!--========== END app main -->

<!-- APP CUSTOMIZER -->


<!-- SIDE PANEL -->
	<?php $this->load->view("include/navbar_search");?>
<!-- /#side-panel -->

	<!-- build:js ../assets/js/core.min.js -->
	<?php $this->load->view("include/script");?>
	<?php $this->load->view("{$viewFolder}/{$subViewFolder}/page_script");?>
</body>
</html>
