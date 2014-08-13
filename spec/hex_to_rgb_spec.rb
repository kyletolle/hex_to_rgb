require_relative '../lib/hex_to_rgb.rb'

describe HexToRgb do
  let(:expected_color) { '#FFFFFF' }
  let(:initial_color)  { expected_color }
  let(:hex_to_rgb)     { described_class.new(initial_color) }

  describe "#hex" do
    subject { hex_to_rgb.hex }

    it "returns the color it was initialized with" do
      expect(subject).to eq expected_color
    end
  end

  describe "#valid?" do
    subject { hex_to_rgb.valid? }

    describe "for a valid hex color" do
      shared_examples "is a valid color" do
        it "is true" do
          expect(subject).to eq true
        end
      end

      describe "with 3 digits" do
        let(:initial_color) { "#FFF" }

        include_examples "is a valid color"
      end

      describe "with 6 digits" do
        let(:initial_color) { "#FFFFFF" }

        include_examples "is a valid color"
      end
    end

    describe "for an invalid hex color" do
      shared_examples "is not a valid color" do
        it "is false" do
          expect(subject).to eq false
        end
      end

      describe "with no leading pound" do
        let(:initial_color) { 'AAAAAA' }

        include_examples "is not a valid color"
      end

      describe "with other than 3 or 6 digits" do
        let(:initial_color) { '#AAAA' }

        include_examples "is not a valid color"
      end

      describe "with non-hexadecimal digits" do
        let(:initial_color) { '#XYZ' }

        include_examples "is not a valid color"
      end
    end
  end

  describe "#rgb" do
    subject { hex_to_rgb.rgb }

    describe "with a valid hex color" do
      let(:expected_rgb_colors) { [ 255, 255, 255 ] }

      it "returns array of rgb decimal values" do
        expect(subject).to eq expected_rgb_colors
      end
    end

    describe "with an invalid hex color" do
      let(:initial_color) { 'kyle' }

      it "returns nil" do
        expect(subject).to be_nil
      end
    end
  end
end

