$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "inline-css-html-converter"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.author = 'Bennet Palluthe'
  s.email = 'palluthe.bennet@gmail.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = ["lib"]

  s.add_dependency 'httparty'
  s.add_development_dependency "rspec"
  s.add_development_dependency "codeclimate-test-reporter"
  s.add_development_dependency "pry"

  s.rubygems_version = '1.8.24'
  s.summary = 'convert css style to inline html'
  s.description = "convert css style to inline html"
  s.homepage = 'https://github.com/Garllon/inline-css-html-converter/blob/master/README.md'
end
