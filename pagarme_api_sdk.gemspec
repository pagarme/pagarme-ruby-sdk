Gem::Specification.new do |s|
  s.name = 'pagarme_api_sdk'
  s.version = '6.7.4'
  s.summary = 'pagarme_api_sdk'
  s.description = 'Pagarme API'
  s.authors = ['Pagar.me Pagamentos S/A']
  s.email = ['suporte@pagar.me']
  s.homepage = 'https://github.com/pagarme/'
  s.licenses = ['MIT']
  s.add_dependency('apimatic_core_interfaces', '~> 0.1.0')
  s.add_dependency('apimatic_core', '~> 0.2.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
