RSpec.shared_examples "visit recorder" do
  let(:ip) { '127.0.0.1' }
  it 'tracks visit' do
    expect { SiteVisit.record_new_visit(ip) }
      .to change { SiteVisit.count }.by 1
    expect(SiteVisit.last.visits).to eq 1
    expect(SiteVisit.last.ip).not_to eq ip # don't steal people's IP addresses
  end
end