
function makepoly (coefs)
  function poly (x)
    local value = 0
    for i,c in ipairs(coefs) do value = c + x*value  end
    return value
  end
  return poly
end

function reverse (coefs, i)
  i = i or #coefs
  if (i>0) then
    return coefs[i], reverse(coefs,i-1)
  end
end