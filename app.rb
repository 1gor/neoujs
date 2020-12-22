require 'roda'

class Neo < Roda

  plugin :render, escape: true
  plugin :assets, css: 'app.scss', css_opts: {style: :compressed, cache: false}, js: %w[htmx.js ext/include-vals.js], timestamp_paths: true

  route do |r|
    r.assets
    view :home
  end
end
