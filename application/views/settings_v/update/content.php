<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->company_name</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div><!-- END column -->

    <div class="col-md-12">
        <form action="<?php echo base_url("settings/update/$item->id"); ?>" method="post" enctype="multipart/form-data">
            <div class="widget">
                <div class="m-b-lg nav-tabs-horizontal">
                    <!-- tabs list -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab-1" aria-controls="tab-3" role="tab" data-toggle="tab">Site Bilgileri</a></li>
                        <li role="presentation"><a href="#tab-6" aria-controls="tab-6" role="tab" data-toggle="tab">Adres Bilgisi</a></li>
                        <li role="presentation"><a href="#tab-2" aria-controls="tab-1" role="tab" data-toggle="tab">Hakkımızda</a></li>
                        <li role="presentation"><a href="#tab-3" aria-controls="tab-2" role="tab" data-toggle="tab">Misyon</a></li>
                        <li role="presentation"><a href="#tab-4" aria-controls="tab-3" role="tab" data-toggle="tab">Vizyon</a></li>
                        <li role="presentation"><a href="#tab-5" aria-controls="tab-4" role="tab" data-toggle="tab">Sosyal Medya</a></li>
                        <li role="presentation"><a href="#tab-7" aria-controls="tab-7" role="tab" data-toggle="tab">Logo</a></li>
                    </ul><!-- .nav-tabs -->

                    <!-- Tab panes -->
                    <div class="tab-content p-md">

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/site_info"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/address"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/about_us"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/mission"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/vision"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/social_media"); ?>

                        <?php $this->load->view("$viewFolder/$subViewFolder/tabs/logo"); ?>

                    </div><!-- .tab-content  -->
                </div><!-- .nav-tabs-horizontal -->
            </div><!-- .widget -->

            <div class="widget">
                <div class="widget-body">
                    <button type="submit" class="btn btn-primary btn-md">Güncelle</button>
                    <a href="<?php echo base_url("settings"); ?>" class="btn btn-md btn-danger">İptal</a>
                </div>
            </div>

        </form>
    </div><!-- END column -->

</div>