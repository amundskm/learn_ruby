class Book
    attr_reader :title

    def title=(input)
      @title = cap(input)
    end

    def cap(str)
        articles = ["a", "an", "the"]
        conjunctions = ["and", "but", "nor", "or", "so", "yet", "for"]
        prepositions = ["with", "at", "from", "into", "of", "to", "in", "for", "on", "by", "but", "up"]

        str_array = str.split
        str_array.map! {|word| (
            if articles.include? word or conjunctions.include? word  or prepositions.include? word or word =~ /\d/
                word = word
            else
                word.capitalize!
            end
        )}
        str_array[0].capitalize!
        str_final = str_array.join(" ")
        return str_final

    end

end