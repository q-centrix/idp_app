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
  <saml:Attribute Name="User.email"
                  NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
    <saml:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:type="xs:string">#{email}</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="User.FirstName"
                  NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
    <saml:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:type="xs:string">#{My FN}</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="User.LastName"
                  NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
    <saml:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:type="xs:string">#{My LN}</saml:AttributeValue>
  </saml:Attribute>
  <saml:Attribute Name="memberOf"
                  NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
    <saml:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:type="xs:string">main-group</saml:AttributeValue>
    <saml:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                         xsi:type="xs:string">another-group</saml:AttributeValue>
  </saml:Attribute>
</saml:AttributeStatement>
      }
    end
  end

end
