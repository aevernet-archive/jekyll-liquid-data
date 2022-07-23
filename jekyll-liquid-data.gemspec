# frozen_string_literal: true

require_relative "lib/jekyll/liquid/data/version"

Gem::Specification.new do |spec|
    spec.name = "jekyll-liquid-data"
    spec.version = Jekyll::Liquid::Data::VERSION
    spec.authors = ["Ragdata"]
    spec.email = ["ragdata@redeyed-rpg.com"]

    spec.summary = "TODO: Write a short summary, because RubyGems requires one."
    spec.description = "TODO: Write a longer description or delete this line."
    spec.homepage = "https://github.com/aevernet/jekyll-liquid-data"
    spec.license = "MIT"
    spec.required_ruby_version = ">= 3.1.2"

    spec.metadata = {
            "homepage_uri" => spec.homepage,
            "source_code_uri" => "https://github.com/aevernet/jekyll-liquid-data",
            "changelog_uri" => "https://github.com/aevernet/jekyll-liquid-data/blob/master/CHANGELOG.md",
            "bug_tracker_uri" => "https://github.com/aevernet/jekyll-liquid-data/issues",
            "documentation_uri" => "https://github.com/aevernet/jekyll-liquid-data/wiki",
            "wiki_uri" => "https://github.com/aevernet/jekyll-liquid-data/wiki",
            "plugin_type" => "plugin"
    }

    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    spec.files = Dir.chdir(__dir__) do
        `git ls-files -z`.split("\x0").reject do |f|
            (f == __FILE__) || f.match(%r{\A(?:(?:bin|lib|sig|spec|features)/|\.(?:git|github|travis|circleci)|appveyor)})
        end
    end
    spec.bindir = "exe"
    spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    # Uncomment to register a new dependency of your gem
    # spec.add_dependency "example-gem", "~> 1.0"

    # For more information and examples about making a new gem, check out our
    # guide at: https://bundler.io/guides/creating_gem.html

    spec.add_development_dependency("bundler", ">= 1.6", "< 3.0")
    spec.add_development_dependency("rake", ">= 12.0", "< 13.0")
    spec.add_development_dependency("rspec", ">= 3", "< 4")
    spec.add_development_dependency("envygeeks-rubocop", "~> 1.21")
    spec.add_runtime_dependency("jekyll", "~> 4.2")

end
