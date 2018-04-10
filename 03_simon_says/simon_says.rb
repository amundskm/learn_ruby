def echo(ans)
    return ans
end

def shout(str)
    return str.upcase
end

def repeat(*val)
    if val.length > 1
        str = ((val[0] + " ") * val[1])
        return str[0 ... -1]
    else
        return val[0] + " " + val[0]
    end
end

def start_of_word(str, val)
    return str[0 ... val]
end

def first_word(str)
    space = str.index(" ")
    return str[0 ... space]
end

def titleize(str)
    strArray = str.split(" ")
    littleWords = ["and", "the", "over"]
    strArray = strArray.map{ |word|
        (if not littleWords.include?(word)
            word = word.capitalize
        else
            word = word
        end
        )
    }
    newStr = strArray.join(" ")
    newStr[0] = newStr[0].capitalize
    return newStr
end
    

