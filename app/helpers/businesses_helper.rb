module BusinessesHelper

  def our_gmaps4rails(json)
    # { "detect_location" => true, "center_on_user" => true, "zoom" => 3}
    gmaps("map_options" => {:auto_adjust => true, :auto_zoom => false, :zoom => 16},
          "markers" => { "data" => json }
    )
  end

end
