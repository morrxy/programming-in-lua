--[[

Exercise 6.1: Write a function integral that receives
a function f and returns an approximation of its integral.

]]

function integral( f, delta )
  delta = delta or 1e-4
  return function ( x1, x2 )
    local inte = 0
    for i=x1,x2,delta do
      inte = inte + i * delta
    end

    return inte
  end
end