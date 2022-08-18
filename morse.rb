@morse  = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
}

def decod_char (char) 
  @morse[char]
end

def decod_word (word)
    final_word = ""
    word.split.each do |char|
    final_word += decod_char(char)
    end
    final_word
end

def decod_sentence (sentence)
    final_message = ""
    sentence.split("  ").each do |word|
    final_message += decod_word(word)
    final_message += " "
    end
    final_message.chop
end

    