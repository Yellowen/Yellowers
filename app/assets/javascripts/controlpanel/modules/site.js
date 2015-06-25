
angular.module('Site', [])
  .config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state('sites-new', {
            url: '/sites/new',
            templateUrl: '/dashboard/sites/new'
        });
  }]);
