require 'account.rb'

describe Account do
  it 'starts with a zero balance' do
    expect(subject.balance).to eql(0)
  end

end
