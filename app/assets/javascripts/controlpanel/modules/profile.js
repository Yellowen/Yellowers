
angular.module('Profile', [])
  .config(['$stateProvider', function($stateProvider){
    $stateProvider.
          state('changepassword', {
            url: '/profile/changepassword',
            templateUrl: '/dashboard/profile/changepassword'
        })
  }]);
