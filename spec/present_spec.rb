require "present"

RSpec.describe Present do
    it "wraps and unwraps a present" do
        present = Present.new
        present.wrap(4)
        expect(present.unwrap).to eq 4
    end
   
    it "fails when unwrapping without wrapping first" do
        present = Present.new
        expect{present.unwrap}.to raise_error "No contents have been wrapped."
    end

    it "fails if we wrap when already wrapped" do
        present = Present.new
        present.wrap(5)
        expect{present.wrap(7)}.to raise_error "A contents has already been wrapped."
    end
end 