#The Firehose Project - Algorithm Problem: Image Blur 2

#Given a black and white image, represented as the class you already implemented, implement a blur method to run a transformation on the image. 
#Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1.

class Image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  def blur
    #Create a copy of image
    @new_image = Marshal.load(Marshal.dump(@image))
    #Loop through image, if find a pixel equal to 1 change new image
    @image.each_with_index do |row, row_number|
      row.each_with_index do |pixel, col_number |
        if pixel == 1
    #Need explaining here ...
          @new_image[row_number - 1][col_number] = 1 unless row_number == 0 #Up
          @new_image[row_number + 1][col_number] = 1 unless (row_number + 1) >= @image.length #Down
          @new_image[row_number][col_number - 1] = 1 unless col_number == 0 #Left
          @new_image[row_number][col_number + 1] = 1 unless (col_number + 1) >= row.length #Right
        end
      end
    end
    Image.new(@new_image)
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
blurred_image = image.blur.output_image

