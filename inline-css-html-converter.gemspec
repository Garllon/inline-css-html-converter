Gem::Specification.new do |s|
  s.name = "inline-css-html-converter"
  s.version = '0.1.6'

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.required_ruby_version = '>= 2.2.2'
  s.author = 'Bennet Palluthe'
  s.email = 'palluthe.bennet@gmail.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = ["lib"]

  s.add_dependency 'httparty', '~> 0.13.7'
  s.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'
  s.add_development_dependency "codeclimate-test-reporter", '~> 0.4.8'
  s.add_development_dependency "pry", '~> 0.10.3'

  s.rubygems_version = '1.8.24'
  s.summary = 'convert css style to inline html'
  s.description = "convert css style to inline html"
  s.homepage = 'https://github.com/Garllon/inline-css-html-converter/blob/master/README.md'
end
