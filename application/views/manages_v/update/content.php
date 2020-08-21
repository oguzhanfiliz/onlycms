<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->title</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("manages/update/$item->id"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Ad Soyad</label>
                        <input class="form-control" placeholder="Başlık" name="title" value="<?php echo $item->title; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Teknokent Ünvanı</label>
                        <input class="form-control" placeholder="Teknokent Ünvanı" name="description" value="<?php echo $item->description; ?>">
                    </div>
                    <div class="form-group">
                        <label>Kişinin Ünvanı</label>
                        <input class="form-control" placeholder="Ünvan" name="unvan" value="<?php echo $item->unvan; ?>">
                    </div>
                    <div class="form-group">
                        <label>Kategori</label>

                        <select name="category" class="form-control">
                            <option <?php echo $item->category ==="Yönetim Kurulu Başkanı"  ? "selected" : ""; ?> value="Yönetim Kurulu Başkanı">Yönetim Kurulu Başkanı</option>
                            <option <?php echo $item->category ==="Yönetim Kurulu Başkan Vekili"  ? "selected" : ""; ?> value="Yönetim Kurulu Başkan Vekili">Yönetim Kurulu Başkan Vekili</option>
                            <option <?php echo $item->category ==="Üye" ? "selected" : ""; ?> value="Üye">Üye</option>
                        </select>

                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("category_id"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="row">

                        <div class="col-md-1 image_upload_container">
                            <img src="<?php echo base_url("uploads/$viewFolder/$item->img_url"); ?>" alt="" class="img-responsive">
                        </div>

                        <div class="col-md-9 form-group image_  upload_container">
                            <label>Görsel Seçiniz</label>
                            <input type="file" name="img_url" class="form-control">
                        </div>

                    </div>
                    <br>

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("manages"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>