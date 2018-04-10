def translate(str)
    strArray = str.split
    strArray.map! {|word| (
        consonants = word.slice!(0, word.index(/[aeiou]/))
        if consonants[-1] == "q" and word[0] == "u"
            consonants = consonants + word.slice!(0)
        end
        word =  word + consonants + "ay"
        )}
    return strArray = strArray.join(" ")
end

        