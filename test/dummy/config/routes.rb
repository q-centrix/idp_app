Rails.application.routes.draw do

  mount IdpApp::Engine => "/idp_app"
end
