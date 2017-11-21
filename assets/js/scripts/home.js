//Javascript here
$(function() {
    $(".search-dropdown-toggle").keyup(function(){
        $('.search_results').html("");
        var search_phrase = $(this).val();
        if(search_phrase.length > 1){
            $.ajax({
                method: "POST",
                url: BASE_URL + "product/getProductsLike",
                data: {
                    phrase: search_phrase
                }
            })

                .done(function(products) {
                    list = jQuery.parseJSON(products);
                    var list_html = "";
                    $.each(list, function(index, value){
                        list_html += "<li><a href = '"+BASE_URL+"product/view/"+value.ID+"'>"+value.Name+" ("+value.category_name+")</a></li>";
                    });

                    if(list.length == 0){
                        list_html = "<li><a href ='#'>No results.</a></li>";
                    }
                    var current_html = $(".search_bar").html();

                    if(current_html != list_html){
                        $(".search_results").html(list_html);
                    }
                })

                .fail(function(id){
                    console.log(id);
                });

            $('.search-dropdown-toggle').dropdown('toggle');
        } else{
            $('.search_results').removeClass('show');
        }
    });
});