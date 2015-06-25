window.STATIC_REQUIREMENTS = window.STATIC_REQUIREMENTS || [];
window.STATIC_REQUIREMENTS.push('Sites');
angular.module('Sites', [])
  .config(['$stateProvider', function($stateProvider){
    $stateProvider
      .state('sites-new', {
            url: '/sites/new',
            templateUrl: '/dashboard/sites/new'
        });
  }]);
