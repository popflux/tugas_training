class Player
  attr_accessor :name, :blood, :manna

  $name = %w[]
  $blood = []
  $manna = []
  $count = $name.count

  def all_players
    puts $name
    puts $count
  end 

  def add_player 
    if $count >= 3
      puts '', '     <SUDAH MENCAPAI JUMLAH MAKSIMUM PLAYER!!!>'
      puts "#-----------------------------------------------------#\n\n"  
    else
      puts "\n#-----------------------------------------------------#"
      puts "#                    ADD PLAYER                       #"
      puts "#-----------------------------------------------------#"
      print "     Input nama: "
      new_name = gets.chomp

      check = $name.include? new_name
      if (check == false) 
        $name << new_name
        $blood << 100
        $manna << 40
        $count += 1
        puts '','     <SELAMAT, ANDA TELAH SUKSES MEMBUAT PEMAIN>' 
        puts "#-----------------------------------------------------#\n\n"      
      else
        puts '','     <MAAF, NAMA TERSEBUT TELAH TERPAKAI!!!>'
        puts "#-----------------------------------------------------#\n\n"
      end
    end
  end

  def select_player
    print "     Select Attacker: "
    STDOUT.flush
    attacker = gets.chomp.downcase

    print "     Select Target: "
    STDOUT.flush
    target = gets.chomp.downcase
    
    checkatt = $name.include? attacker
    checktar = $name.include? target

    if (checkatt == false && checktar == false)
      puts '','     <ATTACKER & TARGET TIDAK TERDAFTAR!!!>' 
      puts "#-----------------------------------------------------#\n\n"
    elsif (checkatt == false)
      puts '','     <ATTACKER TIDAK TERDAFTAR!!!>' 
      puts "#-----------------------------------------------------#\n\n"
    elsif (checktar == false)
      puts '','     <TARGET TIDAK TERDAFTAR!!!>' 
      puts "#-----------------------------------------------------#\n\n"
    else 
      puts battle_on(attacker, target)
    end
  end

  def battle_on(attacker, target)
    index_attacker = $name.index(attacker)
    index_target = $name.index(target)
    att_name = $name[index_attacker].upcase
    tar_name = $name[index_target].upcase
    blood_attacker = $blood[index_attacker]
    blood_target = $blood[index_target]
    manna_attacker = $manna[index_attacker]
    manna_target = $manna[index_target]
    manna_attacker_new = manna_attacker-20
    blood_target_new = blood_target-20
    $manna[index_attacker] = manna_attacker_new
    $blood[index_target] = blood_target_new
      
    if ($manna[index_attacker] != 0)    
      puts "", "     <#{att_name} IS ATTACKING #{tar_name}!!!>", ""
      puts "     DESCRIPTION:"
      puts "#-----------------------------------------------------#"	
      print "     * #{att_name}: Blood = #{blood_attacker}, Manna = #{$manna[index_attacker]}\n"
      print "     * #{tar_name}: Blood = #{$blood[index_target]}, Manna = #{manna_target}\n"
    else
      puts "", "     <#{att_name} IS ATTACKING #{tar_name}!!!>", ""
      puts "     DESCRIPTION:"
      puts "#-----------------------------------------------------#"	
      print "     * #{att_name}: Blood = #{blood_attacker}, Manna = #{$manna[index_attacker]}\n"
      print "     * #{tar_name}: Blood = #{$blood[index_target]}, Manna = #{manna_target}\n"
      puts "", "     <GAME OVER, #{tar_name} IS WIN!!!"
      puts "#-----------------------------------------------------#"
     end
  end
		
end

