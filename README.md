# Type Stability Bug in Julia

This repository demonstrates a common issue encountered in Julia related to type stability. The `my_function` works as expected for both positive and negative integers. However, adding a type annotation (`::Int64`) in `my_function_modified` makes the function unstable, resulting in a `MethodError` when using floating-point numbers. This highlights the importance of considering type stability in Julia to ensure optimal performance and avoid unexpected errors.

## How to Reproduce

1. Clone this repository.
2. Run `bug.jl` to see the initial function's behavior.
3. Observe the error in `bug.jl` when calling `my_function_modified` with a floating-point number.
4. View `bugSolution.jl` for a solution.

## Solution

The solution involves using parametric types to allow the function to work correctly with different numeric types, thus addressing the type stability problem.