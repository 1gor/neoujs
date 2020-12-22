require 'roda'

class Neo < Roda

  plugin :render

  route do |r|
    view :home
  end
end
