$(function () {

    let modal = document.getElementById("myModal");
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
    let img = document.getElementById("myImg");
    let modalImg = document.getElementById("img01");
    let captionText = document.getElementById("caption");
    img.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }


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
                },
                error: () => {
                    alert('Failed');
                }
            });
    });

    $(document).on('click','.remove',function (){
       alert($(this).attr('id'));
    });


});
