Gem::Specification.new do |s|
  s.name         = 'ruby-challenges'
  s.version      = '0.0.1'
  s.author       = 'Peter Drake'
  s.email        = 'pdrake@gmail.com'
  s.homepage     = 'http://www.github.com/pdrakeweb/ruby-challenges'
  s.summary      = 'Ruby Code Challenges'
  s.description  = 'Yeah, that. I guess.'
  s.require_path = 'lib'
  s.bindir       = 'bin'
  s.executables = Dir['bin/*'].map { |f| File.basename(f) }

  s.add_dependency('rake')
  s.add_dependency('rspec')
end