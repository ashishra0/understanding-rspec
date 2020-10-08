RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER before context'
  end

  before(:example) do
    puts 'OUTER before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'Some condition A' do
    before(:context) do
      puts 'INNER before context'
    end
  
    before(:example) do
      puts 'INNER before example'
    end

    it 'does more basic math' do
      expect(1+2).to eq(3)
    end

    it 'does subtraction too' do
      expect(2-1).to eq(1)
    end
  end
end