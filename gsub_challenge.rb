# Challenge from HackerRank
def strike(string)
    "<strike>#{string}</strike>"
end

def mask_article(sample_string, array)
    # array.each do |word|
    #     if sample_string.include? word
    #         sample_string.gsub(/word/, strike(word))
    #     end
    # end
    # sample_string
    array.each do |word|
        sample_string = sample_string.gsub(word, strike(word))
    end
    sample_string
end

mask_article("All the right things in all the right places", ["all", "right"])