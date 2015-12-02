## Parent Child Tree
A repo that collect Parent Child Tree implemention in many progarmming languages.

#### Example in Javascript

```javascript
function parent_child(tree){
  var tmp = {};
  var roots = [];

  // create tmp hash
  for (var i in tree) {
    tmp[tree[i].id] = {
      'id': tree[i].id,
      'children': []
    };
  }

  for (var i in tree) {
    var current = tree[i];
    var node = tmp[current.id];

    if ( parseInt(current.parent) === 0 ){
      roots.push(node);
    }else{
      var parent = tmp[current.parent];
      parent.children.push(node);
    }
  }

  return roots;
};


// convert this
var data = [
  {id: 1, parent: 0},
  {id: 2, parent: 0},
  {id: 3, parent: 1},
  {id: 4, parent: 1},
  {id: 5, parent: 2},
  {id: 6, parent: 2},
];


// to
var expect_result = [
  {id:1, children:[
    {id:3 ,children:[]},
    {id:4 ,children:[]}
  ]},
  {id:2, children:[
    {id:5 ,children:[]},
    {id:6 ,children:[]}
  ]},
];

var result = parent_child(data);
// expect the two variable will be the same
expect(result).to.deep.equal(expect_result);
```


### Languages
* [Ruby](https://github.com/zackexplosion/parent-child-tree/tree/master/ruby)
* [Javascript](https://github.com/zackexplosion/parent-child-tree/tree/master/javascript)
* PHP

