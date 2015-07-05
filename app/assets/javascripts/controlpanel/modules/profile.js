angular.module('Profile', [])
  .config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state('edit-password', {
            url: '/profile/editpassword',
            templateUrl: '/dashboard/profile/editpassword'
        });
  }]);

console.log("3434343");
