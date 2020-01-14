def recursive_fib(num)
  if num < 2
    return num
  else
    recursive_fib(num -1) + recursive_fib(num -2)
  end

end


def iterative_fib(num)
  x = 0
  y = 1
  num.times do
    temp = x
    x = y
    y = temp + y
  end
  return x
end

p recursive_fib(35)
p iterative_fib(35)



require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") {recursive_fib(num) }
  x.report("iterative_fib") {iterative_fib(num) }
end