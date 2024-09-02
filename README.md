
Bubble Sort
The function bubble sort sorts an array by iteratively swapping two adjacent elements if they are not in the right order. Starting from the left, this has the effect of “bubbling” the largest element to the rightmost position of the array. This is then repeated, but excluding the last (largest) element.
   method bubble_sort (a: array<int>)
   modifies (a)
   //ensures sorted(a)
   {   var i: int := 0;
       while (i < a.Length) {
           var j : int := 0;
           while (j < a.Length - i - 1) {
               if a[j] > a[j+1] {
                   a[j], a[j+1] := a[j+1], a[j];
}
j := j + 1; }
i := i + 1; }
}
Think about what the outer loop achieves after zero, one, two, etc. iterations of the loop body. As a comment in your Dafny code, specify what the outer loop as achieved after k ≥ 0 iterations in terms of which part of the array is sorted, and how the elements in the sorted part relate to those not in the sorted part.
Translate the description given above into a loop invariant for the outer loop. State the loop invariant as part of the Dafny code. Think about what the inner loop achieves after zero, one, two, etc. iterations of the loop body.
As a comment in your Dafny code, specify what the outer loop as achieved after k ≥ 0 iterations.
Translate this description into a loop invariant for the inner loop. Give the loop invariant as a part of the Dafny code. Uncomment the specification (the requires clause) and prove that bubble sort meets its specification, possibly byann otating the code with more invariants or assert statements.

# COMP1600 COMP6260 Bubble Sort

# 程序代做代写 CS编程辅导

# WeChat: cstutorcs

# Email: tutorcs@163.com

# CS Tutor

# Code Help

# Programming Help

# Computer Science Tutor

# QQ: 749389476
