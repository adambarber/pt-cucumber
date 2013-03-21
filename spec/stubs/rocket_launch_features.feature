Feature: Rocket Launch
  In order to build a base on the moon
  As an astronaut
  I want to be able to launch a rock

  Scenario: Start Countdown
    Given I am a launch engineer
    And I want to begin the launch process
    I should be able to start a seconds till launch countdown

  Scenario: Abort Countdown
    Given I am a launch engineer
    And I want to halt the launch process
    I should be able to abort the launch countdown