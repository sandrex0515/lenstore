app.factory('mainFactory', function($http){

    var factory = {};


    factory.add = function(data){
        var promise = $http({
            url: './php/FUNCTIONS/add.php',
            method: 'POST',
            headers: {'Content-Type' : 'application/x-www-form-urlencoded'},
            transformRequest: function(obj){
                var str = [];
                for(var p in obj)
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                return str.join("&");
                },
                data: data  
        });
        return promise;
    };
    factory.fetch = function(data){
        var promise = $http({
            url: './php/FUNCTIONS/fetch.php',
            method: 'POST',
            headers: {'Content-Type' : 'application/x-www-form-urlencoded'},
            transformRequest: function(obj){
                var str = [];
                for(var p in obj)
                    str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                return str.join("&");
                },
                data: data  
        });
        return promise;
    };
    return factory;
    });