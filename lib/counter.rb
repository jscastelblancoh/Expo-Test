# clase de ruby para probar los matchers de change
class Counter
    class << self
      def increment
        @count ||= 0
        @count += 1
      end
  
      def count
        @count ||= 0
      end
    end
  end