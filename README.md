## Parent Child Tree implemention in many progarmming languages

### Introduction
Convert an array with parent attribute, to a parent child tree.

#### Example in Javascript
```javascript
var data = [
	{id: 1, parent: 0},
	{id: 2, parent: 0},
	{id: 3, parent: 1},
	{id: 4, parent: 1},
	{id: 5, parent: 2},
	{id: 6, parent: 2},
];

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
expect(result).to.deep.equal(expect_result);
```


### Languages
* [Ruby](https://github.com/zackexplosion/parent-child-tree/tree/master/ruby)
* [Javascript](https://github.com/zackexplosion/parent-child-tree/tree/master/javascript)
* PHP

