
angular.module('app.letters', [])

.controller('AController', function ($scope) {
    $scope.text = 'This is text from the controller for view "/a"';
})

.controller('BController', function ($scope) {
    $scope.text = 'This is text from the controller for view "/a"';
});
