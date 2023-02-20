require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns no gratitudes" do
        grat = Gratitudes.new
        expect(grat.format).to eq "Be grateful for: "
    end

    context "adds multiple gratitudes" do
        it "returns the total string" do
            grat = Gratitudes.new
            grat.add("Family")
            grat.add("Health")
            grat.add("Friends!")
            expect(grat.format).to eq "Be grateful for: Family, Health, Friends!"
        end
    end
end