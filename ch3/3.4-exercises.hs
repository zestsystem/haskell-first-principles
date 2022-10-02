myArea d = pi * (r(d) * r(d))
r d = d / 2


-- Better

area d = pi * (r * r)
 where r = d / 2
