app.factory 'Catalog', ['AppModel', (AppModel) ->

  class User extends AppModel
    @configure url: '/catalogs', name: 'catalogs'
]