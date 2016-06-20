#The Firehose Project - Algorithm Problem: Image Blur transformation

#Given a black and white image, represented as the class you already implemented, implement a blur method to run a transformation on the image. 
#Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1.

class Image

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |row|
      puts row.join
    end
  end

  def blur
    #Create a clone of image
    @new_image = Marshal.load(Marshal.dump(@array))
    #Loop through array, find the "1 pixel"
    @array.each_with_index do |row, row_number|
      row.each_with_index do |pixel, col_number |
        if pixel == 1
          #Blur the pixel that are on top, down, left, right of the "1 Pixel" to 1
          @new_image[row_number - 1][col_number] = 1 unless row_number == 0 #Top / dont blur if at the top edge
          @new_image[row_number + 1][col_number] = 1 unless (row_number + 1) >= @array.length #Down / dont blur if at bottom edge
          @new_image[row_number][col_number - 1] = 1 unless col_number == 0 #Left / dont blur if at left edge
          @new_image[row_number][col_number + 1] = 1 unless (col_number + 1) >= row.length #Right / dont blur if at right edge
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
#output = 0 1 0 0
#         1 1 1 1
#         0 1 1 1
#         0 0 0 1


#RSpec testing 
require 'spec_helper'

RSpec.describe Image, type: :model do
  describe "blurring should work" do
    it "should blur a standard image" do
      input = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      expected = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [1, 1, 1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0]
      ]
      image = Image.new(input)
      expect(image.blur.image).to eq expected
    end
  end
end


