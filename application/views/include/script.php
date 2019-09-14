<!-- build:js ../assets/js/core.min.js -->
<script src="<?php echo base_url("assets");?>/libs/bower/jquery/dist/jquery.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/jQuery-Storage-API/jquery.storageapi.min.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/bootstrap-sass/assets/javascripts/bootstrap.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/jquery-slimscroll/jquery.slimscroll.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/PACE/pace.min.js"></script>
<!-- endbuild -->

<!-- build:js ../assets/js/app.min.js -->


<!--<script src="<?php /*echo base_url("assets");*/?>/assets/js/library.js"></script>
-->
<!--library klasörünü include içinde php'ye dönüştürdüğüm için include altında library klasöründe diye yükledim burda. Eski hali yukarıdadır-->
<?php $this->load->view("include/library");?>


<script src="<?php echo base_url("assets");?>/assets/js/plugins.js"></script>
<script src="<?php echo base_url("assets");?>/assets/js/app.js"></script>
<!-- endbuild -->
<script src="<?php echo base_url("assets");?>/libs/bower/moment/moment.js"></script>
<script src="<?php echo base_url("assets");?>/libs/bower/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="<?php echo base_url("assets");?>/js/fullcalendar.js"></script>
<script src="<?php echo base_url("assets");?>/js/sweetalert2.all.min.js"></script>
<script src="<?php echo base_url("assets");?>/js/iziToast.min.js"></script>
<?php $this->load->view("include/alert"); ?>
<!--<script src="<?php /*echo base_url("assets");*/?>/js/custom.js"></script>-->

