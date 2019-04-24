module ToBinary
	def to_binary length = 0
		n = self
		b = [self == 0 ? 0 : nil]
		while n > 0
			b.unshift n % 2
			n /= 2
		end
		(length-1).times { b.unshift 0 }
		b.join
	end
end

class Integer
	include ToBinary
end

