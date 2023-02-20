require "password_checker"

RSpec.describe PasswordChecker do
    it "passes when password > 8 char" do
        pass = PasswordChecker.new
        expect(pass.check('abcdefghij')).to eq true
    end

    it "fails when password < 8" do
        pass = PasswordChecker.new
        expect{pass.check("abcd")}.to raise_error "Invalid password, must be 8+ characters."
    end

end