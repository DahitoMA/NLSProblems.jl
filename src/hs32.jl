# HS problem 32 in NLS format
#
#   Source:
#   W. Hock and K. Schittkowski,
#   Test examples for nonlinear programming codes,
#   Lecture Notes in Economics and Mathematical Systems 187,
#   Springer Verlag Berlin Heidelberg, 1981
#   10.1007/978-3-642-48320-2
#
# A. S. Siqueira, Curitiba/BR, 04/2018.

export hs32

"Hock-Schittkowski problem 32 in NLS format"
function hs32()

  nequ = 2
  F(x) = [x[1] + 3 * x[2] + x[3];
          2 * (x[1] - x[2])]
  x0 = [0.1; 0.7; 0.2]
  lvar = zeros(3)

  c(x) = [6 * x[2] + 4 * x[3] - x[1]^3 - 3.0;
          1.0 - x[1] - x[2] - x[3]]
  lcon, ucon = [0.0; 0.0], [Inf; 0.0]

  return ADNLSModel(F, x0, nequ, c=c, lcon=lcon, ucon=ucon,
                    lvar=lvar, name="hs32")
end