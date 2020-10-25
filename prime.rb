require 'benchmark'
def prime?(int)
  return true if int == 2 
  return false if int <= 1 || int.even?
  i = 3
  until i >= int**0.5 
    return false if int % i == 0
    i += 1
  end
  true
end
puts Benchmark.measure { prime?(9999999999999999999999999999999999) }
