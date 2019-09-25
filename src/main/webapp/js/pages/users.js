const users = (() => {

    function init() {
        const users = $('div[data-id]');
        const enable = users.find('button[data-enable]');
        const admin = users.find('button[data-admin]');

        enable.click(enableClick);
        admin.click(adminClick);
    }

    function enableClick(e) {
        const en = $(e.target).data('enable');
        const id = $(e.target).parents('div[data-id]').data('id');
        const data = {id: id, enable: en};
        updateUser(data);
    }

    function adminClick(e) {
        const en = $(e.target).data('admin');
        const id = $(e.target).parents('div[data-id]').data('id');
        const data = {id: id, admin: en};
        updateUser(data);
    }

    function updateUser(data) {
        $.post({
            url: 'users',
            data: data,
            dataType: 'json'
        }).done((resp) => {
            updateDisplay(resp);
        }).error((error) => {
            myT.error(error)
        });
    }

    function updateDisplay(resp) {
        const div = $('div[data-id=' + resp.Id + ']');
        const btEn = div.find('button[data-enable]');
        const btAd = div.find('button[data-admin]');

        if (resp.isActive !== undefined) {
            btEn.data('enable', !resp.isActive);
            btEn.empty();
            if (resp.isActive) {
                btEn.append($('<i>', {
                    class: 'la la-user-times'
                }));
                btEn.append('Disable');
            } else {
                btEn.append($('<i>', {
                    class: 'la la-user'
                }));
                btEn.append('Activate');
            }
        }
        if (resp.isAdmin !== undefined) {
            btAd.data('admin', !resp.isAdmin);
            btAd.empty();
            if (resp.isAdmin) {
                btAd.append($('<i>', {
                    class: 'la la-minus-circle'
                }));
                btAd.append('Remove Admin');
            } else {
                btAd.append($('<i>', {
                    class: 'la la-user-secret'
                }));
                btAd.append('Make Admin');
            }
        }
    }

    return {
        init: init
    }
})();