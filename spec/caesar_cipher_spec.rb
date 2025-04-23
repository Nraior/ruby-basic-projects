require './caesar_cipher.rb'

describe "caesar cipher" do
  
  let(:shift) { 5 }
  describe '#caesar_cipher' do
    context "when str does not contain special characters " do
      it "correctly ciphers odin string" do
        word_to_cipher = "odin"
        ciphered_word = caesar_cipher(word_to_cipher, shift)
        expect(ciphered_word).to eq ('tins')
      end

      it "correctly ciphers damien string" do
        word_to_cipher = "damian"
        ciphered_word = caesar_cipher(word_to_cipher, shift)
        expect(ciphered_word).to eq('ifrnfs')
      end
    end

    context "when str contain special characters and capital letters" do 
      it "does cipher word correctly, igoring special characters" do
        word_to_cipher = "Damian is LeArNiNg Odin Project! :-)"
        ciphered_word = caesar_cipher(word_to_cipher, shift)
        expect(ciphered_word).to eq('Ifrnfs nx QjFwSnSl Tins Uwtojhy! :-)')
      end
    end
  end

  describe "#get_shifted_letter_code" do
    context "shift is 5" do
      context "when letter is a" do
        it "returns 102" do
          shifted_letter_code = get_shifted_letter_code("a", shift)
          expect(shifted_letter_code).to eq(102)
        end
      end

      context "when letter is c" do 
        it "returns 104" do
          shifted_letter_code = get_shifted_letter_code("c", shift)
          expect(shifted_letter_code).to eq(104)
        end
      end
    end
  end

  describe "#is_normal_character?" do
    describe "when letter is between a-z" do
      it "returns true" do
        letter = "a"
        good = is_normal_character?(letter)
        expect(good).to eq(true)
      end
    end

    describe "when letter is between A-Z" do
      it "returns true" do
        letter = "F"
        good = is_normal_character?(letter)
        expect(good).to eq(true)
      end
    end

    describe "when letter special character" do
      it "returns false" do
        letter = "$"
        good = is_normal_character?(letter)
        expect(good).to eq(false)
      end
    end
  end
end