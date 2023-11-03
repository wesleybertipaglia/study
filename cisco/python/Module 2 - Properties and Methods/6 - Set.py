# Set - Properties and Methods
set1 = {1, 2, 3}
set2 = {3, 4, 5}

## Length
length = len(set1)

## Copy
copy_of_set = set1.copy()

## Adding Elements
set1.add(4)
set1.update([5, 6, 7])

## Removing Elements
set1.remove(3) # Removes the specified element from the set. Raises an error if the element is not found
set1.discard(7) # Removes the specified element from the set if it exists. Does not raise an error if the element is not found
popped_element = set1.pop() # Removes and returns an arbitrary element from the set
set1.clear() # Removes all elements from the set

# Operations

## Union
union_set = set1.union(set2)

## Intersection
intersection_set = set1.intersection(set2)

## Difference
difference_set = set1.difference(set2)
symmetric_difference_set = set1.symmetric_difference(set2)

## Subset and Superset
is_subset = set1.issubset(set2)
is_superset = set1.issuperset(set2)
