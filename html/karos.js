function welcomeOpen() {
    $('body').fadeIn();
    setTimeout(function() {
        $('body').fadeOut();
        welcomeClose(); 
    }, 5000);
}

window.addEventListener("message", function(event) {
    let data = event.data;

    if (data.type === "welcome_open") {
        // console.log('apertura');
        welcomeOpen();
    }
});

window.addEventListener("message", function(event) {
    let data = event.data;

    if (data.type === "welcome_close") {
        // console.log('chiusura');
        welcomeClose();
    }
});