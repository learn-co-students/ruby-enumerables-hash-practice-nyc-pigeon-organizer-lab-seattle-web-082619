def nyc_pigeon_organizer(data)
  sorted_pigeons = {}

  data.each do |key, val|
    val.each do |k, v|
      v.each do |ele|
        if data[:color].keys.include?(k)
          if sorted_pigeons[ele]
            sorted_pigeons[ele][:color].push("#{k}")
          else
            sorted_pigeons[ele] = {
              :color => ["#{k}"]
            }
          end
        elsif data[:gender].keys.include?(k)
          if sorted_pigeons[ele][:gender]
            sorted_pigeons[ele][:gender].push("#{k}")
          else
            sorted_pigeons[ele][:gender] = ["#{k}"]
          end
        elsif data[:lives].keys.include?(k)
          if sorted_pigeons[ele][:lives]
            sorted_pigeons[ele][:lives].push("#{k}")
          else
            sorted_pigeons[ele][:lives] = ["#{k}"]
          end
        end
      end
    end
  end
  return sorted_pigeons
end
