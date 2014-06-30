require_dependency "idp_app/application_controller"

module IdpApp

  class SamlIdpController < ::SamlIdp::IdpController
    def idp_authenticate(email, password)
      puts saml_acs_url
      User.new(email)
    end

    def idp_make_saml_response(user)
      puts saml_acs_url
      puts user.inspect
      encode_SAMLResponse('test@sample.com')
    end
  end

end
