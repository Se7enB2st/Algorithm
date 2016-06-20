#The Firehose Project - Algorithm Problem: Image Blur Manhattan Distance

#Given a 2D array(image), create a Image class and implement a blur method to run a transformation on the image.
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

  def blur(distance) #Recursive Solution
    blur_image #Blur image once
    # if the distance is less than or equal to 1, you are done blurring, just return the blurred image
    if distance <= 1
      Image.new(@new_image)
    else
      # if the distance is greater than one, you need to make another pass so call blur again
      # but lower the distance value by 1, since you already blurred once
      Image.new(@new_image).blur(distance - 1)
    end
  end

  def blur_image
    #Create a clone of array
    @new_image = Marshal.load(Marshal.dump(@array))
    #Loop through array and find the "pixel 1"
    @array.each_with_index do |row, row_number|
      row.each_with_index do |pixel, col_number |
        if pixel == 1
          #Blur the pixel that are on top, down, left, right of the "1 Pixel" to 1
          @new_image[row_number - 1][col_number] = 1 unless row_number == 0 #Up
          @new_image[row_number + 1][col_number] = 1 unless (row_number + 1) >= @array.length #Down
          @new_image[row_number][col_number - 1] = 1 unless col_number == 0 #Left
          @new_image[row_number][col_number + 1] = 1 unless (col_number + 1) >= row.length #Right
        end
      end
    end
  end

end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1]
  ])

  blurred_image = image.blur(3).output_image #Blur image by a distance of 3

