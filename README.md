# HexToRgb

[![Gem Version](https://badge.fury.io/rb/hex_to_rgb.svg)](http://badge.fury.io/rb/hex_to_rgb)

Turn a hexadecimal color into its corresponding RGB, decimal values!

## Install

```
gem install hex_to_rgb
```

## Usage

```
require 'hex_to_rgb'

hex_to_rgb = HexToRgb.new("#ABC")

hex_to_rgb.rgb #=> [170, 187, 204]
hex_to_rgb.r   #=> 170
hex_to_rgb.g   #=> 187
hex_to_rgb.b   #=> 204
```

## Related Gem

[RgbToHexColor](https://github.com/kyletolle/rgb_to_hex_color) - Convert rgb
colors into hex colors.

## Development

### Install

```
gem install --dev hex_to_rgb
```

### Specs

The default Rake task is to run the specs.

```
rake
```

## License

MIT

