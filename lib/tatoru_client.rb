require "singleton"
require "httparty"

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.ignore "*~"
loader.ignore "#{__dir__}/tatoru-client.rb"
loader.setup

module Tatoru
  module Client
    def self.configure
      yield Configuration
    end

    def self.root
      Pathname.new(::File.dirname(__dir__))
    end
  end
end

# require 'tatoru/client'
