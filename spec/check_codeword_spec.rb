# File: spec/greet_spec.rb

require 'check_codeword'

RSpec.describe 'check_codeword method' do
    it 'recieves correct codeword' do
        result = check_codeword('horse')
        expect(result).to eq 'Correct! Come in.'
    end

    it 'recieves similar codeword' do 
        result = check_codeword('harne')
        expect(result).to eq 'Close, but nope.'
    end

    it 'recieves inncorect codeword' do 
        result = check_codeword('pony')
        expect(result).to eq 'WRONG!'
    end
end