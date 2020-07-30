$(document).ready(function(){

    $(".news_type_select").change(function(){

        if($(this).val() === "image"){

            $(".video_url_container").hide();
            $(".image_upload_container").fadeIn();

        } else if ($(this).val() === "video"){

            $(".image_upload_container").hide();
            $(".video_url_container").fadeIn();

        }

    })

})