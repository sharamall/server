require 'rails_helper'

RSpec.describe SiteVisit, type: :model do
  subject {  SiteVisit.record_new_visit('127.0.0.1') }
  it_behaves_like 'visit recorder'
end
