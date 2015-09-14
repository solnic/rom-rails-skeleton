require 'dry-container'

class MyApp
  class Container
    include Dry::Container::Mixin
  end

  attr_reader :app, :container

  class << self
    attr_reader :instance
  end

  def self.configure
    container = Container.new
    yield(container)
    @instance = new(Rails.application, container)
    freeze
  end

  def initialize(app, container)
    @app = app
    @container = container
  end

  def [](name)
    container[name]
  end
end
