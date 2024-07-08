require './lib/game'

class Console
  def initialize
    @game = Game.new
    @open = true
    @obj = nil
  end
  
  def loop &block
    clear
    while @open
      block.call
    end
  end

  def process_input
    print "\n[#{@obj}]> "
    input = gets.chomp.split(' ')
    command = input.shift.downcase
    args = input
    send(command, *args)
  end
    
  private

  def print_menu
    puts "=========== Up a Mind Alley ==========="
  end

  def select obj
    @obj = @game.select obj
  end

  def interact person
    @obj.interact person
  end

  def stats person=nil
    stats = @game.stats(person ? person : @obj.to_s)
    print_summary stats, 5
  end

  def print_summary map, n
    map.each do |k, v|
      tab = n - k.size / 4
      puts "#{k}#{"\t" * tab}#{v}"
    end
  end

  def build role, name
    @obj = @game.build(role, name)
  end

  def reset name
    @obj.reset name
  end

  def quit
    if @obj.is_a? PersonBuilder
      @game.add @obj.get_result
      @obj = @obj.get_result
    else
      @obj = nil
    end
  end

  def set prop, *args
    @obj.send("set_#{prop}", *args)
  end

  def clear
    puts "\e[H\e[2J"
    print_menu
  end

  def close
    @open = false
  end

  def help
    commands = {}
    commands['stats'] = 'Show the stats of a student or teacher'
    commands['clear'] = 'Clear the console'
    commands['close'] = 'Close the console'
    commands['exit'] = 'see close'
    commands['help'] = 'Show this help'
    print_summary commands, 3
  end
end