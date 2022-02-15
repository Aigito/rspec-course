RSpec.describe 'before and after hooks' do
  # before and after context is for the current [describe/context] block that it is in
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(true).to eq(true)
  end

  it 'is just another random example' do
    expect(false).to eq(false)
  end
end
