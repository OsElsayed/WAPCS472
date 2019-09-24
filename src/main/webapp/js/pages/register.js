const reg = (() => {
    const subButton = $('#register');
    const form = subButton.parents('form').first();
    const locks = $('.reg-pass');
    function init() {
        subButton.click(() => {
            if (!_validate()) {
                const post = form.serializeArray();
                $.post({
                    url:'Register',
                    data:post,
                    dataType:'json'
                }).done((data) => {
                    myT.success(data);
                }).fail((data) => {
                    myT.error(data);
                })
            }
        });
        locks.click((e) => {
            const pass = $(e.target).parent().siblings('input');
            if(pass.attr('type') === 'password'){
                pass.attr('type','text');
                e.target.className = 'la la-eye-slash';
            }else{
                pass.attr('type','password');
                e.target.className = 'la la-eye';
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
        if(form.find('[name=password]').val() !== form.find('[name=repeat-password]').val()){
            arr.push('The passwords do not match!');
        }
        if (arr.length === 0)
            return true;
        else
            _showErrorMessage(arr);
    }

    function _showErrorMessage(arr) {
        $.each(arr,(index,el) => {
           myT.error(el);
        });
    }

    return {
        init: init
    }
})();