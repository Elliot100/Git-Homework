class Map
    attr_accessor :map

    def initialize
        @map = []
    end

    def set(key,value)  
        @map.each do |pair|
            if pair[0] == key
                pair[1] = value
                return @map
            end
        end 
        @map << [key,value]
    end

    def get(key)
        @map.each do |pair|
            return pair[1] if pair[0] == key 
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |pair,i|
            if pair[0] == key 
                @map = @map[0...i] + @map[i+1..-1]
            end
        end
        @map
    end

    def show
        @map
    end


end

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show