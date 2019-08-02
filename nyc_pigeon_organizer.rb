def nyc_pigeon_organizer (data)
new_hash ={}

  data.each do |main_level,interior_levels|
    interior_levels.each do |description_marker,array|
     array.each do |name|
       new_hash[name] = {:color => [], :gender => [], :lives =>[]}
       #hash[key]= value 
      end 
    end 
  end 
  #make a variable for key 
  key_variable = new_hash.keys 
  data[:color].each do |bird_color,names|
    names.each do |bird_names|
      key_variable.each do |key_name|
        if(bird_names === key_name)
         new_hash[key_name][:color] << bird_color.to_s
         end 
      end 
    end   
  end 
  data[:gender].each do |sex_type,name_type|
    name_type.each do |bird_name| 
      key_variable.each do |key_name|
        if (bird_name === key_name)
          new_hash[key_name][:gender] << sex_type.to_s
        end  
      end  
    end
  end   
  data[:lives].each do |location,name_at_location|
    name_at_location.each do |name|
      key_variable.each do |key_name| 
        if (name === key_name)
          new_hash[key_name][:lives] << location.to_s
        end    
      end
    end 
  end   
return new_hash
end 
