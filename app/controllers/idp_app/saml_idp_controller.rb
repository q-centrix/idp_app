require_dependency "idp_app/application_controller"

module IdpApp

  class SamlIdpController < ::SamlIdp::IdpController
    def idp_authenticate(email, password)
      true
    end

    def idp_make_saml_response(user)
      encode_SAMLResponse("test@example.com")
    end
  end

end
