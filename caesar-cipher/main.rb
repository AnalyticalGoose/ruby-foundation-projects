def caesar_cipher (string, shift)
  a = []
    string.bytes.map do | number |
      if number.between?(32, 64) || number.between?(91, 96) || number.between?(123, 255)
        a = a.push(number.chr)
      elsif number.between?(65, 90) && number+shift >=91
        a = a.push((number+shift-26).chr)
      elsif number.between?(97, 122) && number+shift >=123
        a = a.push((number+shift-26).chr)
      else 
        a = a.push((number+shift).chr)
      end
    end 
  a.join("")
  end 
  
  caesar_cipher("What a string!", 5)