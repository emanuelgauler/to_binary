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

describe "#to_binary" do
	[
		[1, "1"],
		[2, 10.to_s],
		[3, 11.to_s],
		[4, 100.to_s],
		[1041, 10000010001.to_s],
		[0, 0.to_s]
	].each do |decimal, binary|
		it "convert #{decimal} to #{binary}" do
			expect(decimal.to_binary).to eq( binary )
		end
	end
end

describe "#to_binary(length)" do
	it "1, with length 4, must be '0001'" do
		expect(1.to_binary(4)).to eq("0001")
	end

	it "1, with length 8, must be '00000001'" do
		expect(1.to_binary(8)).to eq("00000001")
	end

	it "0, with length 4, must be '0000'" do
		expect(0.to_binary(4)).to eq('0000')
	end
end
