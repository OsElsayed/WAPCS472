const reg = (() => {
    const subButton = $('#register');
    const form = subButton.parents('form').first();
    const locks = $('.reg-pass');
    const imgPlace = $('#imgPlace');
    const img = $('#img');

    function init() {
        subButton.click(() => {
            if (_validate()) {
                const post = form.serializeArray();
                post[post.length - 1] = {'name': 'term', 'value': form.find('input[type=checkbox]').is(':checked')};
                $.post({
                    url: 'Register',
                    data: post,
                    dataType: 'json'
                }).done((data) => {
                    myT.success('User created with success, now try logging in!');
                    $('li[data-tab=tab-1]').click();
                    form.reset();
                }).fail((data) => {
                    myT.error(data);
                })
            }
        });
        locks.click((e) => {
            const pass = $(e.target).parent().siblings('input');
            if (pass.attr('type') === 'password') {
                pass.attr('type', 'text');
                e.target.className = 'la la-eye-slash';
            } else {
                pass.attr('type', 'password');
                e.target.className = 'la la-eye';
            }
        });
        img.change(() => {
            const url = img.val();
            const validator = form.validate();
            if (url.length > 0 && validator.element(img)) {
                imgPlace.empty();
                imgPlace.append($('<img>', {src: url, class: 'profile-img'}));
            } else {
                myT.warning('This is a not valid image Url.')
            }
        });
    }

    function _validate() {
        const req = form.find('[data-required=true]');
        let arr = [];
        req.each((index, el) => {
            if (el.value === undefined || el.value.length === 0 || (el.type === 'checkbox' && !el.checked)) {
                arr.push('The field ' + el.name + ' is required.');
            }
        });
        if (form.find('[name=password]').val() !== form.find('[name=repeat-password]').val()) {
            arr.push('The passwords do not match!');
        }
        if (!form.valid()) {
            arr.push('There are missing fields in the form.')
        }
        if (arr.length === 0)
            return true;
        else
            _showErrorMessage(arr);
    }

    function _showErrorMessage(arr) {
        $.each(arr, (index, el) => {
            myT.error(el);
        });
    }

    return {
        init: init
    }
})();