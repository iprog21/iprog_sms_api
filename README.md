# IPROG SMS API CLIENT

A simple Ruby client for the [IPROG SMS API](https://sms.iprogtech.com/).

<img src="https://github.com/IPROG-TECH/media-files/blob/main/iprogtech-logo.png" width="150" alt="IPROG TECH" align="right" />

This gem is provided by [**IPROG TECH**](https://www.iprog.tech/), an information technology company specializing in web development services using Ruby on Rails. IPROG TECH also offers free programming tutorials.

**Providing Good Quality Web Services:**
- Startup
- Maintenance
- Upgrading & Conversion


<a href="https://www.buymeacoffee.com/iprog21" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## Installation

Add this line to your application's Gemfile:

```ruby
gem "iprog_sms_api"
```
Or install it yourself as:

```sh
gem install iprog_sms_api
```

## Usage

```ruby
require "iprog_sms_api"

client = IprogSmsApi::Client.new(api_token: "YOUR_API_TOKEN")

# Send an SMS
result = client.send_sms(phone_number: "09171234567", message: "Hello from the API!")
puts result

# Check SMS credits
credits = client.check_sms_credits
puts credits
```

## License

MIT License
