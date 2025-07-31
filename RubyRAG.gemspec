# frozen_string_literal: true

require_relative 'lib/RubyRAG/version'

Gem::Specification.new do |spec|
  spec.name = 'RubyRAG'
  spec.version = RubyRAG::VERSION
  spec.authors = ['Robert Pannick']
  spec.email = ['rwpannick@gmail.com']

  spec.summary = 'Write a short summary'
  spec.description = 'Write a longer description'
  spec.homepage = 'https://github.com/username/RubyRAG'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
