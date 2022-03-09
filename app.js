function frgtPss() {
    swal(
        "Forgot Password?",
        "Please contact your Administrator - 7057620205",
        "warning"
    );
}

function snackbar() {
    var snackbar = document.getElementById("snackbar");
    snackbar.className = "show";
    setTimeout(function() {
        snackbar.className = snackbar.className.replace("show", "");
    }, 3000);
}

$(document).ready(function() {
    $(window).scroll(function() {
        if ($(document).scrollTop() > 100) {
            $("#down").css("display", "none");
            $("nav").css("background-color", "#1b2448");
        } else {
            $("nav").css("background-color", "transparent");
            $("#down").css("display", "block");
        }
    });
});

if ($(document).height() <= 763) {
    $("#down").css("display", "none");
}

function scrollWin(x, y) {
    window.scrollBy(x, y);
}

function hell() {
    alert("Helllllll");
}

function successalert() {
    swal(
        "Congratulations!",
        "Your property has been succesfully listed",
        "success"
    );
}

function loginFail() {
    swal("Sorry!", "No User Found :(", "error");
}

function msgSent() {
    swal("Thank You For Your Feedback!", "We'll Contact You Soon", "success");
}

function regisSucc() {
    swal("Great!", "You've Been Registered Successfully", "success");
}

function cngUsn() {
    swal(
        "The Username is not available!",
        "Please choose something else...",
        "error"
    );
}


function delAcc() {
    swal(
        "Tenant Found?",
        "Please contact your Administrator - 7057620205 to delete this property.",
        "warning"
    );
}