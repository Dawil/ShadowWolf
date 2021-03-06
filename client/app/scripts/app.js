'use strict';

angular.module('ShadowWolf', ['ngResource',
                              'ngRoute',
                              'ngSanitize',
                              'config',
                              'ui.bootstrap',
                              'angulartics',
                              'angulartics.google.analytics',
                              'contenteditable',
                              'ipCookie'])
  .config(function ($routeProvider, $httpProvider, $analyticsProvider) {
    $httpProvider.defaults.useXDomain = true;
    delete $httpProvider.defaults.headers.common['X-Requested-With'];
    $routeProvider
      .when('/', {
        //templateUrl: 'views/main.html',
        redirectTo: '/people/'
      })
      .when('/people', {
        templateUrl: 'views/people/index.html',
        controller: 'PeopleIndexController'
      })
      .when('/people/:personId', {
        templateUrl: 'views/people/show.html',
        controller: 'PeopleShowController'
      })
      .when('/projects', {
        templateUrl: 'views/projects/index.html',
        controller: 'ProjectsIndexController'
      })
      .when('/projects/:projectId', {
        templateUrl: 'views/projects/show.html',
        controller: 'ProjectsShowController'
      })
      .when('/callback/', {
        template: '<span></span>', // doesn't seem to work without some html
        controller: 'CallbackController'
      })
      .when('/extras', {
        templateUrl: 'views/misc_page/index.html',
        controller: 'ExtrasController'
      })
      .otherwise({
        redirectTo: '/people/'
      });
  })
  .run(function(ENV){
    switch (ENV) {
      case 'development': ga('create', 'UA-93352-16','auto'); break;
      case 'production': ga('create', 'UA-93352-17','auto'); break;
    }
  });
