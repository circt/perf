circuit AddNot :
  module AddNot :
    input a : UInt<8>
    input b : UInt<8>
    output o : UInt<9>

    node _GEN_0 = not(b)
    o <= add(a, _GEN_0)
