
angular.module('app.letters', [])

.controller('AController', function ($scope, $http) {
    $scope.text = 'This is text from the controller for view "/a"';

    $scope.lowercase = function () {
        data = {
            letters: $scope.apiText
        }
        $http.post('/lowercase', data)
            .success( function (response) {
                console.log(response);
                $scope.apiText = response.letters;
            })
            .error( function (err) {
                console.log(err.message);
            });
    };
})

.controller('BController', function ($scope) {
    $scope.text = 'This is text from the controller for view "/a"';
});
