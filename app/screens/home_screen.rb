class HomeScreen < PM::TableScreen
  title "NFL Draft Teams"

  def table_data
    [{
      cells: Array(@teams)      
    }]
  end

  def on_load
    NFL.new.teams do |response|
      p response
      @teams = response["teams"].map do |f|
        {
          title: f["name"],
          action: :tap_name,
          arguments: { id: f["id"] }
        }
      end
      update_table_data
    end
  end

  def tap_name(args={})
    PM.logger.debug args[:id]
  end

end
