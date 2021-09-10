def fromRoman(romanNumber)
    if romanNumber != romanNumber.upcase
        raise TypeError
    end
    array = []
    array = romanNumber.split(//)
    index = 0
    arabicNumber = 0
    while index != array.length do
	
        if array[index] == "M"
            index += 1
            arabicNumber += 1000
        
        elsif array[index] == "D"
            index += 1
            arabicNumber += 500

        elsif array[index] == "C"
            index += 1
            if array[index] == "M"
                index += 1
                arabicNumber = arabicNumber + 900
            elsif array[index] == "D"
                index += 1
                arabicNumber = arabicNumber + 400
            
            else
                arabicNumber = arabicNumber + 100
            end
        elsif array[index] == "L"
            index += 1
            arabicNumber = arabicNumber + 50
        elsif array[index] == "X"
            index += 1
            if array[index] == "C"
                index += 1
                arabicNumber = arabicNumber + 90
            elsif array[index] == "L"
                index += 1
                arabicNumber = arabicNumber + 40
            else
                arabicNumber = arabicNumber + 10
            end
        elsif array[index] == "V"
            index += 1
            arabicNumber = arabicNumber + 5
        elsif array[index] == "I"
            index += 1
            if array[index] == "X"
                index += 1
                arabicNumber = arabicNumber + 9
            elsif array[index] == "V"
                index += 1
                arabicNumber = arabicNumber + 4
            else
                arabicNumber = arabicNumber + 1
            end
        else
            raise TypeError
        end
    end
    return arabicNumber
end

def toRoman(arabicNumber)
    if (arabicNumber <= 0 or arabicNumber > 3999)
        raise RangeError
    end
    romanNumber = []
    while arabicNumber != 0 do
        if arabicNumber >= 1000
            arabicNumber = arabicNumber - 1000
            romanNumber << "M"
        elsif arabicNumber >= 900
            arabicNumber = arabicNumber - 900
            romanNumber << "CM"
        elsif arabicNumber >= 500
            arabicNumber = arabicNumber - 500
            romanNumber << "D"
        elsif arabicNumber >= 400
            arabicNumber = arabicNumber - 400
            romanNumber << "CD"
        elsif arabicNumber >= 100
            arabicNumber = arabicNumber - 100
            romanNumber << "C"
        elsif arabicNumber >= 90
            arabicNumber = arabicNumber - 90
            romanNumber << "XC"
        elsif arabicNumber >= 50
            arabicNumber = arabicNumber - 50
            romanNumber << "L"
        elsif arabicNumber >= 40
            arabicNumber = arabicNumber - 40
            romanNumber << "XL"
        elsif arabicNumber >= 10
            arabicNumber = arabicNumber - 10
            romanNumber << "X"
        elsif arabicNumber >= 9
            arabicNumber = arabicNumber - 9
            romanNumber << "IX"
        elsif arabicNumber >= 5
            arabicNumber = arabicNumber - 5
            romanNumber << "V"
        elsif arabicNumber == 4
            arabicNumber = arabicNumber - 4
            romanNumber << "IV"
        else
            arabicNumber = arabicNumber -1
            romanNumber << "I"
        end
    end
    size = romanNumber.length
    index = 0
    answer = ""
    while index != size do
        answer = answer + romanNumber[index]
        index += 1
    end
    return answer
        
end
