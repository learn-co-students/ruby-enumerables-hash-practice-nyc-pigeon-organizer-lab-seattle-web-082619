

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
  
  
  
  key_variable = new_hash.keys  #how are my keys represented as new_hash.keys? could it be new_hash[keys]

  #testing2 - changing my new_hash.keys ---> new_hash[keys]
      # ---> gave me undefined local variable or method `keys' for
  #pulled my iteration of my keys outside where I had it and code still satisfies the test. 
  
  key_variable.each do |key_name| #but why at this specific location do I need to iterate over my key variable? 
  
  data[:color].each do |bird_color,names|
    names.each do |bird_names|
      
        if(bird_names === key_name)
         new_hash[key_name][:color] << bird_color.to_s
         end 
      end 
    end   
  end 
  
   key_variable.each do |key_name|
     
  data[:gender].each do |sex_type,name_type|
    name_type.each do |bird_name| 
     
        if (bird_name === key_name)
          new_hash[key_name][:gender] << sex_type.to_s
        end  
      end  
    end
  end   
  key_variable.each do |key_name| 
  
  data[:lives].each do |location,name_at_location|
    name_at_location.each do |name|
      
        if (name === key_name)
          new_hash[key_name][:lives] << location.to_s
        end    
      end
    end 
  end   
return new_hash
end 
