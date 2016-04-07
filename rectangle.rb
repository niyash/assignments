class Rectangle
	@@count=0
	def initialize
		puts"WELCOME TO RECTANGLE AREA CALCULATOR"
		puts"------------------------------------"
		self.get_values
		puts self.calculateArea
		puts self.checkifSquare
		puts self.calculatePerimeter
		@@count = @@count+1;
	end
	def get_values
		puts"Input the lenght of the rectangle"
		@length=gets.chomp.to_i
		puts"Input the width of the rectangle"
		@width=gets.chomp.to_i
	end

	def checkifSquare
		if @length==@width
			return "It is a square"
		end
		return "It is a rectangle"

	end
	def calculateArea
		area = @length*@width
		"The area of the rectangle is #{area}"
	end

	def calculatePerimeter
		perimeter = 2*@length*@width
		"The perimeter of the rectangle is #{perimeter}"
	end 

	def Rectangle.getCount
		@@count
		end

end

cont ='y';
while (cont=='y')
	rectangle1 = Rectangle.new
	puts"Do you want to continues(y/n)";
	cont= gets.chomp.downcase
end
puts"Thank you for using this awesome app. You have used this app #{Rectangle.getCount} times."
