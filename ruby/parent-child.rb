def parent_child data
  roots = []
  tmp_hash = data.map do |d| d[:children] = []; {:id => d[:id], :value => d} }
  data.each do |d|
    if d[:parent].to_i === 0
      roots.push d
    else
      parent = tmp_hash[d[:id]][:value]
      puts "!!!!!!!!!!!!"
      puts parent
      parent[:children].push d
    end
  end
  return roots
end