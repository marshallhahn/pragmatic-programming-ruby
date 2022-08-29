def words_from_string(string)
    string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
    counts = Hash.new(0)
    for word in word_list
        counts[word] += 1
    end
    counts
end

raw_text = File.read("paragraph.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |word, count| count }
top_ten = sorted.last(10)

# for i in 0...10
#     word = top_ten[i][0]
#     count = top_ten[i][1]
#     puts "#{word}: #{count}"
# end

# Better
# top_ten.each do|word, count| 
#     puts "#{word}: #{count}"
# end

# Even Better
top_ten.map { |word, count| puts "#{word}: #{count}"}