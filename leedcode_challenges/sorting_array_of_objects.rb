obj_array = [ {id: 1, name: "zinc"}, {id: 2, name: "andre"}, {id: 3, name: "roy"}]
sorted = obj_array.sort_by {|obj| obj[:name]}
p sorted