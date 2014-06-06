BookRouter = angular.module("BookRouter", [])

# set up the angular router during the config state of the application
BookRouter.config(["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
  $routeProvider
    .when("/books", {
      templateUrl: "/books_templates/index",
      controller: "BooksCtrl"
    })
    .when("/books/:id", {
      templateUrl: "/books_templates/show",
      controller: "BookDetailsCtrl"
    })
    .otherwise({
      redirectTo: "/books" 
    })
  $locationProvider.html5Mode(true)
])