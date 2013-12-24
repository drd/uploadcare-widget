# = require ./files/base
# = require ./files/event
# = require ./files/input
# = require ./files/url
# = require ./files/uploaded
# = require ./files/group

{
  namespace,
  utils,
  jQuery: $,
  files: f,
  settings
} = uploadcare

namespace 'uploadcare', (ns) ->

  ns.fileFrom = (type, data, s) ->
    ns.filesFrom(type, [data], s)[0]


  ns.filesFrom = (type, data, s) ->
    s = settings.build(s or {})

    if type == 'event'
      [type, data] = legacyEventFilter(s, data)

    for part in data
      new converters[type](s, part).promise()


  # Will be removed in 1.0.
  legacyEventFilter: (s, event) ->
    if utils.abilities.fileAPI
      files = if e.type == 'drop'
        e.originalEvent.dataTransfer.files
      else
        e.target.files
      ['object', files]
    else
      ['input', e.target]


  converters =
    object: f.EventFile
    input: f.InputFile
    url: f.UrlFile
    uploaded: f.UploadedFile
    ready: f.ReadyFile
