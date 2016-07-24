def prime_sieve(max)
  prime_num = []
  ind_arr = []

  max.times { ind_arr << true }

  i = 2

  while i < ind_arr.length
    if ind_arr[i] == true
      prime_num << i
      multiple_of_i = i * 2
      while multiple_of_i < max
        ind_arr[multiple_of_i] = false
        multiple_of_i += i
      end
    end
    i += 1
  end
  puts "prime numbers:"
  p prime_num
end

x = prime_sieve(100)

p x

