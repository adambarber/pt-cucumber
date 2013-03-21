require "spec_helper"

describe PTCucumber::ProcesssFeature do

  describe "#count_scenarios" do

    it "should return number of scenarios in feature" do
      file = 'spec/stubs/rocket_launch_features.feature'
      process = PTCucumber::ProcesssFeature.new(file)
      process.count_scenarios.should eql(2)
    end

    it "should return 0 when no scenarios are present" do
      file = 'spec/stubs/moon_landing_features.feature'
      process = PTCucumber::ProcesssFeature.new(file)
      process.count_scenarios.should eql(0)
    end

  end

  describe "#scenario_names" do

    it "should return a list of scenario names" do
      file = 'spec/stubs/rocket_launch_features.feature'
      process = PTCucumber::ProcesssFeature.new(file)
      process.scenario_names.should eql(['Start Countdown', 'Abort Countdown'])
    end

    it "should return an empty array if there are no scenarios" do
      file = 'spec/stubs/moon_landing_features.feature'
      process = PTCucumber::ProcesssFeature.new(file)
      process.scenario_names.should eql([])
    end

  end

  describe "#get_feature_name" do

    it "should return the name of the feature file in a sub directory" do
      file = 'spec/stubs/rocket_launch_features.feature'
      process = PTCucumber::ProcesssFeature.new(file)
      process.get_feature_name.should eql("rocket_launch")
    end

  end
end