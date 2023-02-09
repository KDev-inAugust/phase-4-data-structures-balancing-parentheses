describe '#balancing_parentheses' do

  it "takes a string as an argument" do
    expect { balancing_parentheses("()") }.not_to raise_error
  end

  it "uses an instance of the Stack class in the solution" do
    allow(Stack).to receive(:new).and_return(Stack.new)
    balancing_parentheses("()")
    expect(Stack).to have_received(:new)
  end

  it 'can balance parentheses when only one type of parenthesis is in the string' do
    expect(balancing_parentheses(')')).to eq(1)
    expect(balancing_parentheses('(')).to eq(1)
    expect(balancing_parentheses(')))')).to eq(3)
    expect(balancing_parentheses('(((')).to eq(3)
  end

  it 'accounts for strings that start with a closing parenthesis or end with an opening one' do
    expect(balancing_parentheses(')(')).to eq(0)
    expect(balancing_parentheses(')()')).to eq(1)
    expect(balancing_parentheses(')((((()))((())))()(()))(')).to eq(0)
  end

  it 'returns 0 when the parentheses are balanced' do
    expect(balancing_parentheses('(()())')).to eq(0)
    expect(balancing_parentheses('()')).to eq(0)
  end

  it 'returns the correct number when the string starts with an opening parenthesis and ends with a closing one' do
    expect(balancing_parentheses('()))')).to eq(2)
  end

end