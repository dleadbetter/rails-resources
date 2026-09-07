# frozen_string_literal: true

require_relative "lib/rails_resources/version"

Gem::Specification.new do |spec|
  spec.name         = "rails_resources"
  spec.version      = RailsResources::VERSION
  spec.authors      = ["Derek Leadbetter"]
  spec.email        = ["dleadbetter.dev@gmail.com"]

  spec.homepage     = "https://github.com/dleadbetter/rails-resources"
  spec.summary      = "A simple API framework for RESTFUL CRUD operations"
  spec.description  = "A set of classes to use as a framework for controllers, models, and serializers for building an API."
  spec.license      = "MIT"

  spec.required_ruby_version = ">= 4.0"
  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0", "< 9"
  spec.add_dependency "pagy", "~> 5.10"
  spec.add_dependency "pundit", "~> 2.5"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
