# jQuery
(($) ->

  $(document).ready ->

    if window.location.pathname == '/index.html' || window.location.pathname == '/'
      netlifyIdentity.open()

    netlifyIdentity.on('login', ->
      location.href = 'blog.html'
      return
    )

    netlifyIdentity.on('logout', ->
      location.href = '/'
      return
    )

    return
  return
) jQuery
