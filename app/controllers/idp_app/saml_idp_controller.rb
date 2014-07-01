require_dependency "idp_app/application_controller"

module IdpApp

  class SamlIdpController < SamlIdp::IdpController
    def idp_authenticate(email, password)
      email
    end

    def idp_make_saml_response(email)
      encode_SAMLResponse(email)
    end
  end

end
