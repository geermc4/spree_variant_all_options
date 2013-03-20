module SpreeVariantAllOptions
  module ArrayHelper
    def self.array_permutation array
      return array[0] if array.size == 1
      first = array.shift
      return first.product( array_permutation(array) ).map {|x| x }
    end
  end
end
