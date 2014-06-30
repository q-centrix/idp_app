IdpApp::Engine.routes.draw do
  get  '/saml/auth' => 'saml_idp#new', as: 'new_auth'
  post '/saml/auth' => 'saml_idp#create'
end
