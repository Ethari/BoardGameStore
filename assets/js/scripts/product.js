//Javascript here
$(function() {
    $("#purchase_paypal").click(function(){
        $(".payment_content").hide();
        $(".loader_container").show();
        $("#shipping_info").submit();
    });

    $( "#shipping_info" ).validate({
        rules: {
            first_name: {
                required: true
            },
            surname: {
                required: true
            },
            address: {
                required: true
            },
            city: {
                required: true
            },
            zip: {
                required: true
            },
            email: {
                required: true,
                email: true
            }

        },

        messages: {
            first_name: "First name is required",
            surname: "Surname is required",
            address: "Address is required",
            city: "City is required",
            zip: "Zip code is required",
            email: "Email is required"
        },

        submitHandler: function () {
            var form_data = $('#shipping_info').serialize();

            var request = $.ajax({
                method: "POST",
                url: BASE_URL + "payment/startPayment/",
                data: form_data
            });

            request.done(function (link) {
                window.location.href = link;
            });

            // callback handler that will be called on failure
            request.fail(function (jqXHR, textStatus, errorThrown) {
            });
        }
    });
});