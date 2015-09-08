require 'roda'

class Roblog < Roda
  route do |r|
    r.root do
      'Hello, world'
    end
  end
end
