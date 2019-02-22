class Mumble 
  def self.mumble_letters(str)
    result = ''
    str.split('').each_with_index do |letter, i|
      result << letter.upcase * (i == 0 ? 1 : 2)
    end
    result
  end
end