class PropertiesController < ApplicationController
  # TODO: Show the polygons which are the properties.
  # TODO: Create a new property with the correct boundaries
  # TODO: List the properties

  def index
    @properties = Property.all
  end

  def show

  end
end
