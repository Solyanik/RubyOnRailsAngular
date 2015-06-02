app.config([
	'$stateProvider', '$urlRouterProvider', '$locationProvider',
	($stateProvider, $urlRouterProvider, $locationProvider) ->

		$stateProvider
		.state 'public',
			abstract: true,
			url: '',
			templateUrl: 'layouts/index.html',
			controller: 'layout'

		.state 'public.index',
			url: '/',
			templateUrl: 'views/index.html'
			controller: 'index'

		.state 'public.contacts',
			url: '/contacts.html',
			templateUrl: 'views/contacts.html'
			controller: 'contacts'

		.state 'public.catalogs',
			url: '/{id}',
			templateUrl: 'views/catalog_show.html'
			controller: 'catalogs'

		$urlRouterProvider.otherwise '/'

		$locationProvider.html5Mode
			enabled: true
			requireBase: false
			html5Mode: true

])