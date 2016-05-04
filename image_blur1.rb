#The Firehose Project - Algorithm: Image Blur 1

#Rule 1:Build a class that allows us to build a new image with the data we specify.
#Rule 2:Make it possible for the class to output the image to the screen.

class Image
  attr_accessor :data

  def initialize(array)
    @data = array
  end

  def output_image
    @data.each do |row|
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
