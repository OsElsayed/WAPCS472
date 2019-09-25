$(function () {

    $(window).on("scroll", function() {
        let scrollHeight = $(document).height();
        let scrollPosition = $(window).height() + $(window).scrollTop();
        if ((scrollHeight - scrollPosition) / scrollHeight === 0) {
            alert('test');
        }
    });

    $('#submit_btn').click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        let $comment = $('#comment').val();
        let $photo = $('#photo').val();
        $.ajax(
            {
                url: 'Timeline',
                type: 'POST',
                data: {
                    comment : $comment,
                    photo : $photo
                },
                success: function(){
                    myT.success("Post Sent Successfully");
                    setTimeout(function(){ window.location.reload(); }, 2000);

                },
                error: () => {
                    alert('Failed');
                }
            });
    });

    $(document).on('click','.remove',function (){
        let $blockId = $(this).attr('id');
        $.ajax({
            url : 'BlockUser',
            type : "post",
            data : {
                blockId : $blockId
            },
            success :  () => {
                myT.success("Post Blocked Successfully");
              window.location.reload();
            },
            error : (error) => {
                myT.error(error);
            }
        })

    });
    let modalImg = document.getElementById("img01");
    let modal = document.getElementById("myModal");
    let captionText = document.getElementById("caption");
    const $images = $('img[data-id]');
    $images.each(function (index, ele) {
        ele.onclick = function(){
            modal.style.display = "block";
            modalImg.src = ele.src;
            captionText.innerHTML = ele.alt;
        }
    });
    let span = document.getElementsByClassName("close")[0];
    span.onclick = function() {
        modal.style.display = "none";
    }
});
