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
	[
		[1, 4, '0001'],
		[5, 4, '0101'],
		[10, 1, '1010'],
		[10, 2, '1010'],
		[10, 3, '1010'],
		[10, 4, '1010'],
		[10, 5, '01010'],
		[10, 6, '001010'],
		[10, 7, '0001010'],
		[10, 8, '00001010'],
		[1041, 8, '10000010001'],
		[1041, 16, '0000010000010001']#,
	].each do |decimal, length, binary|
		it "#{decimal}, with length #{length}, must be '#{binary}'" do
			expect(decimal.to_binary(length)).to eq(binary)
		end
	end
end
