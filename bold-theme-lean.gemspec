$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bold-theme-lean"
  s.version     = '0.1.0'
  s.authors     = ["Jens Kraemer"]
  s.email       = ["jk@jkraemer.net"]
  s.homepage    = "https://github.com/bold-theme-lean"
  s.summary     = 'A lean theme for Bold'
  s.description = 'HTML 5 with a little bit of CSS'
  s.license     = "GPL v3"

  s.files = Dir["{app,config,db,lib}/**/*", "README.md", "LICENSE"]
  s.test_files = Dir["test/**/*"]
end
