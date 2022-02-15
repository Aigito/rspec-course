RSpec.describe Array do
  it 'should have initial length of 0 then final length of 1' do
    expect(subject.length).to eq(0)
    subject << 'something'
    expect(subject.length).to eq(1)
  end
end
