Gem::Specification.new do |spec|
  spec.name          = 'vagrant-guestip'
  spec.version       = '0.1'
  spec.authors       = ['Michael Kuzmin']
  spec.email         = ['mkuzmin@gmail.com']
  spec.summary       = 'Vagrant plugin for obtaining IP address of guest machine'
  spec.homepage      = 'https://github.com/mkuzmin/vagrant-gusetip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
