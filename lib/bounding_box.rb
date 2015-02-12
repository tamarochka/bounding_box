class BoundingBox
  attr_reader :left, :bottom, :width, :height

  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
  end

  def right
    @right = @left + @width
  end

  def top
    @top = @bottom + @height
  end

  def contains_point?(x, y)
    if (left..right).include?(x) and (bottom..top).include?(y)
      return true
    else
      return false
    end
  end
end
