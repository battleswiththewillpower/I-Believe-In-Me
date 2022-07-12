/**
 * 
 */
 
console.log("AShley for the winnnnn")

//parallex
let smoke = document.getElementById("smoke");
let rightText = document.getElementById("right-text");
let ballerina = document.getElementById("ballerina");
let audience = document.getElementById("stage");

window.addEventListener('scroll', function(){
	let value = window.scrollY;
	smoke.style.top = value * 0.5 + 'px';
	audience.style.top = value * 0.15 + 'px';
	ballerina.style.bottom = value * 0.01 + 'px';
	
})

const sliders = document.querySelectorAll('.slide');
const faded = document.querySelectorAll('.fade-in');


//create the observer
const appearOptions = {
	threshold: 0,
	rootMargin: "0px 0px -250px 0px"
};
const appearOnScroll = new IntersectionObserver(function(entries, appearOnScroll){
	entries.forEach(entry =>{
		if(!entry.isIntersecting){
			return;
		} else {
			entry.target.classList.add("appear");
			appearOnScroll.unobserve(entry.target);
		}
	})
}, appearOptions);

sliders.forEach(slide =>{
	appearOnScroll.observe(slide);
})

faded.forEach(fade =>{
	appearOnScroll.observe(fade);
})


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
    	   $('#donor-message').text('Thank you for your donation!');
    	   $('#donor-message').addClass('fs-4');
    	   $('#paypal-donate-button-container').addClass('d-none');
    
       },
   }).render('#paypal-donate-button-container');
   
   
   //PAYPAL SDK ON HERO
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
    	   $('#donor-message').text('Thank you for your donation!');
    	   $('#donor-message').addClass('fs-4');
    	   $('#paypal-donate-button-container').addClass('d-none');
    
       },

   }).render('#paypal-donate-button-container-2');