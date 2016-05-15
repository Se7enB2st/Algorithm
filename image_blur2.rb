#The Firehose Project - Algorithm Problem: Image Blur 2

#Given a black and white image, represented as the class you already implemented, implement a blur method to run a transformation on the image. 
#Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1.

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
