function parent_child(tree){
  var tmp = {};
  var roots = [];

  for (var i in tree) {
    tmp[tree[i].id] = {
      'id': tree[i].id,
      'children': []
    };
  }

  // console.log(tmp);

  tree.forEach(function(current){
    var node = tmp[current.id];

    if ( parseInt(current.parent) === 0 ){
      roots.push(node);
    }else{
      var parent = tmp[current.parent];
      parent.children.push(node);
    }
  });

  return roots;
};

module.exports = parent_child;
