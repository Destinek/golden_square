# File: spec/report_length_spec.rb

require 'report_length'

RSpec.describe 'report_length method' do
    it 'recieves a 9 letter word' do 
        result = report_length('memorable')
        expect(result).to eq 'This string was 9 characters long.'
    end

    it 'recieves a 4 letter word' do 
        result = report_length('give')
        expect(result).to eq 'This string was 4 characters long.'
    end
end 

