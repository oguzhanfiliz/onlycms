<div class="row">
	<div class="col-md-12">
		<h4 class="m-b-lg">Ürün Listesi
			<a href="<?php echo base_url("product/new_form"); ?>" class="btn btn-outline btn-primary btn-sm pull-right"> <i class="fa fa-plus">Yeni Ekle</i></a>

		</h4>
	</div>

	<!-- END column -->

		<div class="col-md-12">
			<div class="widget p-lg">
				<!-- items boş ise bu uyarıyı vericek değilse elseye geçicek. -->
				<?php if(empty($items)) {?>

					<div class="alert alert-info">
						<h5 class="alert-title">Kayıt Bulunamadı.</h5>
						<p>Yeni bir veri eklemek için <a href="<?php echo base_url("product/new_form"); ?>">tıklayınız.</a></p>
					</div>
				<?php } else {?>
					<table class="table table-hover table-striped">
						<thead>
						<th>#id</th>
						<th>url</th>
						<th>Ad</th>
						<th>Açıklama</th>
						<th>Durumu</th>
						<th>İşlem</th>

						</thead>
						<tbody>
						<!--Veritabanında kaç sorgu varsa o kadar döndürüyor-->
						<?php foreach ($items as $item) {?>

							<tr>
								<!-- Tablodaki verileri almak için kullanılıyor. -->
								<td>#<?php echo $item->id;?></td>
								<td><?php echo $item->url;?></td>
								<td><?php echo $item->title;?></td>
								<td><?php echo $item->description;?></td>
								<td>
									<input id="switch-2-2" type="checkbox" data-switchery data-color="#10c469" <?php echo ($item->isActive) ?"checked" : "";?>/> 	<!-- isActive 1 ise checked yazıcak değilse class boş kalıcak  -->

								</td>
								<td>

									<button type="button" class="btn btn-sm btn-danger btn-outline"><i class="fa fa-remove"></i>Sil</button>
									<button type="button" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i>Düzenle</button>

								</td>
							</tr>
						<?php	} ?>
						</tbody>
					</table> <?php	}?>
			</div><!-- .widget -->
	</div></div>
