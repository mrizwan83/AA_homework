class Stack
    def initialize
      @arr = []
    end

    def push(el)
      @arr.push(el)
      el
    end

    def pop
      @arr.pop
    end

    def peek
      @arr.last
    end

    private
    attr_reader :arr
  end



class Queue
    def initialize
      @arr = []
    end

    def enqueue(el)
      @arr.push(el)
      el
    end

    def dequeue(el)
      @arr.shift
    end

    def peek
      @arr.first
    end

private
attr_reader :arr
end



class Map
    def initialize
      @arr = []
    end

    def set(key, value)
      pair_idx = @arr.index { |pair| pair[0] == key}
      if pair_idx
        @arr[pair_idx][1] = value
      else
        @arr.push([key, value])
      end
      value
    end

    def get(key)
      @arr.each { |pair| return pair[1] if pair[0] == key}
      nil
    end

    def delete(key)
      value = get(key)
      @arr.reject! { |pair| pair[0] == key}
      value
    end

    def show
      @arr.each do |pair|
        puts pair.join("=>")
      end
    end

private
attr_reader :arr
end


