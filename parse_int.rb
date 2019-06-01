class ParseInt
    def parse_int str
        puts str,"procesing...."
        str.gsub!("\sand",'')
        tens = {"twenty"=>20, "thirty"=>30, "forty"=>40, "fifty"=>50, "sixty"=>60, "seventy"=>70, "eighty"=>80, "ninety"=>90}
        nums = {"zero"=> 0, "one"=> 1, "two"=> 2, "three"=> 3, "four"=> 4, "five"=> 5, "six"=> 6, "seven"=> 7, "eight"=> 8, "nine"=> 9,
        "ten"=> 10, "eleven"=> 11, "twelve"=> 12, "thirteen"=>13, "fourteen"=>14, "fifteen"=>15, "sixteen"=>16, "seventeen"=>17, "eighteen"=>18, "nineteen"=>19}
        n = t = 0
        str.split.each do |inst|
            if nums[inst] != nil
                t += nums[inst]
            elsif inst.match(/([a-z]+ty)-?([a-z]*)/)
                t += tens[$1] + ((nums[$2] == nil) ? 0 :  nums[$2])
            elsif inst == "hundred"
                t *= 100
            elsif inst == "thousand"
                n += t * 1000
                t = 0
          elsif inst == "million"
                t = 1000000
           end
        end 
        n += t
        return n
    end

end