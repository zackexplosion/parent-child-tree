def parent_child data
  roots = []
  tmp_hash = []

  data.each do |d|
    tmp_hash[d[:id]] = {
      :id => d[:id],
      :children=> []
    }
  end

  data.each_with_index do |d, i|
    node = tmp_hash[d[:id]]
    if d[:parent].to_i === 0
      roots.push node
    else
      parent = tmp_hash[d[:parent]]
      parent[:children].push node
    end
    puts i.to_s + " roots: "
    puts roots
  end

  return roots
end