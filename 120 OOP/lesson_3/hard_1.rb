class SecurityLogger

  attr_accessor :log

  def initialize
    @log = []
  end
  def create_log_entry(new_log)
    # ... implementation omitted ...
    @log << new_log
    "the attribute was changed"
  end
end


class SecretFile
  attr_reader :data
  attr_accessor :logger

  def initialize(secret_data)


    @data = secret_data
    @logger = SecurityLogger.new
  end

  def data=(new_data)
    @logger.create_log_entry("the entry was changed from '#{@data}' to '#{new_data}' this event is being logged")
    @data = new_data
    
  end
end

my_file = SecretFile.new("this is secret")

my_file.data = "hello are you listening?"

puts my_file.data
puts my_file.logger.log

my_file.data = "not this again"
puts my_file.data
puts my_file.logger.log
