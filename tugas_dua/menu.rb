class Menu
  #getter
  attr_reader :quit	
  # *menu_args is making an array
  def initialize( *menu_args )
    @menu_args = menu_args
    @quit = "quit"
  end
	
  def get_menu_choice
    #header
    puts "#=====================================================#"
    puts "#              Welcome to Battle Arena                #"
    puts "#-----------------------------------------------------#"
    puts "#    Description :                                    #"		

    #print the menu
    @menu_args.each_with_index do | item, index |
      puts "#    #{index + 1}. #{item}"
  end
		
  puts "#-----------------------------------------------------#"
  print "     * Current Player: " 
  puts $count
  $name.each {|x| puts "     - Player Name: #{x}"}
    puts "     * Max Player 2 or 3"
    puts "#-----------------------------------------------------#"
    #ask for user choice
    print "     * Enter your choice: "
    user_choice = gets.chomp.downcase
    #return user choice
    return user_choice
  end
end





