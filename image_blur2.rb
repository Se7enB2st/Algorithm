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
    #Loop through image, find the "1 pixel"
    @image.each_with_index do |row, row_number|
      row.each_with_index do |pixel, col_number |
        if pixel == 1
          #Blur the pixel that are top,down,left,right of the "1 Pixel" to 1
          @new_image[row_number - 1][col_number] = 1 unless row_number == 0 #Top
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


