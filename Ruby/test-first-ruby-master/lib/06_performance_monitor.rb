
def measure (n=1)
  elapsed = 0.0

  start = Time.now
  n.times do
    yield
  end
  stop = Time.now
  elapsed = stop - start
  elapsed / n
end

# print measure { }
