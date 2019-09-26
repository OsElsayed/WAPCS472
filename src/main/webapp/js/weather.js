const weather = (() => {
    const cont = $('#weather');
    let loc = cont.data('loc');
    let data = {
        apikey:'m11eTvtr88WWLU7mJP5vtnpCAL0G5a7x',
        q:loc.replace('/',',')
    };

    function init() {
        if (loc === undefined || loc.length === 0) {
            const showME = $('<button>', {
                class: 'show-weather',
                text: 'Show weather',
                click: _getLocation
            });
            cont.append(showME);
        } else {
            _showLocation();
        }
    }

    function _getLocation() {
        if ("geolocation" in navigator) {
            navigator.geolocation.getCurrentPosition(function (position) {
                loc = position.coords.latitude + '/' + position.coords.longitude;
                data = {
                    apikey: data.apikey,
                    q:loc.replace('/',',')
                };
                cont.empty();
                _showLocation();
            });
        } else {
            myT.warning('Geo location is disabled in your browser!');
        }
    }

    function _showLocation() {
        $.ajax({
            url: 'http://dataservice.accuweather.com/locations/v1/cities/geoposition/search',
            type: 'get',
            dataType:'jsonp',
            data: data,
            success: _getForecast,
            error: _error
        });
    }

    function _getForecast(resp) {
        $.ajax({
            url: 'http://dataservice.accuweather.com/forecasts/v1/daily/1day/' +  resp.Key,
            type: 'get',
            data: data,
            dataType:'jsonp',
            success: _displayForecast,
            error: _error
        });
    }
    function _error(error) {
        myT.error(error);
    }
    function _displayForecast(resp) {
        const minCont = $('<div>',{class:'suggestion-usd'});
        const min = $('<div>',{class:'sgt-text'});
        let img = $('<img>',{src:'http://techgenix.com/tgwordpress/wp-content/uploads/2018/02/snowflake-2910087_1920-1024x791.png?ezimgfmt=rs:382x295/rscb1', class:'weather-img'});
        let h3 = $('<h3>',{text:'Minimum'});
        let span = $('<span>',{text:resp.DailyForecasts[0].Temperature.Minimum.Value + resp.DailyForecasts[0].Temperature.Minimum.Unit});
        min.append(h3,span);
        minCont.append(img,min);
        const maxCont = $('<div>',{class:'suggestion-usd'});
        const max = $('<div>',{class:'sgt-text'});
        const maxImg = $('<img>',{src:'https://cdn3.iconfinder.com/data/icons/symbol-1-1/36/12-512.png', class:'weather-img'});
        const maxH3 = $('<h3>',{text:'Maximum'});
        const maxSpan = $('<span>',{text:resp.DailyForecasts[0].Temperature.Maximum.Value + resp.DailyForecasts[0].Temperature.Maximum.Unit});
        max.append(maxH3,maxSpan);
        maxCont.append(maxImg,max);
        cont.append(minCont,maxCont);
    }

    return {
        init: init
    }
})();