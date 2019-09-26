$(document).ready(function () {
    // $.get("Profile")
    //     .done(function (data) {
    //         //console.log(data);
    //     })
    //     .fail(function (err) {
    //         //console.error(err);
    //     });
    $('#btnSave').click(function () {
        let $username = $('#username').val();
        let $imageUrl = $('#imageUrl').val();
        $.ajax({
            url: 'ProfileUpdate',
            type: 'post',
            data: {
                username: $username,
                imageUrl: $imageUrl
            },
            success: function () {
                myT.success("Updated Successfully ..");
            },
            error: function () {
                alert("You are looooser .. ");
            }
        })
    });
    $('#submit_btn').click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        let $comment = $('#comment').val();
        let $photo = $('#photo').val();
        $.ajax(
            {
                url: 'Profile',
                type: 'POST',
                data: {
                    comment: $comment,
                    photo: $photo
                },
                success: function () {
                    myT.success("Post Sent Successfully");
                    setTimeout(function(){ window.location.reload(); }, 2000);
                },
                error: () => {
                    myT.error('Failed');
                }
            });
    });
})
