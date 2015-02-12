class BoundingArea

  def initialize (boundingboxes=[])
    @boundingboxes = boundingboxes
  end

  def contains_point?(x,y)
    return false if @boundingboxes.any? == false
    @boundingboxes.each do |boundingbox|
      return true if boundingbox.contains_point?(x,y) == true
      return false if boundingbox.contains_point?(x,y) == false
    end
  end

end
