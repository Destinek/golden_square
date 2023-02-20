# File: spec/greet_spec.rb

require 'greet'

RSpec.describe 'greet method' do
    it 'greets a given user' do
        result =greet('David')
        expect(result).to eq 'Hello, David!'
    end
end