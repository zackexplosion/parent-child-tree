def parent_child data
  roots = []

  tmp_hash = []

  data.each_with_index do |d, i|

    tmp_hash[d[:id]] = {
      :id => d[:id],
      :children=> []
    }

    node = tmp_hash[d[:id]]
    if d[:parent].to_i === 0
      roots.push node
    else
      parent = tmp_hash[d[:parent]]

      # puts parent
      parent[:children].push node
    end
    puts i.to_s + " roots: "
    puts roots
    # i = i + 1
  end
  # puts "!!!!!!!!!!!!"

  return roots
end