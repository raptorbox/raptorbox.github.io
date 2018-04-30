# Tree

Imagine we have installed devices in our fields \(example mentioned above\). Some of them are for watering and some of them are providing us with field's soil conditions and 2-3 are for weather condition etc. Let's say we have to water the fields. In the normal way, we will look for all the devices and turn on water functionality for the specific devices but we have to scan all the devices. If we can make a cluster / group of those similiar valid devices then our job will become easy. This group is our**tree**.

Tree helps us in making a virtual tree in Raptor to cluster all the similiar valid devices in one place. In this cluster kind of tree, we will have one root \(water device\) and its children \(all devices who shares the same functionality\). This will solve our problem mentioned above and by using the Action API of Raptor we will be able to turn on water on all the devices within out fields.

## Data Model

```
{
    "name": "Watering Devices",
    "type": "water",
    "parentId": "device Id",
    "children": [
      null
    ]
}
```

1. `name`is required and is used to identify the tree.
2. `type`is a string to help users to distinguish the trees.
3. `parentId`is a device id of root / parent device which is used to get its children. It is usually a virtual device without any connected physical existence.
4. `children`is the list of all its children.

## How it works:

A valid user can create a root device \(a virtual device without any real connected device\) only if he is authorized to create tree. The user can then add ids of child devices if and only if he/she owns or have authority over the devices.

Detailed overview of APIs of tree can be viewed [here](http://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v5/swagger/api/raptor-tree/swagger.json#/).

### 

  


