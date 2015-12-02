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


	for (var i in tree) {
		var current = tree[i];
		var node = tmp[current.id];
		// console.log(node);

		if ( parseInt(current.parent) === 0 ){
			roots.push(node);
		}else{
			var parent = tmp[current.parent];
			parent.children.push(node);
		}
	}

	// console.log(roots);

	return roots;
};

module.exports = parent_child;
