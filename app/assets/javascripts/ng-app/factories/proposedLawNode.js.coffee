angular
  .module 'gitLaw'
  .factory( 'ProposedLawNode', ['$resource', ($resource) ->
    return $resource(
      '/api/proposed_laws/:proposedLawId/node/:tree.:format'
      {
        proposedLawId: "@proposedLawId"
        tree: "@tree"
        format: 'json'
        camel: 'true'
      }
      {
        query:
          method: 'GET'
          isArray: true
          url: '/api/proposed_laws/:proposedLawId/nodes/:tree.:format'
        save:
          method: 'PATCH'
        create:
          method: 'POST'
      } )
  ] )
