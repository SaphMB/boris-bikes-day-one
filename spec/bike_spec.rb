require 'bike'

describe Bike do

	subject(:bike) { described_class.new }

  it { is_expected.to respond_to :working?}

	it 'can be reported broken' do
		bike.report_broken
		expect(bike.working?).to eq false
	end

end
