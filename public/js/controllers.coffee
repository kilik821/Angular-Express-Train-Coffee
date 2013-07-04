module = angular.module 'myApp.controllers', []

module.controller 'IndexCtrl', ['$scope', '$http', ($scope, $http) -> ]


module.controller 'LoginCtrl', ['$scope', '$http', '$rootScope', '$location', ($scope, $http, $rootScope, $location) ->
  $scope.user = {}
  $scope.statusMessage = ""

  #figure out where we should redirect to once the user has logged in.
  $rootScope.redirect = "/todos"  if not $rootScope.redirect or $rootScope.redirect is "/login"
  $scope.submit = (user) ->
    $http.post("/user/login", $scope.user).success((data) ->
      $rootScope.user.username = $scope.user.username
      $location.path $rootScope.redirect
    ).error (data, status, headers, config) ->
      $scope.statusMessage = data
]

module.controller 'RegisterCtrl', ['$scope', '$http', '$rootScope', '$location', ($scope, $http, $rootScope, $location) ->
  $scope.user = {}
  $scope.statusMessage = ""
  $scope.submit = (user) ->
    $http.post("/user/register", $scope.user).success((data) ->
      $rootScope.user.username = $scope.user.username
      $location.path "/todos"
    ).error (data, status, headers, config) ->
      $scope.statusMessage = data
]