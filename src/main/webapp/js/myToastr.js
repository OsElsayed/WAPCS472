const myT = (() => {

    toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": true,
            "progressBar": true,
            "positionClass": "toast-top-center",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "slideDown",
            "hideMethod": "fadeOut"
    };

    function error(message) {
        toastr.error(message);
    }

    function success(message) {
        toastr.success(message);
    }

    function warning(message) {
        toastr.warning(message);
    }

    return{
        error:error,
        success:success,
        warning:warning
    }
})();