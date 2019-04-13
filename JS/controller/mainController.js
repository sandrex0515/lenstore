app.controller('mainController', function(
                                $scope,
                                mainFactory
){


    $scope.holder = {};     
    $scope.modal = {};
    $scope.product = {};
    $scope.fetch = {};
    $scope.filter = {};
    fetch();
    
    function fetch(){
        var filter = {
            searchString    : $scope.filter.searchString,
            random          : 'random'
        };
        if(filter.searchString == undefined){
            filter.searchString = '';
        }
        var promise = mainFactory.fetch(filter);
            promise.then(function(data){
                $scope.fetch = data.data.result;
                $scope.fetch.status1 = true;
                console.log($scope.fetch);
                $scope.fetch.tatal = 0;
                    for(var i in $scope.fetch){
                        
                        
                        if($scope.fetch[i].status == 'pending'){
                        $scope.fetch.ll = $scope.fetch[i].qty * $scope.fetch[i].price;
                        $scope.fetch.tatal += $scope.fetch.ll;
                        
                    }
                    
                    
                }
                console.log($scope.fetch.tatal);
            })
            .then(null, function(data){
                $scope.fetch.status1 = false;
            })
    }
    $scope.change = function(){
        fetch();
    }
    $scope.add = function(){
        var promise = mainFactory.add($scope.product);
            promise.then(function(data){
                alert('Success');
                fetch();
            })
            .then(null, function(data){
                alert('Connection Error');
            });
    }





});