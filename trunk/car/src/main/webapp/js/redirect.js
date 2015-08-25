if (window.location.hash) {
    var parsedUrl = window.location.hash.split('/');
    if (parsedUrl[1] == 'startup') {
        window.location = CONFIG.siteUrl + 'startup/view/' + parsedUrl[2];
    }
    else if (parsedUrl[1] == 'startuplist') {
        window.location = CONFIG.siteUrl + 'startuplist/view/' + parsedUrl[2];
    }
}

