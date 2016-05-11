angular.module('app.routes', [])

.config(function($stateProvider, $urlRouterProvider) {

  // Ionic uses AngularUI Router which uses the concept of states
  // Learn more here: https://github.com/angular-ui/ui-router
  // Set up the various states which the app can be in.
  // Each state's controller can be found in controllers.js
  $stateProvider
    
  

      .state('tabsController', {
    url: '/page1',
    templateUrl: 'templates/tabsController.html',
    abstract:true
  })

  .state('tabsController.kursi', {
    url: '/pkursi',
    views: {
      'tab2': {
        templateUrl: 'templates/kursi.html',
        controller: 'kursiCtrl'
      }
    }
  })

  .state('tabsController.meja', {
    url: '/pmeja',
    views: {
      'tab1': {
        templateUrl: 'templates/meja.html',
        controller: 'mejaCtrl'
      }
    }
  })

  .state('tabsController.lemari', {
    url: '/plemari',
    views: {
      'tab3': {
        templateUrl: 'templates/lemari.html',
        controller: 'lemariCtrl'
      }
    }
  })

  .state('tabsController.ranjang', {
    url: '/pranjang',
    views: {
      'tab4': {
        templateUrl: 'templates/ranjang.html',
        controller: 'ranjangCtrl'
      }
    }
  })

$urlRouterProvider.otherwise('/page1/pkursi')

  

});