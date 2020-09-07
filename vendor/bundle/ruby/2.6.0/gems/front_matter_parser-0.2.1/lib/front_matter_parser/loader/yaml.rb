# frozen_string_literal: true

require 'yaml'

module FrontMatterParser
  module Loader
    # {Loader} that uses YAML library
    class Yaml
      # @!attribute [r] whitelist_classes
      # Classes that may be parsed by #call.
      attr_reader :whitelist_classes

      def initialize(whitelist_classes: [])
        @whitelist_classes = whitelist_classes
      end

      # Loads a hash front matter from a string
      #
      # @param string [String] front matter string representation
      # @return [Hash] front matter hash representation
      def call(string)
        YAML.safe_load(string, whitelist_classes)
      end
    end
  end
end
