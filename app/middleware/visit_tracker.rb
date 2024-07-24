class VisitTracker
  def initialize(app)
    @app = app
  end

  def call(env)
    request = ActionDispatch::Request.new env
    SiteVisit.record_new_visit(request.ip) unless request.env["REQUEST_PATH"].starts_with? "/assets"
    @app.call(env)
  end
end