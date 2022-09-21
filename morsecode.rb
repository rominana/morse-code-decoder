MORSE_DICCIONARY = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
  '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
}.freeze

def decode_char(morse_char)
  MORSE_DICCIONARY[morse_char]
end

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |l|
    word << decode_char(l)
  end
  word
end

def decode(morse_sentence)
  sentence = ''
  morse_sentence.split('   ').each do |w|
    sentence << "#{decode_word(w)} "
  end
  sentence.strip
end

puts decode_char('--')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
