require 'pry'

def nyc_pigeon_organizer(data)

  nyc = {}
#create an array of names; names
  names = []
  data[:color].each do |(key,value)|
    names << value
  end #data[color].each
  names = names.flatten.uniq

#iterate over each name
  names.each do |name|
    #create a hash where keys = attributes and values are empty arrays
    att_hash = {}
    data.reduce(att_hash) do |memo, (attribute, value)|
      att_hash[attribute] = [] #or memo[key] = []
      memo
    end #data.reduce(att_hash)

    data.each do |bird_attribute, name_array| #(:color, {:purple => ["Theo", "Peter Jr.", "Lucky"]})
      name_array.each do |attribute, bird_names| #(:purple, ["Theo", "Peter Jr.", "Lucky"])
        if bird_names.include?(name)
          att_hash[bird_attribute] << attribute.to_s #converts symbol to string
        end #if
      end #name_array.each
    end #data.each
  #assign att_hash to name
    nyc[name] = att_hash
  end #names.each
  nyc
end
