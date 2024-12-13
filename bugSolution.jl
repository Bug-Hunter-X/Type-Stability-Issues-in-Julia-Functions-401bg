```julia
function my_function_solution(x::T) where T <: Number
  if x > zero(T)
    return x^2
  else
    return -x
  end
end

x = -5.0
result = my_function_solution(x)
println(result) # Output: 5.0

x = 5
result = my_function_solution(x)
println(result) # Output: 25
```