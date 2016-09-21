module PadrinoAndGrape
  class API < Grape::API
    format :json
    version "v1"

    get "/" do
      { hello: "world" }
    end

    add_swagger_documentation \
      :mount_path => "/docs",
      :info => {
        :title => "The API title to be displayed on the API homepage.",
        :description => "A description of the API.",
        :contact_name => "Contact name",
        :contact_email => "Contact@email.com",
        :contact_url => "Contact URL",
        :license => "The name of the license.",
        :license_url => "www.The-URL-of-the-license.org",
        :terms_of_service_url => "www.The-URL-of-the-terms-and-service.com"
      }
  end
end
