
module UnitTestApp
  module Orientation

    def upside_down_supported?
      hash = device_info
      if hash["iphone6"] || hash["iphone6+"]
        false
      else
        true
      end
    end

    def rotate_and_expect(position)
      symbol = position.to_sym
      orientation = rotate_home_button_to(symbol)

      if [:top, :up].include?(symbol) && !upside_down_supported?
        log_inline("Upside down orientation is not supported iPhone 6*")
      else
        expected = expected_position(position)
        expect(orientation).to be == expected
      end
    end

    def expected_position(position)
      symbol = position.to_sym
      case symbol
      when :top, :up
        2
      when :bottom, :down
        1
      when :right
        3
      when :left
        4
      else
        raise ArgumentError, %Q[
Expected '#{position}' to be [:top, :up, :bottom, :down, :left, :right]
]
      end
    end

    def landscape?
      !portrait?
    end

    def portrait?
      device_orientation = device_info["orientation_string"]
      device_orientation == "portrait" || device_orientation == "upside_down"
    end
  end
end

World(UnitTestApp::Orientation)

Then(/^I rotate the device so the home button is on the (top|bottom|left|right)$/) do |position|
  rotate_and_expect(position)
end

And(/^the server can report device and app orientations$/) do
  hash = orientations
  expect(hash["AUT"]).to be_truthy
  expect(hash["UIDevice"]).to be_truthy
  expect(hash["XCUIDevice"]).to be_truthy
end

Then(/^the app is in portrait after it is launched by DeviceAgent$/) do
  expect(orientations["AUT"][1]).to be == "portrait"
end

