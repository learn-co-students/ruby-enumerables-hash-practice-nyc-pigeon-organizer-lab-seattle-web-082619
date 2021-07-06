def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, specs|
    specs.each do |quality, names|
      names.each do |name|
        if pigeons[name]
          pigeons[name][category] ? pigeons[name][category] << quality.to_s : pigeons[name][category] = [quality.to_s]
        else
          pigeons[name] = {category => [quality.to_s]}
        end
      end
    end
  end
  pigeons
end
