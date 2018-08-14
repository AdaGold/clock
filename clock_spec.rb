# clock_spec.rb

# run spec files and minitest reporters
# to get colors
require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'clock'

Minitest::Reporters.use!

# This is to describe my test (Each block represents one tets)

describe 'Clock' do
  it 'will return a string' do # this will return a string

    # Arrange the situation
    hours = 9
    minutes = 25
    seconds = 46

    # Act - Perform the action we are trying to test
    time = clock(hours, minutes, seconds)

    # Assert what I am expecting to be true - step (no matter what is does it needs to give us string)
    expect(time).must_be_instance_of String # this is an expectation that the result will be an instanc of string
  end

  it 'will return a string formatted in hh:mm:ss format when hours is a single digit' do
    #Arrange
    hours = 9
    minutes = 25
    seconds = 46

    #Act
    time = clock(hours, minutes, seconds)

    #Assert
    expect(time).must_equal '09:25:46'
  end

  it ' will return a string formated in hh:mm:ss even when the minutes are single digits ' do
  #Arrange
  hours = 9
  minutes = 3
  seconds = 7

  #Act
  time = clock(hours, minutes, seconds)

  #Assert
  expect(time).must_equal '09:03:07'
end

it 'will raise an error for an invalid hour/min/sec' do
  #Arrange
  hour = 23
  min = 0
  sec = 0

  #Act
  time = clock(hour, min, sec)

  #Assert
  expect(time).must_equal '23:00:00'

  # re-Arrange
  hour = 24

  #Act-Assert (this keeps the program from crashing)
  expect {
    time = clock(hour, min, sec)
  }.must_raise ArgumentError
end

it 'will raise an error for an invalid hour/min/sec' do
  #Arrange
  hour = 0
  min = 59
  sec = 0

  #Act
  time = clock(hour, min, sec)

  #Assert
  expect(time).must_equal '00:59:00'

  # re-Arrange
  min = 60

  #Act-Assert (this keeps the program from crashing)
  expect {
    time = clock(hour, min, sec)
  }.must_raise ArgumentError

end

end
