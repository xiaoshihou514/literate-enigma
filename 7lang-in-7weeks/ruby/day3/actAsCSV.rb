module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.readline.chomp.split(', ' )
      file.each do |row|
        @csv_contents.push CsvRow.new(row.chomp.split(', ' ), @headers)
      end
    end

    def each(&block)
      @csv_contents.each &block
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class CsvRow
  attr_accessor :content, :headers

  def initialize(content, headers)
    @content = content
    @headers = headers
  end

  # def self.method_missing name, *args
  # new api changed it to symbol, *args
  def method_missing(symbol, *args)
    # Note that symbol is of type `Symbol`
    @headers.each_index {|i| return @content[i] if @headers[i] == symbol.to_s} 
    return nil
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}

