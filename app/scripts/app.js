'use strict';

/**
 * @ngdoc overview
 * @name pantallaMantenimientoApp
 * @description
 * # pantallaMantenimientoApp
 *
 * Main module of the application.
 */
angular
  .module('pantallaMantenimientoApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
