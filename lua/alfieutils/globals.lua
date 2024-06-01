PT = function(v)
  print(vim.inspect(v))
  return v
end
_G.PT = PT

function PrintHello(name)
  print('Hey there ' .. name)
end

_G.PrintHello = PrintHello
