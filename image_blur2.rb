#The Firehose Project - Algorithm Problem: Image Blur 2

#Given a black and white image, represented as the class you already implemented, implement a blur method to run a transformation on the image. 
#Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1.

class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  #Build a new image and return it
  #So far, no transformation
  def transform
    one_pixel = []
    @image.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1

        end
      end
    end

    return Image.new(@image)
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0 ,0, 1],
  [0, 0, 0, 0]
  ])
  afterImage =  image.transform
  afterImage.output_image
  # after_transform = Image.new([
  #    [0, 1, 0, 0],
  #    [1, 1, 1, 1],
  #    [0, 1 ,1, 1],
  #    [0, 0, 0, 1]
  #  ])

