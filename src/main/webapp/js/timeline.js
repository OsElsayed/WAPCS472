$(function () {
    let number = 1;
    const loader = $('#loader');
    let allow = true;
    $(document).on('click', '.idFollow', function () {
        let $followId = $(this).attr('id');
        let name = $(this).attr('name');
        let self = $(this);
        $.ajax({
            url: 'Follow',
            type: 'post',
            data: {
                followId: $followId
            },
            success: function () {
                console.log(self.text());
                if (self.text() === "Follow") {
                    self.text('Unfollow');
                    myT.success("You are now following " + name);
                } else {
                    self.text('Follow');
                    myT.warning("You unfollowed " + name);
                }

            }
        })
    });

    setInterval(function () {
        $.get('notification', {
            dataType: "JSON",
        }).done(shiva);
    }, 5000);

    function shiva(data) {
        // let count = data.length;
        // $('#myCount').text(count);
        console.log("me");
    }

    $(window).on("scroll", function () {
        let scrollHeight = $(document).height();
        let scrollPosition = $(window).height() + $(window).scrollTop();
        if ((scrollHeight - scrollPosition) / scrollHeight === 0) {
            loader.show();
            if (allow) {
                $.ajax({
                    url: 'Posts',
                    type: 'get',
                    data: {
                        nu: number++
                    },
                    success: function (data) {
                        const resp = JSON.parse(data);
                        $.each(resp, function (index, ele) {
                            _createPost(ele);
                        });
                        if (resp.length === 0) {
                            myT.warning('There are no new posts!');
                            allow = false;
                        }
                        loader.hide();
                    },
                    error: function (data) {
                        myT.error("Failed...");
                        $('div[data-id]')
                    }
                });
            }
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
                    comment: $comment,
                    photo: $photo
                },
                success: function () {
                    myT.success("Post Sent Successfully");
                    setTimeout(function () {
                        window.location.reload();
                    }, 2000);

                },
                error: () => {
                    alert('Failed to make Ajax Call');
                }
            });
    });

    function _createPost(data) {
        let html = '<div class="post-bar">\n' +
            '                                                <div class="post_topbar">\n' +
            '                                                    <div class="usy-dt">\n' +
            '                                                        <img src="${post.user.image.imageUrl}" alt=""\n' +
            '                                                             style="width: 50px" height="50px">\n' +
            '                                                        <div class="usy-name">\n' +
            '                                                            <h3>' + data.user.username + '</h3>\n' +
            '                                                            <span id="timeStart"><img src="../images/clock.png"\n' +
            '                                                                                      alt="">' + data.creationDate + '</span>\n' +
            '                                                        </div>\n' +
            '                                                    </div>\n' +
            '                                                    <div class="ed-opts">\n' +
            '                                                        <a href="index.html#" title="" class="ed-opts-open"><i\n' +
            '                                                                class="la la-ellipsis-v"></i></a>\n' +
            '                                                        <ul class="ed-options">\n' +
            '                                                            <li><a href="" class="remove" title="">Remove</a></li>\n' +
            '                                                                <li><a href="" class="remove" id="${post.id}" title="">{admin}</a>\n' +
            '                                                                </li>\n' +
            '                                                        </ul>\n' +
            '                                                    </div>\n' +
            '                                                </div>\n' +
            '                                                <div class="epi-sec">\n' +
            '                                                    <ul class="bk-links">\n' +
            '                                                        <li><a href="" title=""><i\n' +
            '                                                                class="la la-bookmark"></i></a></li>\n' +
            '                                                        <li><a href="" title=""><i\n' +
            '                                                                class="la la-envelope"></i></a></li>\n' +
            '                                                    </ul>\n' +
            '                                                </div>\n' +
            '                                                <div class="job_descp">\n' +
            '                                                    <p>' + data.description + '</p>\n' +
            '                                                    {image} \n ' +
            '                                                    <ul class="skill-tags">\n' +
            '                                                    </ul>\n' +
            '                                                </div>\n' +
            '                                                <div class="job-status-bar">\n' +
            '                                                    <ul class="like-com">\n' +
            '                                                        <li>\n' +
            '                                                            <a href="index.html#"><i class="fas fa-heart"></i> Like</a>\n' +
            '                                                            <img src="../images/liked-img.png" alt="">\n' +
            '                                                            <span>25</span>\n' +
            '                                                        </li>\n' +
            '                                                        <li><a href="index.html#" class="com"><i\n' +
            '                                                                class="fas fa-comment-alt"></i> Comment 15</a></li>\n' +
            '                                                    </ul>\n' +
            '                                                    <a href="index.html#"><i class="fas fa-eye"></i>Views 50</a>\n' +
            '                                                </div>\n' +
            '                                            </div>';
        if (data.images !== undefined) {
            const imgHtml = '<img id="${post.id}" src="' + data.images.imageUrl + '"\n' +
                '                                                             alt="${post.description}"\n' +
                '                                                             onerror="this.src=\'http://leeford.in/wp-content/uploads/2017/09/image-not-found.jpg\';"\n' +
                '                                                             data-id="' + data.images.id + '"/>\n' +
                '\n' +
                '                                                        <!-- The Modal -->\n' +
                '                                                        <div id="myModal" class="modal">\n' +
                '\n' +
                '                                                            <!-- The Close Button -->\n' +
                '                                                            <span class="close">&times;</span>\n' +
                '\n' +
                '                                                            <!-- Modal Content (The Image) -->\n' +
                '                                                            <img id="img01" src="' + data.images.imageUrl + '"\n' +
                '                                                                 alt="Image not found"\n' +
                '                                                                 onerror="this.src=\'http://leeford.in/wp-content/uploads/2017/09/image-not-found.jpg\';"/>\n' +
                '\n' +
                '                                                            <!-- Modal Caption (Image Text) -->\n' +
                '                                                            <div id="caption"></div>\n' +
                '                                                        </div>\n';
            html = html.replace('{image}', imgHtml);
        } else {
            html = html.replace('{image}', '');
        }
        if (data.user.isAdmin) {
            html = html.replace('{admin}', 'Block');
        } else {
            html = html.replace('{admin}', 'Unblock');
        }
        const div = $('div.posts-section');
        div.append(html);
    }

    $(document).on('click', '.remove', function () {
        let $blockId = $(this).attr('id');
        $.ajax({
            url: 'BlockUser',
            type: "post",
            data: {
                blockId: $blockId
            },
            success: () => {
                myT.success("Post Blocked Successfully");
                setTimeout(function () {
                    window.location.reload();
                }, 2500);
            },
            error: (error) => {
                myT.error(error);
            }
        })

    });
    let modalImg = document.getElementById("img01");
    let modal = document.getElementById("myModal");
    let captionText = document.getElementById("caption");
    const $images = $('img[data-id]');
    $images.each(function (index, ele) {
        ele.onclick = function () {
            modal.style.display = "block";
            modalImg.src = ele.src;
            captionText.innerHTML = ele.alt;
        }
    });
    let span = document.getElementsByClassName("close")[0];
    span.onclick = function () {
        modal.style.display = "none";
    }
});
