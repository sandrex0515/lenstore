var app = angular.module('app', ['ngRoute']);

app.config(function ($routeProvider){

    $routeProvider
    
    .when('/',
    {
            controller  : 'mainController',
            templateUrl         : './partials/main.html' 
    })
    .otherwise({redirecTo: '/' });
});