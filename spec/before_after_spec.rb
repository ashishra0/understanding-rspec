RSpec.describe "before and after hooks" do
  before(:context) do
    puts "Starting test suite..."
  end

  after(:context) do
    puts "Closing test suite..."
  end

  before(:example) do
    puts "before example"
  end

  after(:example) do
    puts "after example"
  end

  it "is just a random example" do
    expect(5 * 4).to eq(20)
  end

  it "is another example" do
    expect(1 + 1).to eq(2)
  end
end