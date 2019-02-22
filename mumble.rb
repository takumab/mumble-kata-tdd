class Mumble 
  def self.mumble_letters(str)
    result = ''
    str.split('').each_with_index do |letter, i|
      if i == 0
        result << letter.upcase * (i + 1)
      else 
        result << '-' + letter.upcase * (i + 1)
      end
    end
    result
  end
end
