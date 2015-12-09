class TipCalculator
	attr_accessor :bill_amount, :rate

	def compute
		return 0 if self.bill_amount.is_a? String
		return 0 if self.bill_amount < 0
		return 0 if self.rate < 0
		return 0 if self.rate.is_a? String

		cents = self.bill_amount * 100
		tip = (cents * (self.rate.to_f / 100)).ceil
		tip / 100.0
		#(self.bill_amount.to_f * (self.rate.to_f / 100))
	end

end
