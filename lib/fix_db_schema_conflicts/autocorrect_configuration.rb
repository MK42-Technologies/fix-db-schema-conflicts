module FixDBSchemaConflicts
  class AutocorrectConfiguration
    def self.load
      new.load
    end

    def load
      '.rubocop_schema.1.8.yml'
    end

    private

    def less_than_rubocop?(ver)
      Gem.loaded_specs['rubocop'].version < Gem::Version.new("0.#{ver}.0")
    end

  end
end
