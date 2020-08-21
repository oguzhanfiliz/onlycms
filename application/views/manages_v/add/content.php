<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Yeni Ekip Üyesi Ekle
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("manages/save"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Ad Soyad</label>
                        <input class="form-control" placeholder="Başlık"
                               name="title"
                               value="<?php echo isset($form_error) ? set_value("title") : ""; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label >Teknokent Ünvanı</label>
                        <input class="form-control" placeholder="Teknokent Ünvanı" name="description" value="<?php echo isset($form_error) ? set_value("description") : ""; ?>">

                    </div>
                    <div class="form-group">
                        <label>Kişinin Ünvanı</label>
                        <input class="form-control" placeholder="Ünvan" name="unvan">

                    </div>
                    <div class="form-group">
                        <label>Kategori</label>

                        <select name="category" class="form-control">
                            <option value="Yönetim Kurulu Başkanı">Yönetim Kurulu Başkanı</option>
                            <option value="Yönetim Kurulu Başkan Vekili">Yönetim Kurulu Başkan Vekili</option>
                            <option value="Üye">Üye</option>
                        </select>

                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("category_id"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group image_upload_container">
                        <label>Görsel Seçiniz</label>
                        <input type="file" name="img_url" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("manages"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>