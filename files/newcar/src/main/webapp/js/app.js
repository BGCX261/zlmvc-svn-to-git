String.prototype.parseComment = function() {
    return this.replace(/#([A-Za-z0-9\u4e00-\u9fa5_-]+)#/g, function(match, p1) {
        return '<a href="' + CONFIG.siteUrl + 'search/startup?keyword=' + encodeURIComponent(p1) + '">#' + p1 + '#</a>';
    }).replace(/@([A-Za-z0-9\u4e00-\u9fa5_-]+)/g, function(match, p1) {
        return '<a href="' + CONFIG.siteUrl + 'search/user?keyword=' + encodeURIComponent(p1) + '">@' + p1 + '</a>';
    });
};

String.prototype.parseTeamMember = function() {
    var team = this.split(/ /);
    var result = '';
    if (team[0] && team[0] != '暂缺') {
        for (var i in team) {
            var member = team[i].split(/\//);
            if (member[0] && member[1])
                result += '<a href="' + CONFIG.siteUrl + 'search/people?keyword=' + encodeURIComponent(member[0]) + '">' + member[0] + '</a>/' + member[1] + ' ';
        }
        return result;
    }
    else {
        return '暂缺';
    }
};