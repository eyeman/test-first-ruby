def reverser
  yield.split.each {|item| item.reverse!}.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times { yield }
end
# blarg = reverser do
#   "hello"
# end
# print blarg
