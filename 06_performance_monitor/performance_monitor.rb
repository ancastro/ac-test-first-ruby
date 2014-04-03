require "time"

def measure(n = 1, &a_block)
  startTime = Time.now
  
  n.times(&a_block)
  
  return (Time.now - startTime) / n
end