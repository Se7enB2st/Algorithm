#CodeWar: Reach Me and Sum My Digits

def sumDig_nthTerm(initval, patternl, nthterm)
    arr = [initval]
    until arr.length >= nthterm
      patternl.each do |x|
        arr << arr[-1] + x
      end
    end
    arr[nthterm-1].to_s.split("").map { |x| x.to_i}.inject(:+)
end
