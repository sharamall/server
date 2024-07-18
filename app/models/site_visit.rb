class SiteVisit < ApplicationRecord
  def self.record_new_visit(ip)
    #TODO thread safety
    sv = SiteVisit.find_or_initialize_by ip: Digest::SHA256.hexdigest(ip)
    sv.visits += 1
    sv.save!
  end
end
