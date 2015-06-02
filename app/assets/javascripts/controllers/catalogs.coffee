app.controller 'catalogs', [ '$scope', '$http', '$location',  ($scope, $http, $location) ->

			
	$url = '/api/catalogs' + $location.path();	
		
	$http.get $url
 		.success (data, status, headers, config) -> $scope.items = data;
	    
]