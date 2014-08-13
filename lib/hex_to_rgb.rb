class HexToRgb
  def initialize(hex_color)
    @hex = hex_color
  end

  def hex
    @hex
  end

  def valid?
    !!(hex =~ HEX_COLOR_REGEX)
  end

  def rgb
    if valid?
      rgb_digits
    end
  end

private
  # Based on the article: http://www.mkyong.com/regular-expressions/how-to-validate-hex-color-code-with-regular-expression/
  HEX_COLOR_REGEX = /^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/

  def just_digits
    hex.gsub('#','')
  end

  def hex_digits
    digit_pattern =
      case just_digits.length
      when 3
        /./
      when 6
        /../
      end

    just_digits.scan digit_pattern
  end

  def rgb_digits
    hex_digits.map{|d| d.to_i(16) }
  end
end

