# File: spec/counter_spec.rb

require "counter" 

RSpec.describe Counter do
    it "reports a count of 0" do
        counter = Counter.new
        expect(counter.report).to eq "Counted to 0 so far."
    end

    it "counts to a given value" do
        counter = Counter.new
        counter.add(5)
        result = counter.report
        expect(result).to eq "Counted to 5 so far."
    end

    it "counts all numbers assigned" do
        counter = Counter.new
        counter.add(5)
        counter.add(4)
        counter.add(12)
        expect(counter.report).to eq "Counted to 21 so far."
    end
end