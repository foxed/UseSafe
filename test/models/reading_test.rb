require "test_helper"

class ReadingTest < ActiveSupport::TestCase
  test "validates presence filename and title" do
    reading = Reading.new(filename: "", title: "")
    refute reading.valid?, "Reading should not be valid."
    assert_equal ["can't be blank"], reading.errors[:filename]
    assert_equal ["can't be blank"], reading.errors[:title]
  end
end
