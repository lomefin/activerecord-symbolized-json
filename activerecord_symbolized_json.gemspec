require_relative 'lib/activerecord_symbolized_json/version'

Gem::Specification.new do |spec|
  spec.name        = 'activerecord_symbolized_json'
  spec.version     = ActiverecordSymbolizedJson::VERSION
  spec.authors     = ['Leonardo Luarte G']
  spec.email       = ['leonardo@luarte.net']
  spec.homepage    = 'https://leonardo.luarte.cl/activerecord-symbolized-json'
  spec.summary     = 'Allows to declare which json columns you always to have as a Symbolized Hash'
  spec.description = <<-DESC
    When you use a JSON datatype with postgres in your project, the result is a stringified version of the hash, which translate to constant key transformations.
    This allows you to just declare the column in your model and replaces the accesor method to a symbol keyed hash
  DESC
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'http://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/lomefin/activerecord-symbolized-json'
  spec.metadata['changelog_uri'] = 'https://github.com/lomefin/activerecord-symbolized-json'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 6.1.4'
end
