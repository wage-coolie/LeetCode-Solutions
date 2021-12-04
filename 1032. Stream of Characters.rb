class Node 
    attr_reader :children
    attr_accessor :eow
    
    def initialize()
        @children = {}
    end
    
    def add(word)
        curr = self
        word.each_char do |char|
            curr.children[char] ||= Node.new
            curr = curr.children[char]
        end
        curr.eow = true
    end
    
end

class StreamChecker
    def initialize(words)
        # hash map {"char" => Node}
        @root = Node.new
        words.each {|w| @root.add(w.reverse) }
        @letters = []
    end


=begin
    :type letter: Character
    :rtype: Boolean
=end
    def query(letter)        
        @letters << letter
        curr_node = @root
        
        (@letters.length - 1).downto(0) do |i|
            char = @letters[i]
            if curr_node.children[char].nil?
                return false
            elsif curr_node.children[char].eow
                return true
            else
                curr_node = curr_node.children[@letters[i]]
            end
        end
    
        false 
    end
    
end

# Your StreamChecker object will be instantiated and called as such:
# obj = StreamChecker.new(words)
# param_1 = obj.query(letter)
