Gem::Specification.new do |s|
  s.name = 'pagarme_api_sdk'
  s.version = '6.5.0'
  s.summary = 'pagarme_api_sdk'
  s.description = 'Pagarme API'
  s.authors = ['Pagar.me Pagamentos S/A']
  s.email = 'suporte@pagar.me'
  s.homepage = 'https://github.com/pagarme/'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 1.0', '>= 1.0.1')
  s.add_dependency('faraday_middleware', '~> 1.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.required_ruby_version = ['>= 2.5']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
