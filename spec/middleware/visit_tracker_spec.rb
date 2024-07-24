require 'rails_helper'

RSpec.describe 'VisitTracker' do
  let(:app) { double }
  subject { VisitTracker.new(app) }

  context 'non-asset request' do
    let(:env) { { "REQUEST_PATH" => "erm" } }
    it 'tracks request' do
      expect(app).to receive(:call).with(env)
      expect { subject.call(env) }.to change { SiteVisit.count }.by 1
    end
  end
  context 'asset path' do
    let(:env) { { "REQUEST_PATH" => "/assets" } }
    it 'does not track requests for assets' do
      expect(app).to receive(:call).with(env)
      expect { subject.call(env) }.not_to change { SiteVisit.count }
    end
  end
end
