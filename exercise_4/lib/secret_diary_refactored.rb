class SecretDiary

  def initialize
    @stored_password = "123"
    @locked = true
    @enteries = []
  end

end

class Security

  def correct_password?
    puts "Please enter password: "
    password = gets.chomp
    @password = password
    until @password == @stored_password
      correct_password?
    end
    unlock
    puts "Entry Granted!"
  end

  def lock_status
    p "Diary is locked." if @locked == true
    p "Diary is unlocked." if @locked == false
  end

  def lock
    @locked = true
  end
  
  def unlock
    @locked = false
  end

end

class DiaryFunction

  def add_entry(locked)
    if @locked == false
      puts "Please input your entry:"
      entry = gets.chomp
      @enteries << entry
    else
      fail "The diary is locked. Access Denied!"
    end
  end

  def get_entry(locked)
    if @locked == false
      puts @enteries.join("\n")
    else
      fail "The diary is locked. Access Denied!"
    end
  end

end