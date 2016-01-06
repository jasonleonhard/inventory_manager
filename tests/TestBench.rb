require 'benchmark'
require_relative '../lib/menu'

start = Time.now

iterations = 100_000
Benchmark.bm do |bm|

  bm.report('@menu') do
    iterations.times do
      @menu = Menu.new
    end
  end

 bm.report('@exit') do
    iterations.times do
      @exit
    end
  end
  
  bm.report('@a   ') do
    iterations.times do
      @a
    end
  end

  bm.report('@b   ') do
    iterations.times do
      @b
    end
  end

  bm.report('@c   ') do
    iterations.times do
      @c
    end
  end

  bm.report('@d   ') do
    iterations.times do
      @d
    end
  end
  
  bm.report('@f   ') do
    iterations.times do
      @f
    end
  end
end

finish = Time.now
diff = finish - start 
puts diff.to_s + ' seconds' # total time for Benchmark to run