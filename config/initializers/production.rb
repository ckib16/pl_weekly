class << Rails.application

  def domain
    "app.privatelabelweekly.com"
  end

  def name
    "Private Label Weekly"
  end
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain
