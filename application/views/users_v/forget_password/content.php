<div class="simple-page-wrap">
    <div class="simple-page-logo animated swing">
        <a href="index.html">
            <span><i class="fa fa-gg"></i></span>
            <span>CMS</span>
        </a>
    </div><!-- logo -->
    <div class="simple-page-form animated flipInY" id="reset-password-form">
        <h4 class="form-title m-b-xl text-center">Şifrenizi mi unuttunuz ?</h4>

        <form action="<?php echo base_url("reset-password"); ?>" method="post">
            <div class="form-group">
                <input
                    type="email"
                    class="form-control"
                    placeholder="E-posta Adresi"
                    name="email"
                    value="<?php echo isset($form_error) ? set_value("email") : ""; ?>">

                <?php if(isset($form_error)){ ?>
                    <small class="pull-right input-form-error"> <?php echo form_error("email"); ?></small>
                <?php } ?>

            </div>
            <button class="btn btn-primary">Şifremi Sıfırla</button>
        </form>
    </div><!-- #reset-password-form -->

</div><!-- .simple-page-wrap -->
