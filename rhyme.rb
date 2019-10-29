char_hash = Hash.new
file = File.open("rhyme.txt", "r")
file.each_line { |line|
  words = line.split
  words.each { |word|
  	chars = word.split("")
  	chars.each { |char|
	    if char_hash.has_key?(char)
	      char_hash[char] += 1
	    else
	      char_hash[char] = 1
	    end
	}
  }
}

char_hash = char_hash.sort_by{|key, val|
				key
			}

file = File.open("rhyme_output.txt", "w")
char_hash.each{|key, val|

	file.write "Number of #{key}'s : #{val}.\n"

}