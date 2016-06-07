module UnitTestApp
  module TouchGestures
    def wait_for_gesture_text(text, mark="gesture performed")
      result = @waiter.wait_for_view(mark)

      candidates = [result["value"],
                    result["label"]]
      match = candidates.any? do |elm|
        elm == text
      end
      if !match
        @waiter.fail(%Q[
Expected to find '#{text}' as a 'value' or 'label' in

#{JSON.pretty_generate(result)}

])
      end
    end

    def clear_small_button_action_label
      @gestures.touch_mark("small button action")
      wait_for_gesture_text("CLEARED", "small button action")
    end

    def clear_complex_button_action_label
      @gestures.touch_mark("complex touches")
      wait_for_gesture_text("CLEARED", "complex touches")
    end
  end
end

World(UnitTestApp::TouchGestures)

Then(/^I can tap the screen by coordinate$/) do
  @gestures.touch(50, 50)
  wait_for_gesture_text("Tap")
end

Then(/^I can tap with two fingers by coordinate$/) do
  @gestures.two_finger_tap(100, 100)
  wait_for_gesture_text("Two-finger Tap")
end

And(/^I clear the touch action label$/) do
 clear_small_button_action_label
end

Then(/^I (double tap|touch) a little button$/) do |gesture|
  gesture_method = "#{gesture.gsub(" ", "_").to_sym}_mark"
  @gestures.send(gesture_method, gesture)
  wait_for_gesture_text(gesture, "small button action")
  clear_small_button_action_label
end

Then(/^I triple tap a little button$/) do
  @gestures.touch_mark("triple tap", {:repetitions => 3})
  wait_for_gesture_text("triple tap", "small button action")
  clear_small_button_action_label
end

Then(/^I long press a little button for (a short|a long|enough) time$/) do |time|
  clear_small_button_action_label
  expected_text = "long press"

  if time == "a short"
    duration = 0.5
    expected_text = "CLEARED"
  elsif time == "a long"
    duration = 2.0
  elsif time == "enough"
    duration = 1.1
  end

  @gestures.long_press_mark("long press", duration)
  wait_for_gesture_text(expected_text, "small button action")
end

Then(/^I two-finger tap the cyan box$/) do
  @gestures.two_finger_tap_mark("two finger tap")
  wait_for_gesture_text("two-finger tap", "complex touches")
  clear_complex_button_action_label
end

Then(/^I three-finger tap the magenta box$/) do
  @gestures.touch_mark("three finger tap", {:num_fingers => 3})
  wait_for_gesture_text("three-finger tap", "complex touches")
  clear_complex_button_action_label
end

Then(/^I four-finger tap the moss box$/) do
  @gestures.touch_mark("four finger tap", {:num_fingers => 4})
  wait_for_gesture_text("four-finger tap", "complex touches")
  clear_complex_button_action_label
end

Then(/^I two-finger tap the blueberry box$/) do
  @gestures.touch_mark("two finger double tap", {:num_fingers => 2,
                                                 :repetitions => 2})
  wait_for_gesture_text("two-finger double tap", "complex touches")
  clear_complex_button_action_label
end

Then(/^I two-finger long press on the gray box$/) do
  @gestures.touch_mark("complex touches", {:num_fingers => 2,
                                                 :duration => 1.1})
  wait_for_gesture_text("two-finger long press", "complex touches")
  clear_complex_button_action_label
end


