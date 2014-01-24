def assert(x, y)
	raise "Assertion failed. #{x} should equals #{y}" unless x == y
end

ary = [8, 88, 888, 818, 17.71, 1771, 17.17, 3, 37, 124, 121, 83.2]
expected = [8, 88, 888, 818, 17.71, 1771, 3, 121]

assert(palindrome(ary), expected)