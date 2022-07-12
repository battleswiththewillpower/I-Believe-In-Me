/**
 * 
 */
 
 
 //PAYPAL SDK 
   PayPal.Donation.Button({
       env: 'sandbox',
     /*   hosted_button_id: 'YOUR_SANDBOX_HOSTED_BUTTON_ID', */
       business: 'sb-zdp9w17496854@business.example.com',
       image: {
           src: 'https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif',
           title: 'PayPal - The safer, easier way to pay online!',
           alt: 'Donate with PayPal button'
       },
       onComplete: function (params) {
           // Your onComplete handler
        /*    return params.order.capture().then(function(details){
        	   window.location.href = "approve.html"; 
           });   */
    	   $('#donor-message').text('Thank you so much for your monthly donation!');
    	   $('#donor-message').addClass('fs-4');
    	   $('#paypal-donate-button-container').addClass('d-none');
    
       },
   }).render('#paypal-donate-button-container');