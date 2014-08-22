require_dependency "idp_app/application_controller"

module IdpApp

  class SamlIdpController < SamlIdp::IdpController
    def idp_authenticate(email, password)
      email
    end

    def idp_make_saml_response(email)
      encode_SAMLResponse(email, attributes_provider: attributes_provider(email))
    end

    protected

    def attributes_provider(email)
      %Q{
<saml:AttributeStatement>
  <saml:Attribute Name="email">
    <saml:AttributeValue>#{email}</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="firstName">
    <saml:AttributeValue>Perry</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="lastName">
    <saml:AttributeValue>Elselvier</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="group">
    <saml:AttributeValue>my-group</saml:AttributeValue>
  </saml:Attribute>
</saml:AttributeStatement>
      }
    end
  end

end
