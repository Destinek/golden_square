# File: spec/string_builder_spec.rb

require "string_builder"

RSpec.describe StringBuilder do
    it "returns an empty string" do 
        str = StringBuilder.new
        expect(str.output).to eq ""
    end

    it "returns a length of 0" do 
        str = StringBuilder.new
        expect(str.size).to eq 0
    end

    context "has multiple string additions" do 
        it "returns total string" do
            str = StringBuilder.new 
            str.add('Hello ')
            str.add('World & ')
            str.add('Friends!')
            expect(str.output).to eq "Hello World & Friends!"
        end

        it "returns string length" do
            str = StringBuilder.new 
            str.add('Hello ')
            str.add('World & ')
            str.add('Friends!')
            expect(str.size).to eq 22
        end
    end
end