def nyc_pigeon_organizer(data)
  pigeon_list = {}
  key = nil
  
  data.each do |trait|
    key = trait[0]
    values = trait[1]
    
    values.each_pair do |value, birds|
      birds.each do |bird|
        if(!pigeon_list[bird])
          pigeon_list[bird] = {}
        end
        if(!pigeon_list[bird][key])
          pigeon_list[bird][key] = []
        end
        
        pigeon_list[bird][key].push(value.to_s)
        
      end
    end
  end
  
  p pigeon_list
  pigeon_list
end
