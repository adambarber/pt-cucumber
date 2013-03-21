module PTCucumber
  class ProcesssFeature
    def initialize(file)
      @file = file
      get_feature_contents
    end

    def get_feature_contents
      @feature_contents = File.open(@file, 'r')
    end

    def count_scenarios
      scenarios = []
      @feature_contents.each do |line|
        line.chomp!
        scenarios << line if line.include? "Scenario:"
      end
      return scenarios.size
    end

    def scenario_names
      scenario_names = []
      @feature_contents.each do |line|
        line.chomp!
        scenario_names << line.split(':').last.strip if line.include? "Scenario:"
      end
      return scenario_names
    end

    def get_feature_name
      file_name = @file.split("/").last
      name = file_name.gsub("_features.feature", "")
      return name
    end
  end
end