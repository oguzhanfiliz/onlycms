<div class="row">
	<div class="col-md-12">
		<h4 class="m-b-lg">Ürün Listesi
			<a href="#" class="btn btn-outline btn-primary btn-sm pull-right"> <i class="fa fa-plus">Yeni Ekle</i></a>

		</h4>
	</div>

	<!-- END column -->

		<div class="col-md-12">
			<div class="widget">
				<hr class="widget-separator">
				<div class="widget-body">
					<form action="<?php echo base_url("product/save");?>" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Başlık</label>
							<input type="email" class="form-control" placeholder="Başlık" name="title">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							<input type="password" class="form-control"  placeholder="Password">
						</div>
						<div class="form-group">
							<label>Açıklama</label>
							<textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}" placeholder="Açıklamayı giriniz"></textarea>
						</div>
						<div class="form-group">
							<div class="checkbox checkbox-primary">
								<input type="checkbox" id="checkbox-demo-1"/>
								<label for="checkbox-demo-1">Check me out</label>
							</div>
						</div>

						<button type="submit" class="btn btn-primary btn-md">Kaydet</button>
						<a href="<?php echo base_url("product");?>" class="btn btn-md btn-danger btn-outline">İptal</a>

					</form>
				</div><!-- .widget-body -->
			</div><!-- .widget -->
	</div></div>
