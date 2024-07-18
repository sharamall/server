class VisitTracker
  def initialize(app)
    @app = app
  end

  def call(env)
    req = ActionDispatch::Request.new env
    SiteVisit.record_new_visit(req.ip)
    @app.call(env)
  end
end