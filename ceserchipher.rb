def ceser(str,key)
  charters = str.split('')
  encrypt = Array.new()
  charters.each do |char|
    toascii = char.ord
    if toascii < 97 || toascii > 122
      encrypt.push(toascii.chr)
    elsif toascii + key > 122
      x = toascii + key
      y = x -  122
      encrypt.push((96 + y).chr)
    else
      toascii += key
      encrypt.push(toascii.chr)
    end
  end
  return encrypt.join('')
end
p ceser('abcdefghijklmnopq % $ rstvwxyz',1)
