<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->title</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("teams/update/$item->id"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="title" value="<?php echo $item->title; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Ünvan</label>
                        <input class="form-control" placeholder="Ünvan" name="description" value="<?php echo $item->description; ?>">
                    </div>
                    <div class="form-group">
                        <label>Kategori</label>

                        <select name="category" class="form-control">
                            <option <?php echo$item->category ==="GENEL MÜDÜR"  ? "selected" : ""; ?> value="Genel Müdür">GENEL MÜDÜR</option>
                            <option <?php echo$item->category ==="GENEL MÜDÜR YARDIMCISI"  ? "selected" : ""; ?> value="GENEL MÜDÜR YARDIMCISI">GENEL MÜDÜR YARDIMCISI</option>
                            <option <?php echo$item->category ==="İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI" ? "selected" : ""; ?> value="İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI">İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI</option>
                        </select>

                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("category_id"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="row">

                        <div class="col-md-1 image_upload_container">
                            <img src="<?php echo base_url("uploads/$viewFolder/$item->img_url"); ?>" alt="" class="img-responsive">
                        </div>

                        <div class="col-md-9 form-group image_upload_container">
                            <label>Görsel Seçiniz</label>
                            <input type="file" name="img_url" class="form-control">
                        </div>

                    </div>
                    <br>

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("teams"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>