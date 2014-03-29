class NFL
  NFL_URL = "http://blooming-refuge-3898.herokuapp.com/teams"

  def teams(&callback)
    AFMotion::JSON.get(NFL_URL) do |result|
      if result.success?
        callback.call result.object
      else
        callback.call nil
      end
    end
  end
end