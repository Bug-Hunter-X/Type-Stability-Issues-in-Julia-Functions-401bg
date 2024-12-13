```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

x = -5
result = my_function(x)
println(result) # Output: 5

x = 5
result = my_function(x)
println(result) # Output: 25

#However, if we have a slight modification
function my_function_modified(x::Int64)
  if x > 0
    return x^2
  else
    return -x
  end
end

x = -5.0
result = my_function_modified(x) # Error: MethodError: no method matching my_function_modified(::Float64)
```