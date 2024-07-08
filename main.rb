require './lib/console'

c = Console.new
c.loop do
  begin
    c.process_input
  #rescue NoMethodError => e
    #puts "command '#{e.name}' for '#{e.receiver}' not found"
  end
end