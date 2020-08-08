<!DOCTYPE html>
<html lang="tr">
<head>
    <?php $this->load->view("includes/head"); ?>
    <?php $this->load->view("{$viewFolder}/{$subViewFolder}/page_style"); ?>
</head>

<body class="simple-page">
<!--============= start main area -->

    <!-- APP MAIN ==========-->
        <?php $this->load->view("{$viewFolder}/{$subViewFolder}/content"); ?>
    <!--========== END app main -->

<?php $this->load->view("{$viewFolder}/{$subViewFolder}/page_script"); ?>

</body>
</html>