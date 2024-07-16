class ApplicationController < BaseController
  def index
    @random_text = SecureRandom.base58(16)
  end
end
