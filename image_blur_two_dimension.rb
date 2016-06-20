#The Firehose Project - Algorithm Problem: Create a new 2D Array (image)

#Rule 1:Build a class that allows us to build a new image with the data we specify.
#Rule 2:Make it possible for the class to output the image to the screen.
#Rule 3:When you run the code it will output the following to the terminal window:
      # 0000
      # 0100
      # 0001
      # 0000

class Image #Image class
  attr_accessor :array

  def initialize(array)
    self.array = array
  end

  def output_image #Create a new 2D array(image)
    self.array.each do |row|
      puts row.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0 ,0, 1],
  [0, 0, 0, 0]
])

image.output_image
