# # Sub strings - Odin project ruby exercises

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict) 
    result = []
    # find all matched substrings
    str.split().each do |str|
        matches = dict.select{ |word| str.include?(word)}
        result.push(matches)
    end

    # convert into hash for substring counts
    result = result.flatten.reduce(Hash.new(0)) do |result, key|
        result[key] += 1
        result
    end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "below" => 1, "low" => 1 }