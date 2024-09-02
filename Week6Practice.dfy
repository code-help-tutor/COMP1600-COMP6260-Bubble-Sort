predicate sorted (a: array<int>) reads a
{ forall i, j :: 0 <= i < j < a.Length ==> a[i] <= a[j] }

method bubble_sort(a: array<int>)
    modifies a
    ensures sorted(a)
{
    var i: int := 0;

    while 
    {
        /* outer loop: progressively places the largest element in the unsorted portion at the end */
        /* pattern of bubble sort in the outer loop */
        // For example, initial Array: [4, 3, 2, 1, 0]
        // After 0 iterations (k = 0): No part of the array is asserted to be sorted.
        // After 1st Outer Loop Iteration: [3, 2, 1, 0, 4] (largest element 4 is bubbled to the end)
        // After 2nd Outer Loop Iteration: [2, 1, 0, 3, 4] (next largest element 3 is bubbled to the end)
        // After 3rd Outer Loop Iteration: [1, 0, 2, 3, 4] (next largest element 2 is bubbled to the end)
        // After 4th Outer Loop Iteration: [0, 1, 2, 3, 4] (next largest element 1 is bubbled to the end)
        // Final Sorted Array: [0, 1, 2, 3, 4] (array is now fully sorted)
        var j: int := 0;
        while j < a.Length - i - 1
            invariant 0 <= j <= a.Length - i - 1
            invariant forall k: int :: 0 <= k < j ==> a[k] <= a[k + 1]
            decreases a.Length - i - 1 - j
        {
            /* inner loop: compares adjacent elements and swaps if necessary */
            /* swap a[j] and a[j+1] if a[j] > a[j+1] so that a[0 .. i] sorted */
            /* pattern of swaps in the inner loop */
            // For example, with the array [4, 3, 2, 1, 0]:
            // 1st Inner Loop Iteration: [3, 4, 2, 1, 0] (swap 4 and 3)
            // 2nd Inner Loop Iteration: [3, 2, 4, 1, 0] (swap 4 and 2)
            // 3rd Inner Loop Iteration: [3, 2, 1, 4, 0] (swap 4 and 1)
            // 4th Inner Loop Iteration: [3, 2, 1, 0, 4] (swap 4 and 0)
            // End of 1st Outer Loop Iteration: [3, 2, 1, 0, 4] (4 is in its final position)
            // 1st Inner Loop of 2nd Outer Loop Iteration: [2, 3, 1, 0, 4] (swap 3 and 2)
            // 2nd Inner Loop of 2nd Outer Loop Iteration: [2, 1, 3, 0, 4] (swap 3 and 1)
            // 3rd Inner Loop of 2nd Outer Loop Iteration: [2, 1, 0, 3, 4] (swap 3 and 0)
            // End of 2nd Outer Loop Iteration: [2, 1, 0, 3, 4] (3 is in its final position)
            // The process continues until all elements are in their correct positions.


        }
       
    }

}
