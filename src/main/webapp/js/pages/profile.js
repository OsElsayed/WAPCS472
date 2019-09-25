
$(document).ready(function () {
    $.get("Profile")
        .done(function (data) {
            console.log(data);
        })
        .fail(function (err) {
            console.error(err);
        });
    $('#btnSave').click(function () {
        let $username = $('#username').val();
        let $imageUrl = $('#imageUrl').val();
        $.ajax({
            url:'ProfileUpdate',
            type:'post',
            data:{
                username:$username,
                imageUrl:$imageUrl
            },
            success : function () {
              myT.success("Updated Successfully ..");
            },
            error:function () {
                alert("You are looooser .. ");
            }
        })
    });

})
