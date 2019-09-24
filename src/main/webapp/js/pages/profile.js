$(document).ready(function () {
    $.get("Profile")
        .done(function (data) {
            console.log(data);
        })
        .fail(function (err) {
            console.error(err);
        });
})