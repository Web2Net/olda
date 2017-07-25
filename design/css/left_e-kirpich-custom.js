 jQuery.noConflict();
     jQuery(document).ready(function(){



    jQuery('.contentheadingproduct h1').addClass('mainHeading');
    jQuery('.mainHeading').after('<a href="#makeOrderForm" class="makeOrder" style="cursor: pointer;">Заказать</a>');
    jQuery('.module_phone').append('<a href="#makeCallbackForm" class="makeCallback" style="cursor: pointer;">Заказать обратный звонок</a>')

    jQuery(function() {
        var defaultText = jQuery('#name').val();
       jQuery('#name').focus(function() {
            if (jQuery(this).val() == defaultText){
                jQuery(this).val('');
            }
        });

        jQuery('#name').blur(function() {
            if (jQuery(this).val() == ''){
                jQuery(this).val(defaultText);
            }
        });
    });


    jQuery(function() {
        var defaultText = jQuery('#name2').val();
        jQuery('#name2').focus(function() {
            if (jQuery(this).val() == defaultText){
                jQuery(this).val('');
            }
        });

        jQuery('#name2').blur(function() {
            if (jQuery(this).val() == ''){
                jQuery(this).val(defaultText);
            }
        });
    });

    jQuery(function() {
        var defaultText = jQuery('#email').val();
        jQuery('#email').focus(function() {
            if (jQuery(this).val() == defaultText){
                jQuery(this).val('');
            }
        });

        jQuery('#email').blur(function() {
            if (jQuery(this).val() == ''){
                jQuery(this).val(defaultText);
            }
        });
    });

    jQuery(function() {
        var defaultText = jQuery('#email2').val();
        jQuery('#email2').focus(function() {
            if (jQuery(this).val() == defaultText){
                jQuery(this).val('');
            }
        });

        jQuery('#email2').blur(function() {
            if (jQuery(this).val() == ''){
                jQuery(this).val(defaultText);
            }
        });
    });

    jQuery(function() {
        var defaultText = jQuery('#comment').val();
        jQuery('#comment').focus(function() {
            if (jQuery(this).val() == defaultText){
                jQuery(this).val('');
            }
        });

        jQuery('#comment').blur(function() {
            if (jQuery(this).val() == ''){
                jQuery(this).val(defaultText);
            }
        });
    });

    jQuery('#hidden').val(document.location.href);

    });
