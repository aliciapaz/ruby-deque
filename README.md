# Ruby Deque

> This is a ruby implementation of a Deque

A Deque is a Queue in which elements can be added and removed both at the front and back of it.

This data structure is implemented with a linked list and includes the following methods:

- pushFront: add an element at the head of the queue
- pushBack: add an element at the back of the queue
- popFront: removes the first element of the queue
- popBack: removes the last element of the queue
- topFront: returns the value of the first element
- topBack: returns the value of the last element
- is_empty?: returns true or false if the queue is empty

All methods are O(1), which makes this implementation preferable over an Array implementation.