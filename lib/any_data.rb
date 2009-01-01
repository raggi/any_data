class AnyData < File
  def self.version; '0.1.0'; end
  
  class NoDataError < Exception
    attr_accessor :file
    def initialize(file)
      @file = file
      super("No data (__END__) found in file: #{file}")
    end
  end

  # Open the given file, or the file of the caller, and scans to __END__. This
  # is very similar to the manner in which DATA works for $0. Can raise an 
  # AnyData::NoDataError if EOF is reached before finding __END__.
  def initialize(path = (caller.first.split(':').first))
    super(path, 'r')
    line = readline until line =~ /^__END__$/
  rescue EOFError
    raise NoDataError, file
  end
end