class << Rails.application

  def domain
    "privatelabelweekly.com"
  end

  def name
    "Private Label News"
  end
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain
