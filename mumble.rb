class Mumble 
  def self.mumble_letters(str)
    result = ''

    str.split('').each_with_index do |letter, i|
      result <<  dash(i) + (letter * (i + 1)).capitalize
    end

    result
  end

  def self.dash(index)
    (index == 0 ? '' : '-')
  end
end
