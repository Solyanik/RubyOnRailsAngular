app.controller 'index', [ '$scope', '$http',  ($scope, $http) ->

	$scope.menu = [
		{name: 'Catalog', url: '/'},
		{name: 'Contacts', url: '/contacts.html'}
	]

	$scope.currentPage = 0;
	$scope.itemsPerPage = 6;
		
	$http.get '/api/catalogs'
 		.success (data, status, headers, config) -> $scope.items = data;
	    
	$scope.firstPage = () -> $scope.currentPage == 0;
		
	$scope.lastPage = () -> 
		lastPageNum = Math.ceil($scope.items.length / $scope.itemsPerPage - 1);
		$scope.currentPage == lastPageNum;
 
	$scope.numberOfPages = () -> Math.ceil($scope.items.length / $scope.itemsPerPage);

	$scope.startingItem = () -> $scope.currentPage * $scope.itemsPerPage;

	$scope.pageBack = () -> $scope.currentPage = $scope.currentPage - 1;
  
	$scope.pageForward = () -> $scope.currentPage = $scope.currentPage + 1;

]

app.filter 'startFrom', () -> (input, start) ->
	start = +start
	input.slice(start)