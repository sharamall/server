class ApplicationController < BaseController
  def index
    @random_text = SecureRandom.base58(16)
    @total_visits = SiteVisit.sum(:visits)
    @your_visits = SiteVisit.find_by(ip: Digest::SHA256.hexdigest(request.remote_ip))&.visits || 0
  end
end
