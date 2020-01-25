$(document).ready(function(){

	$(".news_type_select").change(function () {//classı news_type_select olan divi seçtik

		if($(this).val()=== "image"){//eğer valuesi image eşitse
			$(".video_upload_container").hide();
			$(".image_upload_container").fadeIn();//classı fadeIn ile göster
		}else if($(this).val()==="video"){//eğer valuesi video eşits
			$(".image_upload_container").hide();
			$(".video_upload_container").fadeIn();
		}

	})

})
