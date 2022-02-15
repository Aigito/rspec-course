RSpec.describe Hash do
  # "subject" allows the creation / instantiation of a [Hash] which == let(:my_hash) { {} }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
