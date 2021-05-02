# TUT 2
## context
holds meta information, position of widget etc. every widget get context and builds communication along widget tree. we use context for accessing Theme and MediaQuery without passing directly these data along the Widgets.

## Key
every widget in flutter can have a key. stateless widget generally donot need a key. *initState* called before *build* in widget cycle. if we take a close look at widget tree and element tree; element tree maintain a reference to widget tree and respond to widget removal and addition in widget tree. when we remove a widget in widget tree a side by side reference comparson occurs. each widget in the Widget tree assigned get referenced from element tree. Note that state is maintained by element trees elements. so when key is not privided the referencing of widget and element occur in a round robbin fashion. for eg if there are 10 widget and 10 element and 1 widget is deleted the widget after the deleted widget get the state and element of deleted widget and so on. this can be seen by *initState* where assigning some value to a list of items inside the *initState* and deleting them one by one and seeing how state and element is carried.
the solution is to pass a key attribute to each element of a List widget. Key act as another identification criteria for managing widget and element in trees.
[ref](https://www.youtube.com/watch?v=kn0EOS-ZiIc&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2&index=8)

## random notes
- GestureDetector when wrapped around a widget give that widget functionality to react when tap, move etc.