circuit FPU :
  module FPUDecoder :
    input io_inst : UInt<32>
    output io_sigs_cmd : UInt<5>
    output io_sigs_ldst : UInt<1>
    output io_sigs_wen : UInt<1>
    output io_sigs_ren1 : UInt<1>
    output io_sigs_ren2 : UInt<1>
    output io_sigs_ren3 : UInt<1>
    output io_sigs_swap12 : UInt<1>
    output io_sigs_swap23 : UInt<1>
    output io_sigs_single : UInt<1>
    output io_sigs_fromint : UInt<1>
    output io_sigs_toint : UInt<1>
    output io_sigs_fastpipe : UInt<1>
    output io_sigs_fma : UInt<1>
    output io_sigs_div : UInt<1>
    output io_sigs_sqrt : UInt<1>
    output io_sigs_wflags : UInt<1>

    node _T_22 = and(io_inst, UInt<32>("h4")) @[Decode.scala 13:65]
    node _T_24 = eq(_T_22, UInt<32>("h4")) @[Decode.scala 13:121]
    node _T_26 = and(io_inst, UInt<32>("h8000010")) @[Decode.scala 13:65]
    node _T_28 = eq(_T_26, UInt<32>("h8000010")) @[Decode.scala 13:121]
    skip
    node _T_31 = or(_T_24, _T_28) @[Decode.scala 14:30]
    node _T_33 = and(io_inst, UInt<32>("h8")) @[Decode.scala 13:65]
    node _T_35 = eq(_T_33, UInt<32>("h8")) @[Decode.scala 13:121]
    node _T_37 = and(io_inst, UInt<32>("h10000010")) @[Decode.scala 13:65]
    node _T_39 = eq(_T_37, UInt<32>("h10000010")) @[Decode.scala 13:121]
    skip
    node _T_42 = or(_T_35, _T_39) @[Decode.scala 14:30]
    node _T_44 = and(io_inst, UInt<32>("h40")) @[Decode.scala 13:65]
    node decoder_1 = eq(_T_44, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_48 = and(io_inst, UInt<32>("h20000000")) @[Decode.scala 13:65]
    node _T_50 = eq(_T_48, UInt<32>("h20000000")) @[Decode.scala 13:121]
    skip
    node _T_53 = or(decoder_1, _T_50) @[Decode.scala 14:30]
    node _T_55 = and(io_inst, UInt<32>("h40000000")) @[Decode.scala 13:65]
    node _T_57 = eq(_T_55, UInt<32>("h40000000")) @[Decode.scala 13:121]
    skip
    node _T_60 = or(decoder_1, _T_57) @[Decode.scala 14:30]
    node _T_62 = and(io_inst, UInt<32>("h10")) @[Decode.scala 13:65]
    node _T_64 = eq(_T_62, UInt<32>("h0")) @[Decode.scala 13:121]
    skip
    node _T_67 = cat(_T_42, _T_31) @[Cat.scala 30:58]
    skip
    node _T_69 = cat(cat(_T_64, _T_60), _T_53) @[Cat.scala 30:58]
    skip
    skip
    node _T_72 = and(io_inst, UInt<32>("h80000020")) @[Decode.scala 13:65]
    node _T_74 = eq(_T_72, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_76 = and(io_inst, UInt<32>("h30")) @[Decode.scala 13:65]
    node _T_78 = eq(_T_76, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_80 = and(io_inst, UInt<32>("h10000020")) @[Decode.scala 13:65]
    node _T_82 = eq(_T_80, UInt<32>("h10000000")) @[Decode.scala 13:121]
    skip
    node _T_85 = or(_T_74, _T_78) @[Decode.scala 14:30]
    skip
    node _T_87 = and(io_inst, UInt<32>("h80000004")) @[Decode.scala 13:65]
    node _T_89 = eq(_T_87, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_91 = and(io_inst, UInt<32>("h10000004")) @[Decode.scala 13:65]
    node _T_93 = eq(_T_91, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_95 = and(io_inst, UInt<32>("h50")) @[Decode.scala 13:65]
    node decoder_5 = eq(_T_95, UInt<32>("h40")) @[Decode.scala 13:121]
    skip
    node _T_100 = or(_T_89, _T_93) @[Decode.scala 14:30]
    skip
    node _T_102 = and(io_inst, UInt<32>("h40000004")) @[Decode.scala 13:65]
    node _T_104 = eq(_T_102, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_106 = and(io_inst, UInt<32>("h20")) @[Decode.scala 13:65]
    node _T_108 = eq(_T_106, UInt<32>("h20")) @[Decode.scala 13:121]
    skip
    node _T_111 = or(_T_104, _T_108) @[Decode.scala 14:30]
    skip
    skip
    node _T_114 = and(io_inst, UInt<32>("h50000010")) @[Decode.scala 13:65]
    node _T_116 = eq(_T_114, UInt<32>("h50000010")) @[Decode.scala 13:121]
    skip
    skip
    node _T_120 = and(io_inst, UInt<32>("h30000010")) @[Decode.scala 13:65]
    skip
    skip
    node _T_125 = and(io_inst, UInt<32>("h1040")) @[Decode.scala 13:65]
    node _T_127 = eq(_T_125, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_129 = and(io_inst, UInt<32>("h2000040")) @[Decode.scala 13:65]
    node _T_131 = eq(_T_129, UInt<32>("h40")) @[Decode.scala 13:121]
    skip
    skip
    node _T_135 = and(io_inst, UInt<32>("h90000010")) @[Decode.scala 13:65]
    skip
    skip
    skip
    node _T_142 = eq(_T_135, UInt<32>("h80000010")) @[Decode.scala 13:121]
    skip
    skip
    node _T_146 = and(io_inst, UInt<32>("ha0000010")) @[Decode.scala 13:65]
    node _T_148 = eq(_T_146, UInt<32>("h20000010")) @[Decode.scala 13:121]
    node _T_150 = and(io_inst, UInt<32>("hd0000010")) @[Decode.scala 13:65]
    node _T_152 = eq(_T_150, UInt<32>("h40000010")) @[Decode.scala 13:121]
    skip
    skip
    node _T_156 = and(io_inst, UInt<32>("h70000004")) @[Decode.scala 13:65]
    node _T_158 = eq(_T_156, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_160 = and(io_inst, UInt<32>("h68000004")) @[Decode.scala 13:65]
    node _T_162 = eq(_T_160, UInt<32>("h0")) @[Decode.scala 13:121]
    skip
    node _T_165 = or(_T_158, _T_162) @[Decode.scala 14:30]
    skip
    node _T_167 = and(io_inst, UInt<32>("h58000010")) @[Decode.scala 13:65]
    skip
    skip
    skip
    skip
    skip
    node _T_177 = and(io_inst, UInt<32>("h20000004")) @[Decode.scala 13:65]
    node _T_179 = eq(_T_177, UInt<32>("h0")) @[Decode.scala 13:121]
    node _T_181 = and(io_inst, UInt<32>("h8002000")) @[Decode.scala 13:65]
    node _T_183 = eq(_T_181, UInt<32>("h8000000")) @[Decode.scala 13:121]
    node _T_185 = and(io_inst, UInt<32>("hc0000004")) @[Decode.scala 13:65]
    node _T_187 = eq(_T_185, UInt<32>("h80000000")) @[Decode.scala 13:121]
    skip
    node _T_190 = or(_T_179, decoder_5) @[Decode.scala 14:30]
    node _T_191 = or(_T_190, _T_183) @[Decode.scala 14:30]
    skip
    io_sigs_cmd <= cat(_T_69, _T_67) @[Cat.scala 30:58]
    io_sigs_ldst <= eq(_T_44, UInt<32>("h0")) @[Decode.scala 13:121]
    io_sigs_wen <= or(_T_85, _T_82) @[Decode.scala 14:30]
    io_sigs_ren1 <= or(_T_100, decoder_5) @[Decode.scala 14:30]
    io_sigs_ren2 <= or(_T_111, decoder_5) @[Decode.scala 14:30]
    io_sigs_ren3 <= eq(_T_95, UInt<32>("h40")) @[Decode.scala 13:121]
    io_sigs_swap12 <= or(decoder_1, _T_116) @[Decode.scala 14:30]
    io_sigs_swap23 <= eq(_T_120, UInt<32>("h10")) @[Decode.scala 13:121]
    io_sigs_single <= or(_T_127, _T_131) @[Decode.scala 14:30]
    io_sigs_fromint <= eq(_T_135, UInt<32>("h90000010")) @[Decode.scala 13:121]
    io_sigs_toint <= or(_T_108, _T_142) @[Decode.scala 14:30]
    io_sigs_fastpipe <= or(_T_148, _T_152) @[Decode.scala 14:30]
    io_sigs_fma <= or(_T_165, decoder_5) @[Decode.scala 14:30]
    io_sigs_div <= eq(_T_167, UInt<32>("h18000010")) @[Decode.scala 13:121]
    io_sigs_sqrt <= eq(_T_150, UInt<32>("h50000010")) @[Decode.scala 13:121]
    io_sigs_wflags <= or(_T_191, _T_187) @[Decode.scala 14:30]

  module MulAddRecFN_preMul :
    input io_op : UInt<2>
    input io_a : UInt<33>
    input io_b : UInt<33>
    input io_c : UInt<33>
    input io_roundingMode : UInt<2>
    output io_mulAddA : UInt<24>
    output io_mulAddB : UInt<24>
    output io_mulAddC : UInt<48>
    output io_toPostMul_highExpA : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNA : UInt<1>
    output io_toPostMul_highExpB : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNB : UInt<1>
    output io_toPostMul_signProd : UInt<1>
    output io_toPostMul_isZeroProd : UInt<1>
    output io_toPostMul_opSignC : UInt<1>
    output io_toPostMul_highExpC : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNC : UInt<1>
    output io_toPostMul_isCDominant : UInt<1>
    output io_toPostMul_CAlignDist_0 : UInt<1>
    output io_toPostMul_CAlignDist : UInt<7>
    output io_toPostMul_bit0AlignedNegSigC : UInt<1>
    output io_toPostMul_highAlignedNegSigC : UInt<26>
    output io_toPostMul_sExpSum : UInt<11>
    output io_toPostMul_roundingMode : UInt<2>

    node signA = bits(io_a, 32, 32) @[MulAddRecFN.scala 102:22]
    node expA = bits(io_a, 31, 23) @[MulAddRecFN.scala 103:22]
    node fractA = bits(io_a, 22, 0) @[MulAddRecFN.scala 104:22]
    node _T_52 = bits(expA, 8, 6) @[MulAddRecFN.scala 105:24]
    node isZeroA = eq(_T_52, UInt<3>("h0")) @[MulAddRecFN.scala 105:49]
    node _T_55 = not(isZeroA) @[MulAddRecFN.scala 106:20]
    skip
    node signB = bits(io_b, 32, 32) @[MulAddRecFN.scala 108:22]
    node expB = bits(io_b, 31, 23) @[MulAddRecFN.scala 109:22]
    node fractB = bits(io_b, 22, 0) @[MulAddRecFN.scala 110:22]
    node _T_56 = bits(expB, 8, 6) @[MulAddRecFN.scala 111:24]
    node isZeroB = eq(_T_56, UInt<3>("h0")) @[MulAddRecFN.scala 111:49]
    node _T_59 = not(isZeroB) @[MulAddRecFN.scala 112:20]
    skip
    node _T_60 = bits(io_c, 32, 32) @[MulAddRecFN.scala 114:23]
    node _T_61 = bits(io_op, 0, 0) @[MulAddRecFN.scala 114:52]
    node opSignC = xor(_T_60, _T_61) @[MulAddRecFN.scala 114:45]
    node expC = bits(io_c, 31, 23) @[MulAddRecFN.scala 115:22]
    node fractC = bits(io_c, 22, 0) @[MulAddRecFN.scala 116:22]
    node _T_62 = bits(expC, 8, 6) @[MulAddRecFN.scala 117:24]
    node isZeroC = eq(_T_62, UInt<3>("h0")) @[MulAddRecFN.scala 117:49]
    node _T_65 = not(isZeroC) @[MulAddRecFN.scala 118:20]
    node sigC = cat(_T_65, fractC) @[Cat.scala 30:58]
    node _T_66 = xor(signA, signB) @[MulAddRecFN.scala 122:26]
    node _T_67 = bits(io_op, 1, 1) @[MulAddRecFN.scala 122:41]
    node signProd = xor(_T_66, _T_67) @[MulAddRecFN.scala 122:34]
    node isZeroProd = or(isZeroA, isZeroB) @[MulAddRecFN.scala 123:30]
    node _T_68 = bits(expB, 8, 8) @[MulAddRecFN.scala 125:34]
    node _T_70 = not(_T_68) @[MulAddRecFN.scala 125:28]
    skip
    node _T_74 = mux(_T_70, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_75 = bits(expB, 7, 0) @[MulAddRecFN.scala 125:51]
    node _T_76 = cat(_T_74, _T_75) @[Cat.scala 30:58]
    node _GEN_0 = pad(expA, 11) @[MulAddRecFN.scala 125:14]
    node _T_77 = add(_GEN_0, _T_76) @[MulAddRecFN.scala 125:14]
    node _T_78 = tail(_T_77, 1) @[MulAddRecFN.scala 125:14]
    node _T_80 = add(_T_78, UInt<11>("h1b")) @[MulAddRecFN.scala 125:70]
    node sExpAlignedProd = tail(_T_80, 1) @[MulAddRecFN.scala 125:70]
    node doSubMags = xor(signProd, opSignC) @[MulAddRecFN.scala 130:30]
    node _GEN_1 = pad(expC, 11) @[MulAddRecFN.scala 132:42]
    node _T_81 = sub(sExpAlignedProd, _GEN_1) @[MulAddRecFN.scala 132:42]
    skip
    node sNatCAlignDist = tail(_T_81, 1) @[MulAddRecFN.scala 132:42]
    node _T_83 = bits(sNatCAlignDist, 10, 10) @[MulAddRecFN.scala 133:56]
    node CAlignDist_floor = or(isZeroProd, _T_83) @[MulAddRecFN.scala 133:39]
    node _T_84 = bits(sNatCAlignDist, 9, 0) @[MulAddRecFN.scala 135:44]
    node _T_86 = eq(_T_84, UInt<10>("h0")) @[MulAddRecFN.scala 135:62]
    skip
    skip
    skip
    node _T_91 = lt(_T_84, UInt<10>("h19")) @[MulAddRecFN.scala 139:51]
    node _T_92 = or(CAlignDist_floor, _T_91) @[MulAddRecFN.scala 138:31]
    skip
    skip
    node _T_96 = lt(_T_84, UInt<10>("h4a")) @[MulAddRecFN.scala 143:49]
    node _T_97 = bits(sNatCAlignDist, 6, 0) @[MulAddRecFN.scala 144:31]
    node _T_99 = mux(_T_96, _T_97, UInt<7>("h4a")) @[MulAddRecFN.scala 143:16]
    node CAlignDist = mux(CAlignDist_floor, UInt<7>("h0"), _T_99) @[MulAddRecFN.scala 141:12]
    skip
    node _T_100 = bits(CAlignDist, 6, 6) @[primitives.scala 56:25]
    node _T_101 = bits(CAlignDist, 5, 0) @[primitives.scala 57:26]
    node _T_103 = dshr(SInt<65>("h-10000000000000000"), _T_101) @[primitives.scala 68:52]
    node _T_104 = bits(_T_103, 63, 54) @[primitives.scala 69:26]
    node _T_105 = bits(_T_104, 7, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_110 = shr(_T_105, 4) @[Bitwise.scala 102:21]
    node _T_111 = pad(_T_110, 8) @[Bitwise.scala 102:31]
    node _T_112 = bits(_T_105, 3, 0) @[Bitwise.scala 102:46]
    node _T_113 = shl(_T_112, 4) @[Bitwise.scala 102:65]
    skip
    node _T_115 = and(_T_113, UInt<8>("hf0")) @[Bitwise.scala 102:75]
    node _T_116 = or(_T_111, _T_115) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_120 = shr(_T_116, 2) @[Bitwise.scala 102:21]
    node _GEN_2 = pad(_T_120, 8) @[Bitwise.scala 102:31]
    node _T_121 = and(_GEN_2, UInt<8>("h33")) @[Bitwise.scala 102:31]
    node _T_122 = bits(_T_116, 5, 0) @[Bitwise.scala 102:46]
    node _T_123 = shl(_T_122, 2) @[Bitwise.scala 102:65]
    skip
    node _T_125 = and(_T_123, UInt<8>("hcc")) @[Bitwise.scala 102:75]
    node _T_126 = or(_T_121, _T_125) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_130 = shr(_T_126, 1) @[Bitwise.scala 102:21]
    node _GEN_3 = pad(_T_130, 8) @[Bitwise.scala 102:31]
    node _T_131 = and(_GEN_3, UInt<8>("h55")) @[Bitwise.scala 102:31]
    node _T_132 = bits(_T_126, 6, 0) @[Bitwise.scala 102:46]
    node _T_133 = shl(_T_132, 1) @[Bitwise.scala 102:65]
    skip
    node _T_135 = and(_T_133, UInt<8>("haa")) @[Bitwise.scala 102:75]
    node _T_136 = or(_T_131, _T_135) @[Bitwise.scala 102:39]
    node _T_137 = bits(_T_104, 9, 8) @[Bitwise.scala 108:44]
    node _T_138 = bits(_T_137, 0, 0) @[Bitwise.scala 108:18]
    node _T_139 = bits(_T_137, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_143 = cat(cat(_T_136, cat(_T_138, _T_139)), UInt<14>("h3fff")) @[Cat.scala 30:58]
    skip
    node _T_146 = bits(_T_103, 13, 0) @[primitives.scala 69:26]
    node _T_147 = bits(_T_146, 7, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_152 = shr(_T_147, 4) @[Bitwise.scala 102:21]
    node _T_153 = pad(_T_152, 8) @[Bitwise.scala 102:31]
    node _T_154 = bits(_T_147, 3, 0) @[Bitwise.scala 102:46]
    node _T_155 = shl(_T_154, 4) @[Bitwise.scala 102:65]
    skip
    node _T_157 = and(_T_155, UInt<8>("hf0")) @[Bitwise.scala 102:75]
    node _T_158 = or(_T_153, _T_157) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_162 = shr(_T_158, 2) @[Bitwise.scala 102:21]
    node _GEN_4 = pad(_T_162, 8) @[Bitwise.scala 102:31]
    node _T_163 = and(_GEN_4, UInt<8>("h33")) @[Bitwise.scala 102:31]
    node _T_164 = bits(_T_158, 5, 0) @[Bitwise.scala 102:46]
    node _T_165 = shl(_T_164, 2) @[Bitwise.scala 102:65]
    skip
    node _T_167 = and(_T_165, UInt<8>("hcc")) @[Bitwise.scala 102:75]
    node _T_168 = or(_T_163, _T_167) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_172 = shr(_T_168, 1) @[Bitwise.scala 102:21]
    node _GEN_5 = pad(_T_172, 8) @[Bitwise.scala 102:31]
    node _T_173 = and(_GEN_5, UInt<8>("h55")) @[Bitwise.scala 102:31]
    node _T_174 = bits(_T_168, 6, 0) @[Bitwise.scala 102:46]
    node _T_175 = shl(_T_174, 1) @[Bitwise.scala 102:65]
    skip
    node _T_177 = and(_T_175, UInt<8>("haa")) @[Bitwise.scala 102:75]
    node _T_178 = or(_T_173, _T_177) @[Bitwise.scala 102:39]
    node _T_179 = bits(_T_146, 13, 8) @[Bitwise.scala 108:44]
    node _T_180 = bits(_T_179, 3, 0) @[Bitwise.scala 108:18]
    node _T_181 = bits(_T_180, 1, 0) @[Bitwise.scala 108:18]
    node _T_182 = bits(_T_181, 0, 0) @[Bitwise.scala 108:18]
    node _T_183 = bits(_T_181, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_185 = bits(_T_180, 3, 2) @[Bitwise.scala 108:44]
    node _T_186 = bits(_T_185, 0, 0) @[Bitwise.scala 108:18]
    node _T_187 = bits(_T_185, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_190 = bits(_T_179, 5, 4) @[Bitwise.scala 108:44]
    node _T_191 = bits(_T_190, 0, 0) @[Bitwise.scala 108:18]
    node _T_192 = bits(_T_190, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_195 = cat(_T_178, cat(cat(cat(_T_182, _T_183), cat(_T_186, _T_187)), cat(_T_191, _T_192))) @[Cat.scala 30:58]
    node CExtraMask = mux(_T_100, _T_143, pad(_T_195, 24)) @[primitives.scala 61:20]
    node _T_196 = not(sigC) @[MulAddRecFN.scala 151:34]
    node negSigC = mux(doSubMags, _T_196, sigC) @[MulAddRecFN.scala 151:22]
    skip
    node _T_200 = mux(doSubMags, UInt<50>("h3ffffffffffff"), UInt<50>("h0")) @[Bitwise.scala 71:12]
    skip
    node _T_202 = cat(cat(doSubMags, negSigC), _T_200) @[Cat.scala 30:58]
    node _T_203 = asSInt(_T_202) @[MulAddRecFN.scala 154:64]
    node _T_204 = dshr(_T_203, CAlignDist) @[MulAddRecFN.scala 154:70]
    node _T_205 = and(sigC, CExtraMask) @[MulAddRecFN.scala 156:19]
    node _T_207 = neq(_T_205, UInt<24>("h0")) @[MulAddRecFN.scala 156:33]
    node _T_208 = xor(_T_207, doSubMags) @[MulAddRecFN.scala 156:37]
    node _T_209 = asUInt(_T_204) @[Cat.scala 30:58]
    node _T_210 = cat(_T_209, _T_208) @[Cat.scala 30:58]
    node alignedNegSigC = bits(_T_210, 74, 0) @[MulAddRecFN.scala 157:10]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_mulAddA <= cat(_T_55, fractA) @[Cat.scala 30:58]
    io_mulAddB <= cat(_T_59, fractB) @[Cat.scala 30:58]
    io_mulAddC <= bits(alignedNegSigC, 48, 1) @[MulAddRecFN.scala 161:33]
    io_toPostMul_highExpA <= bits(expA, 8, 6) @[MulAddRecFN.scala 163:44]
    io_toPostMul_isNaN_isQuietNaNA <= bits(fractA, 22, 22) @[MulAddRecFN.scala 164:46]
    io_toPostMul_highExpB <= bits(expB, 8, 6) @[MulAddRecFN.scala 165:44]
    io_toPostMul_isNaN_isQuietNaNB <= bits(fractB, 22, 22) @[MulAddRecFN.scala 166:46]
    io_toPostMul_signProd <= xor(_T_66, _T_67) @[MulAddRecFN.scala 122:34]
    io_toPostMul_isZeroProd <= or(isZeroA, isZeroB) @[MulAddRecFN.scala 123:30]
    io_toPostMul_opSignC <= xor(_T_60, _T_61) @[MulAddRecFN.scala 114:45]
    io_toPostMul_highExpC <= bits(expC, 8, 6) @[MulAddRecFN.scala 170:44]
    io_toPostMul_isNaN_isQuietNaNC <= bits(fractC, 22, 22) @[MulAddRecFN.scala 171:46]
    io_toPostMul_isCDominant <= and(_T_65, _T_92) @[MulAddRecFN.scala 137:19]
    io_toPostMul_CAlignDist_0 <= or(CAlignDist_floor, _T_86) @[MulAddRecFN.scala 135:26]
    io_toPostMul_CAlignDist <= mux(CAlignDist_floor, UInt<7>("h0"), _T_99) @[MulAddRecFN.scala 141:12]
    io_toPostMul_bit0AlignedNegSigC <= bits(alignedNegSigC, 0, 0) @[MulAddRecFN.scala 175:54]
    io_toPostMul_highAlignedNegSigC <= bits(alignedNegSigC, 74, 49) @[MulAddRecFN.scala 177:23]
    io_toPostMul_sExpSum <= mux(CAlignDist_floor, pad(expC, 11), sExpAlignedProd) @[MulAddRecFN.scala 148:22]
    io_toPostMul_roundingMode <= io_roundingMode @[MulAddRecFN.scala 179:37]

  module MulAddRecFN_postMul :
    input io_fromPreMul_highExpA : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNA : UInt<1>
    input io_fromPreMul_highExpB : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNB : UInt<1>
    input io_fromPreMul_signProd : UInt<1>
    input io_fromPreMul_isZeroProd : UInt<1>
    input io_fromPreMul_opSignC : UInt<1>
    input io_fromPreMul_highExpC : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNC : UInt<1>
    input io_fromPreMul_isCDominant : UInt<1>
    input io_fromPreMul_CAlignDist_0 : UInt<1>
    input io_fromPreMul_CAlignDist : UInt<7>
    input io_fromPreMul_bit0AlignedNegSigC : UInt<1>
    input io_fromPreMul_highAlignedNegSigC : UInt<26>
    input io_fromPreMul_sExpSum : UInt<11>
    input io_fromPreMul_roundingMode : UInt<2>
    input io_mulAddResult : UInt<49>
    output io_out : UInt<33>
    output io_exceptionFlags : UInt<5>

    node isZeroA = eq(io_fromPreMul_highExpA, UInt<3>("h0")) @[MulAddRecFN.scala 207:46]
    node _T_43 = bits(io_fromPreMul_highExpA, 2, 1) @[MulAddRecFN.scala 208:45]
    node isSpecialA = eq(_T_43, UInt<2>("h3")) @[MulAddRecFN.scala 208:52]
    node _T_45 = bits(io_fromPreMul_highExpA, 0, 0) @[MulAddRecFN.scala 209:56]
    node _T_47 = not(_T_45) @[MulAddRecFN.scala 209:32]
    node isInfA = and(isSpecialA, _T_47) @[MulAddRecFN.scala 209:29]
    skip
    node isNaNA = and(isSpecialA, _T_45) @[MulAddRecFN.scala 210:29]
    node _T_50 = not(io_fromPreMul_isNaN_isQuietNaNA) @[MulAddRecFN.scala 211:31]
    node isSigNaNA = and(isNaNA, _T_50) @[MulAddRecFN.scala 211:28]
    node isZeroB = eq(io_fromPreMul_highExpB, UInt<3>("h0")) @[MulAddRecFN.scala 213:46]
    node _T_52 = bits(io_fromPreMul_highExpB, 2, 1) @[MulAddRecFN.scala 214:45]
    node isSpecialB = eq(_T_52, UInt<2>("h3")) @[MulAddRecFN.scala 214:52]
    node _T_54 = bits(io_fromPreMul_highExpB, 0, 0) @[MulAddRecFN.scala 215:56]
    node _T_56 = not(_T_54) @[MulAddRecFN.scala 215:32]
    node isInfB = and(isSpecialB, _T_56) @[MulAddRecFN.scala 215:29]
    skip
    node isNaNB = and(isSpecialB, _T_54) @[MulAddRecFN.scala 216:29]
    node _T_59 = not(io_fromPreMul_isNaN_isQuietNaNB) @[MulAddRecFN.scala 217:31]
    node isSigNaNB = and(isNaNB, _T_59) @[MulAddRecFN.scala 217:28]
    node isZeroC = eq(io_fromPreMul_highExpC, UInt<3>("h0")) @[MulAddRecFN.scala 219:46]
    node _T_61 = bits(io_fromPreMul_highExpC, 2, 1) @[MulAddRecFN.scala 220:45]
    node isSpecialC = eq(_T_61, UInt<2>("h3")) @[MulAddRecFN.scala 220:52]
    node _T_63 = bits(io_fromPreMul_highExpC, 0, 0) @[MulAddRecFN.scala 221:56]
    node _T_65 = not(_T_63) @[MulAddRecFN.scala 221:32]
    node isInfC = and(isSpecialC, _T_65) @[MulAddRecFN.scala 221:29]
    skip
    node isNaNC = and(isSpecialC, _T_63) @[MulAddRecFN.scala 222:29]
    node _T_68 = not(io_fromPreMul_isNaN_isQuietNaNC) @[MulAddRecFN.scala 223:31]
    node isSigNaNC = and(isNaNC, _T_68) @[MulAddRecFN.scala 223:28]
    node roundingMode_nearest_even = eq(io_fromPreMul_roundingMode, UInt<2>("h0")) @[MulAddRecFN.scala 226:37]
    skip
    node roundingMode_min = eq(io_fromPreMul_roundingMode, UInt<2>("h2")) @[MulAddRecFN.scala 228:59]
    node roundingMode_max = eq(io_fromPreMul_roundingMode, UInt<2>("h3")) @[MulAddRecFN.scala 229:59]
    skip
    node doSubMags = xor(io_fromPreMul_signProd, io_fromPreMul_opSignC) @[MulAddRecFN.scala 232:44]
    node _T_71 = bits(io_mulAddResult, 48, 48) @[MulAddRecFN.scala 237:32]
    node _T_73 = add(io_fromPreMul_highAlignedNegSigC, UInt<26>("h1")) @[MulAddRecFN.scala 238:50]
    node _T_74 = tail(_T_73, 1) @[MulAddRecFN.scala 238:50]
    node _T_75 = mux(_T_71, _T_74, io_fromPreMul_highAlignedNegSigC) @[MulAddRecFN.scala 237:16]
    node _T_76 = bits(io_mulAddResult, 47, 0) @[MulAddRecFN.scala 241:28]
    skip
    node sigSum = cat(cat(_T_75, _T_76), io_fromPreMul_bit0AlignedNegSigC) @[Cat.scala 30:58]
    node _T_79 = bits(sigSum, 50, 1) @[MulAddRecFN.scala 248:38]
    skip
    skip
    node _T_82 = shl(_T_79, 1) @[MulAddRecFN.scala 191:41]
    node _GEN_0 = pad(_T_79, 51) @[MulAddRecFN.scala 191:32]
    node _T_83 = xor(_GEN_0, _T_82) @[MulAddRecFN.scala 191:32]
    node _T_85 = bits(_T_83, 49, 0) @[primitives.scala 79:35]
    node _T_86 = bits(_T_85, 49, 32) @[CircuitMath.scala 35:17]
    node _T_87 = bits(_T_85, 31, 0) @[CircuitMath.scala 36:17]
    node _T_89 = neq(_T_86, UInt<18>("h0")) @[CircuitMath.scala 37:22]
    node _T_90 = bits(_T_86, 17, 16) @[CircuitMath.scala 35:17]
    node _T_91 = bits(_T_86, 15, 0) @[CircuitMath.scala 36:17]
    node _T_93 = neq(_T_90, UInt<2>("h0")) @[CircuitMath.scala 37:22]
    node _T_94 = bits(_T_90, 1, 1) @[CircuitMath.scala 30:8]
    node _T_95 = bits(_T_91, 15, 8) @[CircuitMath.scala 35:17]
    node _T_96 = bits(_T_91, 7, 0) @[CircuitMath.scala 36:17]
    node _T_98 = neq(_T_95, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_99 = bits(_T_95, 7, 4) @[CircuitMath.scala 35:17]
    node _T_100 = bits(_T_95, 3, 0) @[CircuitMath.scala 36:17]
    node _T_102 = neq(_T_99, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_103 = bits(_T_99, 3, 3) @[CircuitMath.scala 32:12]
    node _T_105 = bits(_T_99, 2, 2) @[CircuitMath.scala 32:12]
    node _T_107 = bits(_T_99, 1, 1) @[CircuitMath.scala 30:8]
    node _T_108 = mux(_T_105, UInt<2>("h2"), pad(_T_107, 2)) @[CircuitMath.scala 32:10]
    node _T_109 = mux(_T_103, UInt<2>("h3"), _T_108) @[CircuitMath.scala 32:10]
    node _T_110 = bits(_T_100, 3, 3) @[CircuitMath.scala 32:12]
    node _T_112 = bits(_T_100, 2, 2) @[CircuitMath.scala 32:12]
    node _T_114 = bits(_T_100, 1, 1) @[CircuitMath.scala 30:8]
    node _T_115 = mux(_T_112, UInt<2>("h2"), pad(_T_114, 2)) @[CircuitMath.scala 32:10]
    node _T_116 = mux(_T_110, UInt<2>("h3"), _T_115) @[CircuitMath.scala 32:10]
    node _T_117 = mux(_T_102, _T_109, _T_116) @[CircuitMath.scala 38:21]
    node _T_118 = cat(_T_102, _T_117) @[Cat.scala 30:58]
    node _T_119 = bits(_T_96, 7, 4) @[CircuitMath.scala 35:17]
    node _T_120 = bits(_T_96, 3, 0) @[CircuitMath.scala 36:17]
    node _T_122 = neq(_T_119, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_123 = bits(_T_119, 3, 3) @[CircuitMath.scala 32:12]
    node _T_125 = bits(_T_119, 2, 2) @[CircuitMath.scala 32:12]
    node _T_127 = bits(_T_119, 1, 1) @[CircuitMath.scala 30:8]
    node _T_128 = mux(_T_125, UInt<2>("h2"), pad(_T_127, 2)) @[CircuitMath.scala 32:10]
    node _T_129 = mux(_T_123, UInt<2>("h3"), _T_128) @[CircuitMath.scala 32:10]
    node _T_130 = bits(_T_120, 3, 3) @[CircuitMath.scala 32:12]
    node _T_132 = bits(_T_120, 2, 2) @[CircuitMath.scala 32:12]
    node _T_134 = bits(_T_120, 1, 1) @[CircuitMath.scala 30:8]
    node _T_135 = mux(_T_132, UInt<2>("h2"), pad(_T_134, 2)) @[CircuitMath.scala 32:10]
    node _T_136 = mux(_T_130, UInt<2>("h3"), _T_135) @[CircuitMath.scala 32:10]
    node _T_137 = mux(_T_122, _T_129, _T_136) @[CircuitMath.scala 38:21]
    node _T_138 = cat(_T_122, _T_137) @[Cat.scala 30:58]
    node _T_139 = mux(_T_98, _T_118, _T_138) @[CircuitMath.scala 38:21]
    node _T_140 = cat(_T_98, _T_139) @[Cat.scala 30:58]
    node _T_141 = mux(_T_93, pad(_T_94, 4), _T_140) @[CircuitMath.scala 38:21]
    node _T_142 = cat(_T_93, _T_141) @[Cat.scala 30:58]
    node _T_143 = bits(_T_87, 31, 16) @[CircuitMath.scala 35:17]
    node _T_144 = bits(_T_87, 15, 0) @[CircuitMath.scala 36:17]
    node _T_146 = neq(_T_143, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_147 = bits(_T_143, 15, 8) @[CircuitMath.scala 35:17]
    node _T_148 = bits(_T_143, 7, 0) @[CircuitMath.scala 36:17]
    node _T_150 = neq(_T_147, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_151 = bits(_T_147, 7, 4) @[CircuitMath.scala 35:17]
    node _T_152 = bits(_T_147, 3, 0) @[CircuitMath.scala 36:17]
    node _T_154 = neq(_T_151, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_155 = bits(_T_151, 3, 3) @[CircuitMath.scala 32:12]
    node _T_157 = bits(_T_151, 2, 2) @[CircuitMath.scala 32:12]
    node _T_159 = bits(_T_151, 1, 1) @[CircuitMath.scala 30:8]
    node _T_160 = mux(_T_157, UInt<2>("h2"), pad(_T_159, 2)) @[CircuitMath.scala 32:10]
    node _T_161 = mux(_T_155, UInt<2>("h3"), _T_160) @[CircuitMath.scala 32:10]
    node _T_162 = bits(_T_152, 3, 3) @[CircuitMath.scala 32:12]
    node _T_164 = bits(_T_152, 2, 2) @[CircuitMath.scala 32:12]
    node _T_166 = bits(_T_152, 1, 1) @[CircuitMath.scala 30:8]
    node _T_167 = mux(_T_164, UInt<2>("h2"), pad(_T_166, 2)) @[CircuitMath.scala 32:10]
    node _T_168 = mux(_T_162, UInt<2>("h3"), _T_167) @[CircuitMath.scala 32:10]
    node _T_169 = mux(_T_154, _T_161, _T_168) @[CircuitMath.scala 38:21]
    node _T_170 = cat(_T_154, _T_169) @[Cat.scala 30:58]
    node _T_171 = bits(_T_148, 7, 4) @[CircuitMath.scala 35:17]
    node _T_172 = bits(_T_148, 3, 0) @[CircuitMath.scala 36:17]
    node _T_174 = neq(_T_171, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_175 = bits(_T_171, 3, 3) @[CircuitMath.scala 32:12]
    node _T_177 = bits(_T_171, 2, 2) @[CircuitMath.scala 32:12]
    node _T_179 = bits(_T_171, 1, 1) @[CircuitMath.scala 30:8]
    node _T_180 = mux(_T_177, UInt<2>("h2"), pad(_T_179, 2)) @[CircuitMath.scala 32:10]
    node _T_181 = mux(_T_175, UInt<2>("h3"), _T_180) @[CircuitMath.scala 32:10]
    node _T_182 = bits(_T_172, 3, 3) @[CircuitMath.scala 32:12]
    node _T_184 = bits(_T_172, 2, 2) @[CircuitMath.scala 32:12]
    node _T_186 = bits(_T_172, 1, 1) @[CircuitMath.scala 30:8]
    node _T_187 = mux(_T_184, UInt<2>("h2"), pad(_T_186, 2)) @[CircuitMath.scala 32:10]
    node _T_188 = mux(_T_182, UInt<2>("h3"), _T_187) @[CircuitMath.scala 32:10]
    node _T_189 = mux(_T_174, _T_181, _T_188) @[CircuitMath.scala 38:21]
    node _T_190 = cat(_T_174, _T_189) @[Cat.scala 30:58]
    node _T_191 = mux(_T_150, _T_170, _T_190) @[CircuitMath.scala 38:21]
    node _T_192 = cat(_T_150, _T_191) @[Cat.scala 30:58]
    node _T_193 = bits(_T_144, 15, 8) @[CircuitMath.scala 35:17]
    node _T_194 = bits(_T_144, 7, 0) @[CircuitMath.scala 36:17]
    node _T_196 = neq(_T_193, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_197 = bits(_T_193, 7, 4) @[CircuitMath.scala 35:17]
    node _T_198 = bits(_T_193, 3, 0) @[CircuitMath.scala 36:17]
    node _T_200 = neq(_T_197, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_201 = bits(_T_197, 3, 3) @[CircuitMath.scala 32:12]
    node _T_203 = bits(_T_197, 2, 2) @[CircuitMath.scala 32:12]
    node _T_205 = bits(_T_197, 1, 1) @[CircuitMath.scala 30:8]
    node _T_206 = mux(_T_203, UInt<2>("h2"), pad(_T_205, 2)) @[CircuitMath.scala 32:10]
    node _T_207 = mux(_T_201, UInt<2>("h3"), _T_206) @[CircuitMath.scala 32:10]
    node _T_208 = bits(_T_198, 3, 3) @[CircuitMath.scala 32:12]
    node _T_210 = bits(_T_198, 2, 2) @[CircuitMath.scala 32:12]
    node _T_212 = bits(_T_198, 1, 1) @[CircuitMath.scala 30:8]
    node _T_213 = mux(_T_210, UInt<2>("h2"), pad(_T_212, 2)) @[CircuitMath.scala 32:10]
    node _T_214 = mux(_T_208, UInt<2>("h3"), _T_213) @[CircuitMath.scala 32:10]
    node _T_215 = mux(_T_200, _T_207, _T_214) @[CircuitMath.scala 38:21]
    node _T_216 = cat(_T_200, _T_215) @[Cat.scala 30:58]
    node _T_217 = bits(_T_194, 7, 4) @[CircuitMath.scala 35:17]
    node _T_218 = bits(_T_194, 3, 0) @[CircuitMath.scala 36:17]
    node _T_220 = neq(_T_217, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_221 = bits(_T_217, 3, 3) @[CircuitMath.scala 32:12]
    node _T_223 = bits(_T_217, 2, 2) @[CircuitMath.scala 32:12]
    node _T_225 = bits(_T_217, 1, 1) @[CircuitMath.scala 30:8]
    node _T_226 = mux(_T_223, UInt<2>("h2"), pad(_T_225, 2)) @[CircuitMath.scala 32:10]
    node _T_227 = mux(_T_221, UInt<2>("h3"), _T_226) @[CircuitMath.scala 32:10]
    node _T_228 = bits(_T_218, 3, 3) @[CircuitMath.scala 32:12]
    node _T_230 = bits(_T_218, 2, 2) @[CircuitMath.scala 32:12]
    node _T_232 = bits(_T_218, 1, 1) @[CircuitMath.scala 30:8]
    node _T_233 = mux(_T_230, UInt<2>("h2"), pad(_T_232, 2)) @[CircuitMath.scala 32:10]
    node _T_234 = mux(_T_228, UInt<2>("h3"), _T_233) @[CircuitMath.scala 32:10]
    node _T_235 = mux(_T_220, _T_227, _T_234) @[CircuitMath.scala 38:21]
    node _T_236 = cat(_T_220, _T_235) @[Cat.scala 30:58]
    node _T_237 = mux(_T_196, _T_216, _T_236) @[CircuitMath.scala 38:21]
    node _T_238 = cat(_T_196, _T_237) @[Cat.scala 30:58]
    node _T_239 = mux(_T_146, _T_192, _T_238) @[CircuitMath.scala 38:21]
    node _T_240 = cat(_T_146, _T_239) @[Cat.scala 30:58]
    node _T_241 = mux(_T_89, _T_142, _T_240) @[CircuitMath.scala 38:21]
    node _T_242 = cat(_T_89, _T_241) @[Cat.scala 30:58]
    node _GEN_1 = pad(_T_242, 7) @[primitives.scala 79:25]
    node _T_243 = sub(UInt<7>("h49"), _GEN_1) @[primitives.scala 79:25]
    skip
    node estNormNeg_dist = tail(_T_243, 1) @[primitives.scala 79:25]
    node _T_245 = bits(sigSum, 33, 18) @[MulAddRecFN.scala 252:19]
    node _T_247 = neq(_T_245, UInt<16>("h0")) @[MulAddRecFN.scala 254:15]
    node _T_248 = bits(sigSum, 17, 0) @[MulAddRecFN.scala 255:19]
    node _T_250 = neq(_T_248, UInt<18>("h0")) @[MulAddRecFN.scala 255:57]
    node firstReduceSigSum = cat(_T_247, _T_250) @[Cat.scala 30:58]
    node complSigSum = not(sigSum) @[MulAddRecFN.scala 257:23]
    node _T_251 = bits(complSigSum, 33, 18) @[MulAddRecFN.scala 259:24]
    node _T_253 = neq(_T_251, UInt<16>("h0")) @[MulAddRecFN.scala 261:15]
    node _T_254 = bits(complSigSum, 17, 0) @[MulAddRecFN.scala 262:24]
    node _T_256 = neq(_T_254, UInt<18>("h0")) @[MulAddRecFN.scala 262:62]
    node firstReduceComplSigSum = cat(_T_253, _T_256) @[Cat.scala 30:58]
    node _T_257 = or(io_fromPreMul_CAlignDist_0, doSubMags) @[MulAddRecFN.scala 266:40]
    node _T_259 = sub(io_fromPreMul_CAlignDist, UInt<7>("h1")) @[MulAddRecFN.scala 268:39]
    skip
    node _T_261 = tail(_T_259, 1) @[MulAddRecFN.scala 268:39]
    node _T_262 = bits(_T_261, 4, 0) @[MulAddRecFN.scala 268:49]
    node CDom_estNormDist = mux(_T_257, io_fromPreMul_CAlignDist, pad(_T_262, 7)) @[MulAddRecFN.scala 266:12]
    node _T_264 = not(doSubMags) @[MulAddRecFN.scala 271:13]
    node _T_265 = bits(CDom_estNormDist, 4, 4) @[MulAddRecFN.scala 271:46]
    node _T_267 = not(_T_265) @[MulAddRecFN.scala 271:28]
    node _T_268 = and(_T_264, _T_267) @[MulAddRecFN.scala 271:25]
    node _T_269 = bits(sigSum, 74, 34) @[MulAddRecFN.scala 272:23]
    node _T_271 = neq(firstReduceSigSum, UInt<2>("h0")) @[MulAddRecFN.scala 273:35]
    node _T_272 = cat(_T_269, _T_271) @[Cat.scala 30:58]
    node _T_274 = mux(_T_268, _T_272, UInt<42>("h0")) @[MulAddRecFN.scala 271:12]
    skip
    skip
    node _T_278 = and(_T_264, _T_265) @[MulAddRecFN.scala 277:25]
    node _T_279 = bits(sigSum, 58, 18) @[MulAddRecFN.scala 278:23]
    node _T_280 = bits(firstReduceSigSum, 0, 0) @[MulAddRecFN.scala 282:34]
    node _T_281 = cat(_T_279, _T_280) @[Cat.scala 30:58]
    node _T_283 = mux(_T_278, _T_281, UInt<42>("h0")) @[MulAddRecFN.scala 277:12]
    node _T_284 = or(_T_274, _T_283) @[MulAddRecFN.scala 276:11]
    skip
    skip
    node _T_288 = and(doSubMags, _T_267) @[MulAddRecFN.scala 286:23]
    node _T_289 = bits(complSigSum, 74, 34) @[MulAddRecFN.scala 287:28]
    node _T_291 = neq(firstReduceComplSigSum, UInt<2>("h0")) @[MulAddRecFN.scala 288:40]
    node _T_292 = cat(_T_289, _T_291) @[Cat.scala 30:58]
    node _T_294 = mux(_T_288, _T_292, UInt<42>("h0")) @[MulAddRecFN.scala 286:12]
    node _T_295 = or(_T_284, _T_294) @[MulAddRecFN.scala 285:11]
    skip
    node _T_297 = and(doSubMags, _T_265) @[MulAddRecFN.scala 292:23]
    node _T_298 = bits(complSigSum, 58, 18) @[MulAddRecFN.scala 293:28]
    node _T_299 = bits(firstReduceComplSigSum, 0, 0) @[MulAddRecFN.scala 297:39]
    node _T_300 = cat(_T_298, _T_299) @[Cat.scala 30:58]
    node _T_302 = mux(_T_297, _T_300, UInt<42>("h0")) @[MulAddRecFN.scala 292:12]
    node CDom_firstNormAbsSigSum = or(_T_295, _T_302) @[MulAddRecFN.scala 291:11]
    node _T_303 = bits(sigSum, 50, 18) @[MulAddRecFN.scala 308:23]
    skip
    node _T_306 = not(_T_299) @[MulAddRecFN.scala 310:21]
    skip
    node _T_308 = mux(doSubMags, _T_306, _T_280) @[MulAddRecFN.scala 309:20]
    node _T_309 = cat(_T_303, _T_308) @[Cat.scala 30:58]
    node _T_310 = bits(sigSum, 42, 1) @[MulAddRecFN.scala 314:24]
    node _T_311 = bits(estNormNeg_dist, 5, 5) @[MulAddRecFN.scala 338:28]
    node _T_312 = bits(estNormNeg_dist, 4, 4) @[MulAddRecFN.scala 339:33]
    node _T_313 = bits(sigSum, 26, 1) @[MulAddRecFN.scala 340:28]
    skip
    node _T_317 = mux(doSubMags, UInt<16>("hffff"), UInt<16>("h0")) @[Bitwise.scala 71:12]
    node _T_318 = cat(_T_313, _T_317) @[Cat.scala 30:58]
    node _T_319 = mux(_T_312, _T_318, _T_310) @[MulAddRecFN.scala 339:17]
    skip
    node _T_321 = bits(sigSum, 10, 1) @[MulAddRecFN.scala 347:28]
    skip
    node _T_325 = mux(doSubMags, UInt<32>("hffffffff"), UInt<32>("h0")) @[Bitwise.scala 71:12]
    node _T_326 = cat(_T_321, _T_325) @[Cat.scala 30:58]
    node _T_327 = mux(_T_312, pad(_T_309, 42), _T_326) @[MulAddRecFN.scala 345:17]
    node notCDom_pos_firstNormAbsSigSum = mux(_T_311, _T_319, _T_327) @[MulAddRecFN.scala 338:12]
    node _T_328 = bits(complSigSum, 49, 18) @[MulAddRecFN.scala 360:28]
    skip
    node _T_330 = cat(_T_328, _T_299) @[Cat.scala 30:58]
    node _T_331 = bits(complSigSum, 42, 1) @[MulAddRecFN.scala 363:29]
    skip
    skip
    node _T_334 = bits(complSigSum, 27, 1) @[MulAddRecFN.scala 381:29]
    node _T_335 = shl(_T_334, 16) @[MulAddRecFN.scala 381:64]
    node _T_336 = mux(_T_312, _T_335, pad(_T_331, 43)) @[MulAddRecFN.scala 380:17]
    skip
    node _T_338 = bits(complSigSum, 11, 1) @[MulAddRecFN.scala 387:29]
    node _T_339 = shl(_T_338, 32) @[MulAddRecFN.scala 387:64]
    node _T_340 = mux(_T_312, pad(_T_330, 43), _T_339) @[MulAddRecFN.scala 385:17]
    node notCDom_neg_cFirstNormAbsSigSum = mux(_T_311, _T_336, _T_340) @[MulAddRecFN.scala 379:12]
    node notCDom_signSigSum = bits(sigSum, 51, 51) @[MulAddRecFN.scala 392:36]
    node _T_342 = not(isZeroC) @[MulAddRecFN.scala 395:26]
    node _T_343 = and(doSubMags, _T_342) @[MulAddRecFN.scala 395:23]
    node doNegSignSum = mux(io_fromPreMul_isCDominant, _T_343, notCDom_signSigSum) @[MulAddRecFN.scala 394:12]
    skip
    node estNormDist = mux(io_fromPreMul_isCDominant, CDom_estNormDist, estNormNeg_dist) @[MulAddRecFN.scala 399:12]
    node _T_345 = mux(io_fromPreMul_isCDominant, pad(CDom_firstNormAbsSigSum, 43), notCDom_neg_cFirstNormAbsSigSum) @[MulAddRecFN.scala 408:16]
    node _T_346 = mux(io_fromPreMul_isCDominant, CDom_firstNormAbsSigSum, notCDom_pos_firstNormAbsSigSum) @[MulAddRecFN.scala 412:16]
    node cFirstNormAbsSigSum = mux(notCDom_signSigSum, _T_345, pad(_T_346, 43)) @[MulAddRecFN.scala 407:12]
    node _T_348 = not(io_fromPreMul_isCDominant) @[MulAddRecFN.scala 418:9]
    node _T_350 = not(notCDom_signSigSum) @[MulAddRecFN.scala 418:40]
    node _T_351 = and(_T_348, _T_350) @[MulAddRecFN.scala 418:37]
    node doIncrSig = and(_T_351, doSubMags) @[MulAddRecFN.scala 418:61]
    node estNormDist_5 = bits(estNormDist, 3, 0) @[MulAddRecFN.scala 419:36]
    node normTo2ShiftDist = not(estNormDist_5) @[MulAddRecFN.scala 420:28]
    node _T_353 = dshr(SInt<17>("h-10000"), normTo2ShiftDist) @[primitives.scala 68:52]
    node _T_354 = bits(_T_353, 15, 1) @[primitives.scala 69:26]
    node _T_355 = bits(_T_354, 7, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_360 = shr(_T_355, 4) @[Bitwise.scala 102:21]
    node _T_361 = pad(_T_360, 8) @[Bitwise.scala 102:31]
    node _T_362 = bits(_T_355, 3, 0) @[Bitwise.scala 102:46]
    node _T_363 = shl(_T_362, 4) @[Bitwise.scala 102:65]
    skip
    node _T_365 = and(_T_363, UInt<8>("hf0")) @[Bitwise.scala 102:75]
    node _T_366 = or(_T_361, _T_365) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_370 = shr(_T_366, 2) @[Bitwise.scala 102:21]
    node _GEN_2 = pad(_T_370, 8) @[Bitwise.scala 102:31]
    node _T_371 = and(_GEN_2, UInt<8>("h33")) @[Bitwise.scala 102:31]
    node _T_372 = bits(_T_366, 5, 0) @[Bitwise.scala 102:46]
    node _T_373 = shl(_T_372, 2) @[Bitwise.scala 102:65]
    skip
    node _T_375 = and(_T_373, UInt<8>("hcc")) @[Bitwise.scala 102:75]
    node _T_376 = or(_T_371, _T_375) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_380 = shr(_T_376, 1) @[Bitwise.scala 102:21]
    node _GEN_3 = pad(_T_380, 8) @[Bitwise.scala 102:31]
    node _T_381 = and(_GEN_3, UInt<8>("h55")) @[Bitwise.scala 102:31]
    node _T_382 = bits(_T_376, 6, 0) @[Bitwise.scala 102:46]
    node _T_383 = shl(_T_382, 1) @[Bitwise.scala 102:65]
    skip
    node _T_385 = and(_T_383, UInt<8>("haa")) @[Bitwise.scala 102:75]
    node _T_386 = or(_T_381, _T_385) @[Bitwise.scala 102:39]
    node _T_387 = bits(_T_354, 14, 8) @[Bitwise.scala 108:44]
    node _T_388 = bits(_T_387, 3, 0) @[Bitwise.scala 108:18]
    node _T_389 = bits(_T_388, 1, 0) @[Bitwise.scala 108:18]
    node _T_390 = bits(_T_389, 0, 0) @[Bitwise.scala 108:18]
    node _T_391 = bits(_T_389, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_393 = bits(_T_388, 3, 2) @[Bitwise.scala 108:44]
    node _T_394 = bits(_T_393, 0, 0) @[Bitwise.scala 108:18]
    node _T_395 = bits(_T_393, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_398 = bits(_T_387, 6, 4) @[Bitwise.scala 108:44]
    node _T_399 = bits(_T_398, 1, 0) @[Bitwise.scala 108:18]
    node _T_400 = bits(_T_399, 0, 0) @[Bitwise.scala 108:18]
    node _T_401 = bits(_T_399, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_403 = bits(_T_398, 2, 2) @[Bitwise.scala 108:44]
    skip
    skip
    skip
    node absSigSumExtraMask = cat(cat(_T_386, cat(cat(cat(_T_390, _T_391), cat(_T_394, _T_395)), cat(cat(_T_400, _T_401), _T_403))), UInt<1>("h1")) @[Cat.scala 30:58]
    node _T_408 = bits(cFirstNormAbsSigSum, 42, 1) @[MulAddRecFN.scala 424:32]
    node _T_409 = dshr(_T_408, normTo2ShiftDist) @[MulAddRecFN.scala 424:65]
    node _T_410 = bits(cFirstNormAbsSigSum, 15, 0) @[MulAddRecFN.scala 427:39]
    node _T_411 = not(_T_410) @[MulAddRecFN.scala 427:19]
    node _T_412 = and(_T_411, absSigSumExtraMask) @[MulAddRecFN.scala 427:62]
    node _T_414 = eq(_T_412, UInt<16>("h0")) @[MulAddRecFN.scala 428:43]
    skip
    node _T_416 = and(_T_410, absSigSumExtraMask) @[MulAddRecFN.scala 430:61]
    node _T_418 = neq(_T_416, UInt<16>("h0")) @[MulAddRecFN.scala 431:43]
    node _T_419 = mux(doIncrSig, _T_414, _T_418) @[MulAddRecFN.scala 426:16]
    node _T_420 = cat(_T_409, _T_419) @[Cat.scala 30:58]
    node sigX3 = bits(_T_420, 27, 0) @[MulAddRecFN.scala 434:10]
    node _T_421 = bits(sigX3, 27, 26) @[MulAddRecFN.scala 436:29]
    node sigX3Shift1 = eq(_T_421, UInt<2>("h0")) @[MulAddRecFN.scala 436:58]
    node _GEN_4 = pad(estNormDist, 11) @[MulAddRecFN.scala 437:40]
    node _T_423 = sub(io_fromPreMul_sExpSum, _GEN_4) @[MulAddRecFN.scala 437:40]
    skip
    node sExpX3 = tail(_T_423, 1) @[MulAddRecFN.scala 437:40]
    node _T_425 = bits(sigX3, 27, 25) @[MulAddRecFN.scala 439:25]
    node isZeroY = eq(_T_425, UInt<3>("h0")) @[MulAddRecFN.scala 439:54]
    node _T_427 = xor(io_fromPreMul_signProd, doNegSignSum) @[MulAddRecFN.scala 444:36]
    node signY = mux(isZeroY, roundingMode_min, _T_427) @[MulAddRecFN.scala 442:12]
    node sExpX3_13 = bits(sExpX3, 9, 0) @[MulAddRecFN.scala 446:27]
    node _T_428 = bits(sExpX3, 10, 10) @[MulAddRecFN.scala 448:34]
    skip
    node _T_432 = mux(_T_428, UInt<27>("h7ffffff"), UInt<27>("h0")) @[Bitwise.scala 71:12]
    node _T_433 = not(sExpX3_13) @[primitives.scala 50:21]
    node _T_434 = bits(_T_433, 9, 9) @[primitives.scala 56:25]
    node _T_435 = bits(_T_433, 8, 0) @[primitives.scala 57:26]
    node _T_436 = bits(_T_435, 8, 8) @[primitives.scala 56:25]
    node _T_437 = bits(_T_435, 7, 0) @[primitives.scala 57:26]
    node _T_438 = bits(_T_437, 7, 7) @[primitives.scala 56:25]
    node _T_439 = bits(_T_437, 6, 0) @[primitives.scala 57:26]
    node _T_440 = bits(_T_439, 6, 6) @[primitives.scala 56:25]
    node _T_441 = bits(_T_439, 5, 0) @[primitives.scala 57:26]
    node _T_444 = dshr(SInt<65>("h-10000000000000000"), _T_441) @[primitives.scala 68:52]
    node _T_445 = bits(_T_444, 63, 43) @[primitives.scala 69:26]
    node _T_446 = bits(_T_445, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_451 = shr(_T_446, 8) @[Bitwise.scala 102:21]
    node _T_452 = pad(_T_451, 16) @[Bitwise.scala 102:31]
    node _T_453 = bits(_T_446, 7, 0) @[Bitwise.scala 102:46]
    node _T_454 = shl(_T_453, 8) @[Bitwise.scala 102:65]
    skip
    node _T_456 = and(_T_454, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_457 = or(_T_452, _T_456) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_461 = shr(_T_457, 4) @[Bitwise.scala 102:21]
    node _GEN_5 = pad(_T_461, 16) @[Bitwise.scala 102:31]
    node _T_462 = and(_GEN_5, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_463 = bits(_T_457, 11, 0) @[Bitwise.scala 102:46]
    node _T_464 = shl(_T_463, 4) @[Bitwise.scala 102:65]
    skip
    node _T_466 = and(_T_464, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_467 = or(_T_462, _T_466) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_471 = shr(_T_467, 2) @[Bitwise.scala 102:21]
    node _GEN_6 = pad(_T_471, 16) @[Bitwise.scala 102:31]
    node _T_472 = and(_GEN_6, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_473 = bits(_T_467, 13, 0) @[Bitwise.scala 102:46]
    node _T_474 = shl(_T_473, 2) @[Bitwise.scala 102:65]
    skip
    node _T_476 = and(_T_474, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_477 = or(_T_472, _T_476) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_481 = shr(_T_477, 1) @[Bitwise.scala 102:21]
    node _GEN_7 = pad(_T_481, 16) @[Bitwise.scala 102:31]
    node _T_482 = and(_GEN_7, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_483 = bits(_T_477, 14, 0) @[Bitwise.scala 102:46]
    node _T_484 = shl(_T_483, 1) @[Bitwise.scala 102:65]
    skip
    node _T_486 = and(_T_484, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_487 = or(_T_482, _T_486) @[Bitwise.scala 102:39]
    node _T_488 = bits(_T_445, 20, 16) @[Bitwise.scala 108:44]
    node _T_489 = bits(_T_488, 3, 0) @[Bitwise.scala 108:18]
    node _T_490 = bits(_T_489, 1, 0) @[Bitwise.scala 108:18]
    node _T_491 = bits(_T_490, 0, 0) @[Bitwise.scala 108:18]
    node _T_492 = bits(_T_490, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_494 = bits(_T_489, 3, 2) @[Bitwise.scala 108:44]
    node _T_495 = bits(_T_494, 0, 0) @[Bitwise.scala 108:18]
    node _T_496 = bits(_T_494, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_499 = bits(_T_488, 4, 4) @[Bitwise.scala 108:44]
    skip
    node _T_501 = cat(_T_487, cat(cat(cat(_T_491, _T_492), cat(_T_495, _T_496)), _T_499)) @[Cat.scala 30:58]
    node _T_502 = not(_T_501) @[primitives.scala 65:36]
    node _T_503 = mux(_T_440, UInt<21>("h0"), _T_502) @[primitives.scala 65:21]
    node _T_504 = not(_T_503) @[primitives.scala 65:17]
    node _T_506 = cat(_T_504, UInt<4>("hf")) @[Cat.scala 30:58]
    skip
    skip
    skip
    node _T_511 = bits(_T_444, 3, 0) @[primitives.scala 69:26]
    node _T_512 = bits(_T_511, 1, 0) @[Bitwise.scala 108:18]
    node _T_513 = bits(_T_512, 0, 0) @[Bitwise.scala 108:18]
    node _T_514 = bits(_T_512, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_516 = bits(_T_511, 3, 2) @[Bitwise.scala 108:44]
    node _T_517 = bits(_T_516, 0, 0) @[Bitwise.scala 108:18]
    node _T_518 = bits(_T_516, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_520 = cat(cat(_T_513, _T_514), cat(_T_517, _T_518)) @[Cat.scala 30:58]
    node _T_522 = mux(_T_440, _T_520, UInt<4>("h0")) @[primitives.scala 59:20]
    node _T_523 = mux(_T_438, _T_506, pad(_T_522, 25)) @[primitives.scala 61:20]
    node _T_525 = mux(_T_436, _T_523, UInt<25>("h0")) @[primitives.scala 59:20]
    node _T_527 = mux(_T_434, _T_525, UInt<25>("h0")) @[primitives.scala 59:20]
    node _T_528 = bits(sigX3, 26, 26) @[MulAddRecFN.scala 450:26]
    node _GEN_8 = pad(_T_528, 25) @[MulAddRecFN.scala 449:75]
    node _T_529 = or(_T_527, _GEN_8) @[MulAddRecFN.scala 449:75]
    node _T_531 = cat(_T_529, UInt<2>("h3")) @[Cat.scala 30:58]
    node roundMask = or(_T_432, _T_531) @[MulAddRecFN.scala 448:50]
    node _T_532 = shr(roundMask, 1) @[MulAddRecFN.scala 454:35]
    node _T_533 = not(_T_532) @[MulAddRecFN.scala 454:24]
    node _GEN_9 = pad(_T_533, 27) @[MulAddRecFN.scala 454:40]
    node roundPosMask = and(_GEN_9, roundMask) @[MulAddRecFN.scala 454:40]
    node _GEN_10 = pad(roundPosMask, 28) @[MulAddRecFN.scala 455:30]
    node _T_534 = and(sigX3, _GEN_10) @[MulAddRecFN.scala 455:30]
    node roundPosBit = neq(_T_534, UInt<28>("h0")) @[MulAddRecFN.scala 455:46]
    skip
    node _GEN_11 = pad(_T_532, 28) @[MulAddRecFN.scala 456:34]
    node _T_537 = and(sigX3, _GEN_11) @[MulAddRecFN.scala 456:34]
    node anyRoundExtra = neq(_T_537, UInt<28>("h0")) @[MulAddRecFN.scala 456:50]
    node _T_539 = not(sigX3) @[MulAddRecFN.scala 457:27]
    skip
    skip
    node _T_541 = and(_T_539, _GEN_11) @[MulAddRecFN.scala 457:34]
    node allRoundExtra = eq(_T_541, UInt<28>("h0")) @[MulAddRecFN.scala 457:50]
    node anyRound = or(roundPosBit, anyRoundExtra) @[MulAddRecFN.scala 458:32]
    node allRound = and(roundPosBit, allRoundExtra) @[MulAddRecFN.scala 459:32]
    node roundDirectUp = mux(signY, roundingMode_min, roundingMode_max) @[MulAddRecFN.scala 460:28]
    node _T_544 = not(doIncrSig) @[MulAddRecFN.scala 462:10]
    node _T_545 = and(_T_544, roundingMode_nearest_even) @[MulAddRecFN.scala 462:22]
    node _T_546 = and(_T_545, roundPosBit) @[MulAddRecFN.scala 462:51]
    node _T_547 = and(_T_546, anyRoundExtra) @[MulAddRecFN.scala 463:60]
    skip
    node _T_550 = and(_T_544, roundDirectUp) @[MulAddRecFN.scala 464:22]
    node _T_551 = and(_T_550, anyRound) @[MulAddRecFN.scala 464:49]
    node _T_552 = or(_T_547, _T_551) @[MulAddRecFN.scala 463:78]
    node _T_553 = and(doIncrSig, allRound) @[MulAddRecFN.scala 465:49]
    node _T_554 = or(_T_552, _T_553) @[MulAddRecFN.scala 464:65]
    node _T_555 = and(doIncrSig, roundingMode_nearest_even) @[MulAddRecFN.scala 466:20]
    node _T_556 = and(_T_555, roundPosBit) @[MulAddRecFN.scala 466:49]
    node _T_557 = or(_T_554, _T_556) @[MulAddRecFN.scala 465:65]
    node _T_558 = and(doIncrSig, roundDirectUp) @[MulAddRecFN.scala 467:20]
    skip
    node roundUp = or(_T_557, _T_558) @[MulAddRecFN.scala 466:65]
    node _T_562 = not(roundPosBit) @[MulAddRecFN.scala 470:42]
    node _T_563 = and(roundingMode_nearest_even, _T_562) @[MulAddRecFN.scala 470:39]
    node _T_564 = and(_T_563, allRoundExtra) @[MulAddRecFN.scala 470:56]
    node _T_565 = and(roundingMode_nearest_even, roundPosBit) @[MulAddRecFN.scala 471:39]
    node _T_567 = not(anyRoundExtra) @[MulAddRecFN.scala 471:59]
    node _T_568 = and(_T_565, _T_567) @[MulAddRecFN.scala 471:56]
    node roundEven = mux(doIncrSig, _T_564, _T_568) @[MulAddRecFN.scala 469:12]
    node _T_570 = not(allRound) @[MulAddRecFN.scala 473:39]
    node inexactY = mux(doIncrSig, _T_570, anyRound) @[MulAddRecFN.scala 473:27]
    node _GEN_13 = pad(roundMask, 28) @[MulAddRecFN.scala 475:18]
    node _T_571 = or(sigX3, _GEN_13) @[MulAddRecFN.scala 475:18]
    node _T_572 = shr(_T_571, 2) @[MulAddRecFN.scala 475:30]
    node _T_574 = add(_T_572, UInt<26>("h1")) @[MulAddRecFN.scala 475:35]
    node roundUp_sigY3 = tail(_T_574, 1) @[MulAddRecFN.scala 475:35]
    skip
    node _T_577 = not(roundUp) @[MulAddRecFN.scala 477:13]
    node _T_579 = not(roundEven) @[MulAddRecFN.scala 477:26]
    node _T_580 = and(_T_577, _T_579) @[MulAddRecFN.scala 477:23]
    node _T_581 = not(roundMask) @[MulAddRecFN.scala 477:48]
    node _GEN_14 = pad(_T_581, 28) @[MulAddRecFN.scala 477:46]
    node _T_582 = and(sigX3, _GEN_14) @[MulAddRecFN.scala 477:46]
    node _T_583 = shr(_T_582, 2) @[MulAddRecFN.scala 477:59]
    node _T_585 = mux(_T_580, _T_583, UInt<26>("h0")) @[MulAddRecFN.scala 477:12]
    node _T_587 = mux(roundUp, roundUp_sigY3, UInt<26>("h0")) @[MulAddRecFN.scala 478:12]
    node _T_588 = or(_T_585, _T_587) @[MulAddRecFN.scala 477:79]
    skip
    skip
    node _T_591 = and(roundUp_sigY3, _T_533) @[MulAddRecFN.scala 479:51]
    node _T_593 = mux(roundEven, _T_591, UInt<26>("h0")) @[MulAddRecFN.scala 479:12]
    node sigY3 = or(_T_588, _T_593) @[MulAddRecFN.scala 478:79]
    node _T_594 = bits(sigY3, 25, 25) @[MulAddRecFN.scala 482:18]
    node _T_596 = add(sExpX3, UInt<11>("h1")) @[MulAddRecFN.scala 482:41]
    node _T_597 = tail(_T_596, 1) @[MulAddRecFN.scala 482:41]
    node _T_599 = mux(_T_594, _T_597, UInt<11>("h0")) @[MulAddRecFN.scala 482:12]
    node _T_600 = bits(sigY3, 24, 24) @[MulAddRecFN.scala 483:18]
    node _T_602 = mux(_T_600, sExpX3, UInt<11>("h0")) @[MulAddRecFN.scala 483:12]
    node _T_603 = or(_T_599, _T_602) @[MulAddRecFN.scala 482:61]
    node _T_604 = bits(sigY3, 25, 24) @[MulAddRecFN.scala 484:19]
    node _T_606 = eq(_T_604, UInt<2>("h0")) @[MulAddRecFN.scala 484:44]
    node _T_608 = sub(sExpX3, UInt<11>("h1")) @[MulAddRecFN.scala 485:20]
    skip
    node _T_610 = tail(_T_608, 1) @[MulAddRecFN.scala 485:20]
    node _T_612 = mux(_T_606, _T_610, UInt<11>("h0")) @[MulAddRecFN.scala 484:12]
    node sExpY = or(_T_603, _T_612) @[MulAddRecFN.scala 483:61]
    node expY = bits(sExpY, 8, 0) @[MulAddRecFN.scala 488:21]
    node _T_613 = bits(sigY3, 22, 0) @[MulAddRecFN.scala 490:31]
    node _T_614 = bits(sigY3, 23, 1) @[MulAddRecFN.scala 490:55]
    node fractY = mux(sigX3Shift1, _T_613, _T_614) @[MulAddRecFN.scala 490:12]
    node _T_615 = bits(sExpY, 9, 7) @[MulAddRecFN.scala 492:27]
    node overflowY = eq(_T_615, UInt<3>("h3")) @[MulAddRecFN.scala 492:56]
    node _T_618 = not(isZeroY) @[MulAddRecFN.scala 495:9]
    node _T_619 = bits(sExpY, 9, 9) @[MulAddRecFN.scala 496:19]
    skip
    node _T_622 = lt(expY, UInt<9>("h6b")) @[MulAddRecFN.scala 496:57]
    node _T_623 = or(_T_619, _T_622) @[MulAddRecFN.scala 496:34]
    node totalUnderflowY = and(_T_618, _T_623) @[MulAddRecFN.scala 495:19]
    skip
    node _T_627 = mux(sigX3Shift1, UInt<8>("h82"), UInt<8>("h81")) @[MulAddRecFN.scala 501:26]
    node _GEN_15 = pad(_T_627, 10) @[MulAddRecFN.scala 500:29]
    node _T_628 = leq(sExpX3_13, _GEN_15) @[MulAddRecFN.scala 500:29]
    node _T_629 = or(_T_428, _T_628) @[MulAddRecFN.scala 499:35]
    node underflowY = and(inexactY, _T_629) @[MulAddRecFN.scala 498:22]
    node _T_630 = and(roundingMode_min, signY) @[MulAddRecFN.scala 506:27]
    node _T_632 = not(signY) @[MulAddRecFN.scala 506:61]
    node _T_633 = and(roundingMode_max, _T_632) @[MulAddRecFN.scala 506:58]
    node roundMagUp = or(_T_630, _T_633) @[MulAddRecFN.scala 506:37]
    node overflowY_roundMagUp = or(roundingMode_nearest_even, roundMagUp) @[MulAddRecFN.scala 507:58]
    node mulSpecial = or(isSpecialA, isSpecialB) @[MulAddRecFN.scala 511:33]
    node addSpecial = or(mulSpecial, isSpecialC) @[MulAddRecFN.scala 512:33]
    node notSpecial_addZeros = and(io_fromPreMul_isZeroProd, isZeroC) @[MulAddRecFN.scala 513:56]
    node _T_635 = not(addSpecial) @[MulAddRecFN.scala 514:22]
    node _T_637 = not(notSpecial_addZeros) @[MulAddRecFN.scala 514:38]
    node commonCase = and(_T_635, _T_637) @[MulAddRecFN.scala 514:35]
    node _T_638 = and(isInfA, isZeroB) @[MulAddRecFN.scala 517:17]
    node _T_639 = and(isZeroA, isInfB) @[MulAddRecFN.scala 517:41]
    node _T_640 = or(_T_638, _T_639) @[MulAddRecFN.scala 517:29]
    node _T_642 = not(isNaNA) @[MulAddRecFN.scala 518:14]
    node _T_644 = not(isNaNB) @[MulAddRecFN.scala 518:26]
    node _T_645 = and(_T_642, _T_644) @[MulAddRecFN.scala 518:23]
    node _T_646 = or(isInfA, isInfB) @[MulAddRecFN.scala 518:46]
    node _T_647 = and(_T_645, _T_646) @[MulAddRecFN.scala 518:35]
    node _T_648 = and(_T_647, isInfC) @[MulAddRecFN.scala 518:57]
    node _T_649 = and(_T_648, doSubMags) @[MulAddRecFN.scala 518:67]
    node notSigNaN_invalid = or(_T_640, _T_649) @[MulAddRecFN.scala 517:52]
    node _T_650 = or(isSigNaNA, isSigNaNB) @[MulAddRecFN.scala 519:29]
    node _T_651 = or(_T_650, isSigNaNC) @[MulAddRecFN.scala 519:42]
    node invalid = or(_T_651, notSigNaN_invalid) @[MulAddRecFN.scala 519:55]
    node overflow = and(commonCase, overflowY) @[MulAddRecFN.scala 520:32]
    node underflow = and(commonCase, underflowY) @[MulAddRecFN.scala 521:32]
    node _T_652 = and(commonCase, inexactY) @[MulAddRecFN.scala 522:43]
    node inexact = or(overflow, _T_652) @[MulAddRecFN.scala 522:28]
    node _T_653 = or(notSpecial_addZeros, isZeroY) @[MulAddRecFN.scala 525:29]
    node notSpecial_isZeroOut = or(_T_653, totalUnderflowY) @[MulAddRecFN.scala 525:40]
    node _T_654 = and(commonCase, totalUnderflowY) @[MulAddRecFN.scala 526:41]
    node pegMinFiniteMagOut = and(_T_654, roundMagUp) @[MulAddRecFN.scala 526:60]
    node _T_656 = not(overflowY_roundMagUp) @[MulAddRecFN.scala 527:42]
    node pegMaxFiniteMagOut = and(overflow, _T_656) @[MulAddRecFN.scala 527:39]
    skip
    node _T_658 = or(_T_646, isInfC) @[MulAddRecFN.scala 529:26]
    node _T_659 = and(overflow, overflowY_roundMagUp) @[MulAddRecFN.scala 529:49]
    node notNaN_isInfOut = or(_T_658, _T_659) @[MulAddRecFN.scala 529:36]
    node _T_660 = or(isNaNA, isNaNB) @[MulAddRecFN.scala 530:27]
    node _T_661 = or(_T_660, isNaNC) @[MulAddRecFN.scala 530:37]
    node isNaNOut = or(_T_661, notSigNaN_invalid) @[MulAddRecFN.scala 530:47]
    skip
    node _T_664 = and(_T_264, io_fromPreMul_opSignC) @[MulAddRecFN.scala 533:51]
    node _T_666 = not(isSpecialC) @[MulAddRecFN.scala 534:24]
    node _T_667 = and(mulSpecial, _T_666) @[MulAddRecFN.scala 534:21]
    node _T_668 = and(_T_667, io_fromPreMul_signProd) @[MulAddRecFN.scala 534:51]
    node _T_669 = or(_T_664, _T_668) @[MulAddRecFN.scala 533:78]
    node _T_671 = not(mulSpecial) @[MulAddRecFN.scala 535:10]
    node _T_672 = and(_T_671, isSpecialC) @[MulAddRecFN.scala 535:23]
    node _T_673 = and(_T_672, io_fromPreMul_opSignC) @[MulAddRecFN.scala 535:51]
    node _T_674 = or(_T_669, _T_673) @[MulAddRecFN.scala 534:78]
    skip
    node _T_677 = and(_T_671, notSpecial_addZeros) @[MulAddRecFN.scala 536:23]
    node _T_678 = and(_T_677, doSubMags) @[MulAddRecFN.scala 536:46]
    node _T_679 = and(_T_678, roundingMode_min) @[MulAddRecFN.scala 536:59]
    node uncommonCaseSignOut = or(_T_674, _T_679) @[MulAddRecFN.scala 535:78]
    node _T_681 = not(isNaNOut) @[MulAddRecFN.scala 538:20]
    node _T_682 = and(_T_681, uncommonCaseSignOut) @[MulAddRecFN.scala 538:31]
    node _T_683 = and(commonCase, signY) @[MulAddRecFN.scala 538:70]
    node signOut = or(_T_682, _T_683) @[MulAddRecFN.scala 538:55]
    node _T_686 = mux(notSpecial_isZeroOut, UInt<9>("h1c0"), UInt<9>("h0")) @[MulAddRecFN.scala 541:18]
    node _T_687 = not(_T_686) @[MulAddRecFN.scala 541:14]
    node _T_688 = and(expY, _T_687) @[MulAddRecFN.scala 540:15]
    skip
    node _T_692 = mux(pegMinFiniteMagOut, UInt<9>("h194"), UInt<9>("h0")) @[MulAddRecFN.scala 545:18]
    node _T_693 = not(_T_692) @[MulAddRecFN.scala 545:14]
    node _T_694 = and(_T_688, _T_693) @[MulAddRecFN.scala 544:17]
    node _T_697 = mux(pegMaxFiniteMagOut, UInt<9>("h80"), UInt<9>("h0")) @[MulAddRecFN.scala 549:18]
    node _T_698 = not(_T_697) @[MulAddRecFN.scala 549:14]
    node _T_699 = and(_T_694, _T_698) @[MulAddRecFN.scala 548:17]
    node _T_702 = mux(notNaN_isInfOut, UInt<9>("h40"), UInt<9>("h0")) @[MulAddRecFN.scala 553:18]
    node _T_703 = not(_T_702) @[MulAddRecFN.scala 553:14]
    node _T_704 = and(_T_699, _T_703) @[MulAddRecFN.scala 552:17]
    node _T_707 = mux(pegMinFiniteMagOut, UInt<9>("h6b"), UInt<9>("h0")) @[MulAddRecFN.scala 557:16]
    node _T_708 = or(_T_704, _T_707) @[MulAddRecFN.scala 556:18]
    node _T_711 = mux(pegMaxFiniteMagOut, UInt<9>("h17f"), UInt<9>("h0")) @[MulAddRecFN.scala 558:16]
    node _T_712 = or(_T_708, _T_711) @[MulAddRecFN.scala 557:74]
    node _T_715 = mux(notNaN_isInfOut, UInt<9>("h180"), UInt<9>("h0")) @[MulAddRecFN.scala 562:16]
    node _T_716 = or(_T_712, _T_715) @[MulAddRecFN.scala 561:15]
    node _T_719 = mux(isNaNOut, UInt<9>("h1c0"), UInt<9>("h0")) @[MulAddRecFN.scala 566:16]
    node expOut = or(_T_716, _T_719) @[MulAddRecFN.scala 565:15]
    node _T_720 = and(totalUnderflowY, roundMagUp) @[MulAddRecFN.scala 568:30]
    node _T_721 = or(_T_720, isNaNOut) @[MulAddRecFN.scala 568:45]
    skip
    node _T_725 = mux(isNaNOut, UInt<23>("h400000"), UInt<23>("h0")) @[MulAddRecFN.scala 569:16]
    node _T_726 = mux(_T_721, _T_725, fractY) @[MulAddRecFN.scala 568:12]
    skip
    node _T_730 = mux(pegMaxFiniteMagOut, UInt<23>("h7fffff"), UInt<23>("h0")) @[Bitwise.scala 71:12]
    node fractOut = or(_T_726, _T_730) @[MulAddRecFN.scala 571:11]
    node _T_731 = cat(signOut, expOut) @[Cat.scala 30:58]
    skip
    node _T_734 = cat(underflow, inexact) @[Cat.scala 30:58]
    skip
    node _T_736 = cat(cat(invalid, UInt<1>("h0")), overflow) @[Cat.scala 30:58]
    skip
    io_out <= cat(_T_731, fractOut) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(_T_736, _T_734) @[Cat.scala 30:58]

  module MulAddRecFN :
    input io_op : UInt<2>
    input io_a : UInt<33>
    input io_b : UInt<33>
    input io_c : UInt<33>
    input io_roundingMode : UInt<2>
    output io_out : UInt<33>
    output io_exceptionFlags : UInt<5>

    inst mulAddRecFN_preMul of MulAddRecFN_preMul @[MulAddRecFN.scala 598:15]
    inst mulAddRecFN_postMul of MulAddRecFN_postMul @[MulAddRecFN.scala 600:15]
    node _T_16 = mul(mulAddRecFN_preMul.io_mulAddA, mulAddRecFN_preMul.io_mulAddB) @[MulAddRecFN.scala 610:39]
    node _T_18 = cat(UInt<1>("h0"), mulAddRecFN_preMul.io_mulAddC) @[Cat.scala 30:58]
    node _GEN_0 = pad(_T_16, 49) @[MulAddRecFN.scala 610:71]
    node _T_19 = add(_GEN_0, _T_18) @[MulAddRecFN.scala 610:71]
    skip
    io_out <= mulAddRecFN_postMul.io_out @[MulAddRecFN.scala 613:12]
    io_exceptionFlags <= mulAddRecFN_postMul.io_exceptionFlags @[MulAddRecFN.scala 614:23]
    skip
    skip
    mulAddRecFN_preMul.io_op <= io_op @[MulAddRecFN.scala 602:30]
    mulAddRecFN_preMul.io_a <= io_a @[MulAddRecFN.scala 603:30]
    mulAddRecFN_preMul.io_b <= io_b @[MulAddRecFN.scala 604:30]
    mulAddRecFN_preMul.io_c <= io_c @[MulAddRecFN.scala 605:30]
    mulAddRecFN_preMul.io_roundingMode <= io_roundingMode @[MulAddRecFN.scala 606:40]
    skip
    skip
    mulAddRecFN_postMul.io_fromPreMul_highExpA <= mulAddRecFN_preMul.io_toPostMul_highExpA @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNA <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNA @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highExpB <= mulAddRecFN_preMul.io_toPostMul_highExpB @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNB <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNB @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_signProd <= mulAddRecFN_preMul.io_toPostMul_signProd @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isZeroProd <= mulAddRecFN_preMul.io_toPostMul_isZeroProd @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_opSignC <= mulAddRecFN_preMul.io_toPostMul_opSignC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highExpC <= mulAddRecFN_preMul.io_toPostMul_highExpC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNC <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isCDominant <= mulAddRecFN_preMul.io_toPostMul_isCDominant @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_CAlignDist_0 <= mulAddRecFN_preMul.io_toPostMul_CAlignDist_0 @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_CAlignDist <= mulAddRecFN_preMul.io_toPostMul_CAlignDist @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_bit0AlignedNegSigC <= mulAddRecFN_preMul.io_toPostMul_bit0AlignedNegSigC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highAlignedNegSigC <= mulAddRecFN_preMul.io_toPostMul_highAlignedNegSigC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_sExpSum <= mulAddRecFN_preMul.io_toPostMul_sExpSum @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_roundingMode <= mulAddRecFN_preMul.io_toPostMul_roundingMode @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_mulAddResult <= tail(_T_19, 1) @[MulAddRecFN.scala 610:71]

  module FPUFMAPipe :
    input clock : Clock
    input reset : UInt<1>
    input io_in_valid : UInt<1>
    input io_in_bits_cmd : UInt<5>
    input io_in_bits_ren3 : UInt<1>
    input io_in_bits_swap23 : UInt<1>
    input io_in_bits_rm : UInt<3>
    input io_in_bits_in1 : UInt<65>
    input io_in_bits_in2 : UInt<65>
    input io_in_bits_in3 : UInt<65>
    output io_out_bits_data : UInt<65>
    output io_out_bits_exc : UInt<5>

    inst fma of MulAddRecFN @[FPU.scala 493:19]
    skip
    node _T_131 = bits(io_in_bits_in1, 32, 32) @[FPU.scala 480:29]
    node _T_132 = bits(io_in_bits_in2, 32, 32) @[FPU.scala 480:53]
    node _T_133 = xor(_T_131, _T_132) @[FPU.scala 480:37]
    node zero = shl(_T_133, 32) @[FPU.scala 480:62]
    reg valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid) @[FPU.scala 482:18]
    reg in_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), in_cmd) @[FPU.scala 483:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_rm : UInt<3>, clock with :
      reset => (UInt<1>("h0"), in_rm) @[FPU.scala 483:15]
    skip
    reg in_in1 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in1) @[FPU.scala 483:15]
    reg in_in2 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in2) @[FPU.scala 483:15]
    reg in_in3 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in3) @[FPU.scala 483:15]
    node _T_177 = bits(io_in_bits_cmd, 1, 1) @[FPU.scala 488:33]
    node _T_178 = or(io_in_bits_ren3, io_in_bits_swap23) @[FPU.scala 488:48]
    node _T_179 = and(_T_177, _T_178) @[FPU.scala 488:37]
    node _T_180 = bits(io_in_bits_cmd, 0, 0) @[FPU.scala 488:78]
    node _T_181 = cat(_T_179, _T_180) @[Cat.scala 30:58]
    node _GEN_0 = mux(io_in_bits_swap23, UInt<65>("h80000000"), io_in_bits_in2) @[FPU.scala 489:23 FPU.scala 489:32 FPU.scala 485:8]
    skip
    node _T_184 = not(_T_178) @[Conditional.scala 19:11]
    node _GEN_1 = mux(_T_184, pad(zero, 65), io_in_bits_in3) @[Conditional.scala 19:15 FPU.scala 490:45 FPU.scala 485:8]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg _T_192 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_192) @[Valid.scala 47:18]
    reg _T_196_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_196_data) @[Reg.scala 34:16]
    reg _T_196_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_196_exc) @[Reg.scala 34:16]
    node res_data = pad(fma.io_out, 65) @[FPU.scala 500:17 FPU.scala 501:12]
    skip
    node res_exc = fma.io_exceptionFlags @[FPU.scala 500:17 FPU.scala 502:11]
    skip
    skip
    reg _T_205_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_205_data) @[Reg.scala 34:16]
    reg _T_205_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_205_exc) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    io_out_bits_data <= _T_205_data @[Valid.scala 42:21 Valid.scala 44:16]
    io_out_bits_exc <= _T_205_exc @[Valid.scala 42:21 Valid.scala 44:16]
    valid <= io_in_valid @[FPU.scala 482:18]
    in_cmd <= mux(io_in_valid, pad(_T_181, 5), in_cmd) @[FPU.scala 484:22 FPU.scala 488:12 FPU.scala 483:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_rm <= mux(io_in_valid, io_in_bits_rm, in_rm) @[FPU.scala 484:22 FPU.scala 485:8 FPU.scala 483:15]
    skip
    in_in1 <= mux(io_in_valid, io_in_bits_in1, in_in1) @[FPU.scala 484:22 FPU.scala 485:8 FPU.scala 483:15]
    in_in2 <= mux(io_in_valid, _GEN_0, in_in2) @[FPU.scala 484:22 FPU.scala 483:15]
    in_in3 <= mux(io_in_valid, _GEN_1, in_in3) @[FPU.scala 484:22 FPU.scala 483:15]
    skip
    skip
    fma.io_op <= bits(in_cmd, 1, 0) @[FPU.scala 494:13]
    fma.io_a <= bits(in_in1, 32, 0) @[FPU.scala 496:12]
    fma.io_b <= bits(in_in2, 32, 0) @[FPU.scala 497:12]
    fma.io_c <= bits(in_in3, 32, 0) @[FPU.scala 498:12]
    fma.io_roundingMode <= bits(in_rm, 1, 0) @[FPU.scala 495:23]
    _T_192 <= mux(reset, UInt<1>("h0"), valid) @[Valid.scala 47:18 Valid.scala 47:18 Valid.scala 47:18]
    _T_196_data <= mux(valid, res_data, _T_196_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_196_exc <= mux(valid, res_exc, _T_196_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    _T_205_data <= mux(_T_192, _T_196_data, _T_205_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_205_exc <= mux(_T_192, _T_196_exc, _T_205_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]

  module CompareRecFN :
    input io_a : UInt<65>
    input io_b : UInt<65>
    input io_signaling : UInt<1>
    output io_lt : UInt<1>
    output io_eq : UInt<1>
    output io_exceptionFlags : UInt<5>

    node _T_16 = bits(io_a, 63, 52) @[rawFNFromRecFN.scala 50:21]
    node _T_17 = bits(_T_16, 11, 9) @[rawFNFromRecFN.scala 51:29]
    node rawA_isZero = eq(_T_17, UInt<3>("h0")) @[rawFNFromRecFN.scala 51:54]
    node _T_20 = bits(_T_16, 11, 10) @[rawFNFromRecFN.scala 52:29]
    node _T_22 = eq(_T_20, UInt<2>("h3")) @[rawFNFromRecFN.scala 52:54]
    node rawA_sign = bits(io_a, 64, 64) @[rawFNFromRecFN.scala 55:23]
    node _T_37 = bits(_T_16, 9, 9) @[rawFNFromRecFN.scala 56:40]
    node rawA_isNaN = and(_T_22, _T_37) @[rawFNFromRecFN.scala 56:32]
    skip
    node _T_41 = not(_T_37) @[rawFNFromRecFN.scala 57:35]
    node rawA_isInf = and(_T_22, _T_41) @[rawFNFromRecFN.scala 57:32]
    node rawA_sExp = cvt(_T_16) @[rawFNFromRecFN.scala 59:25]
    node _T_46 = not(rawA_isZero) @[rawFNFromRecFN.scala 60:36]
    node _T_47 = bits(io_a, 51, 0) @[rawFNFromRecFN.scala 60:48]
    skip
    skip
    node rawA_sig = cat(cat(UInt<1>("h0"), _T_46), cat(_T_47, UInt<2>("h0"))) @[Cat.scala 30:58]
    node _T_52 = bits(io_b, 63, 52) @[rawFNFromRecFN.scala 50:21]
    node _T_53 = bits(_T_52, 11, 9) @[rawFNFromRecFN.scala 51:29]
    node rawB_isZero = eq(_T_53, UInt<3>("h0")) @[rawFNFromRecFN.scala 51:54]
    node _T_56 = bits(_T_52, 11, 10) @[rawFNFromRecFN.scala 52:29]
    node _T_58 = eq(_T_56, UInt<2>("h3")) @[rawFNFromRecFN.scala 52:54]
    node rawB_sign = bits(io_b, 64, 64) @[rawFNFromRecFN.scala 55:23]
    node _T_73 = bits(_T_52, 9, 9) @[rawFNFromRecFN.scala 56:40]
    node rawB_isNaN = and(_T_58, _T_73) @[rawFNFromRecFN.scala 56:32]
    skip
    node _T_77 = not(_T_73) @[rawFNFromRecFN.scala 57:35]
    node rawB_isInf = and(_T_58, _T_77) @[rawFNFromRecFN.scala 57:32]
    node rawB_sExp = cvt(_T_52) @[rawFNFromRecFN.scala 59:25]
    node _T_82 = not(rawB_isZero) @[rawFNFromRecFN.scala 60:36]
    node _T_83 = bits(io_b, 51, 0) @[rawFNFromRecFN.scala 60:48]
    skip
    skip
    node rawB_sig = cat(cat(UInt<1>("h0"), _T_82), cat(_T_83, UInt<2>("h0"))) @[Cat.scala 30:58]
    skip
    node _T_89 = not(rawA_isNaN) @[CompareRecFN.scala 57:19]
    skip
    node _T_91 = not(rawB_isNaN) @[CompareRecFN.scala 57:35]
    node ordered = and(_T_89, _T_91) @[CompareRecFN.scala 57:32]
    skip
    skip
    node bothInfs = and(rawA_isInf, rawB_isInf) @[CompareRecFN.scala 58:33]
    skip
    skip
    node bothZeros = and(rawA_isZero, rawB_isZero) @[CompareRecFN.scala 59:33]
    skip
    skip
    node eqExps = eq(rawA_sExp, rawB_sExp) @[CompareRecFN.scala 60:29]
    node _T_92 = lt(rawA_sExp, rawB_sExp) @[CompareRecFN.scala 62:20]
    skip
    skip
    node _T_93 = lt(rawA_sig, rawB_sig) @[CompareRecFN.scala 62:57]
    node _T_94 = and(eqExps, _T_93) @[CompareRecFN.scala 62:44]
    node common_ltMags = or(_T_92, _T_94) @[CompareRecFN.scala 62:33]
    node _T_95 = eq(rawA_sig, rawB_sig) @[CompareRecFN.scala 63:45]
    node common_eqMags = and(eqExps, _T_95) @[CompareRecFN.scala 63:32]
    node _T_97 = not(bothZeros) @[CompareRecFN.scala 66:9]
    skip
    node _T_99 = not(rawB_sign) @[CompareRecFN.scala 67:28]
    skip
    node _T_100 = and(rawA_sign, _T_99) @[CompareRecFN.scala 67:25]
    node _T_102 = not(bothInfs) @[CompareRecFN.scala 68:19]
    node _T_104 = not(common_ltMags) @[CompareRecFN.scala 69:38]
    node _T_105 = and(rawA_sign, _T_104) @[CompareRecFN.scala 69:35]
    node _T_107 = not(common_eqMags) @[CompareRecFN.scala 69:57]
    node _T_108 = and(_T_105, _T_107) @[CompareRecFN.scala 69:54]
    skip
    node _T_111 = and(_T_99, common_ltMags) @[CompareRecFN.scala 70:41]
    node _T_112 = or(_T_108, _T_111) @[CompareRecFN.scala 69:74]
    node _T_113 = and(_T_102, _T_112) @[CompareRecFN.scala 68:30]
    node _T_114 = or(_T_100, _T_113) @[CompareRecFN.scala 67:41]
    node ordered_lt = and(_T_97, _T_114) @[CompareRecFN.scala 66:21]
    node _T_115 = eq(rawA_sign, rawB_sign) @[CompareRecFN.scala 72:34]
    node _T_116 = or(bothInfs, common_eqMags) @[CompareRecFN.scala 72:62]
    node _T_117 = and(_T_115, _T_116) @[CompareRecFN.scala 72:49]
    node ordered_eq = or(bothZeros, _T_117) @[CompareRecFN.scala 72:19]
    node _T_118 = bits(rawA_sig, 53, 53) @[RoundRawFNToRecFN.scala 61:57]
    node _T_120 = not(_T_118) @[RoundRawFNToRecFN.scala 61:49]
    node _T_121 = and(rawA_isNaN, _T_120) @[RoundRawFNToRecFN.scala 61:46]
    node _T_122 = bits(rawB_sig, 53, 53) @[RoundRawFNToRecFN.scala 61:57]
    node _T_124 = not(_T_122) @[RoundRawFNToRecFN.scala 61:49]
    node _T_125 = and(rawB_isNaN, _T_124) @[RoundRawFNToRecFN.scala 61:46]
    node _T_126 = or(_T_121, _T_125) @[CompareRecFN.scala 75:29]
    node _T_128 = not(ordered) @[CompareRecFN.scala 76:30]
    node _T_129 = and(io_signaling, _T_128) @[CompareRecFN.scala 76:27]
    node invalid = or(_T_126, _T_129) @[CompareRecFN.scala 75:52]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_lt <= and(ordered, ordered_lt) @[CompareRecFN.scala 78:22]
    io_eq <= and(ordered, ordered_eq) @[CompareRecFN.scala 79:22]
    skip
    io_exceptionFlags <= cat(invalid, UInt<4>("h0")) @[Cat.scala 30:58]

  module RecFNToIN :
    input io_in : UInt<65>
    input io_roundingMode : UInt<2>
    input io_signedOut : UInt<1>
    output io_out : UInt<32>
    output io_intExceptionFlags : UInt<3>

    node sign = bits(io_in, 64, 64) @[RecFNToIN.scala 54:21]
    node exp = bits(io_in, 63, 52) @[RecFNToIN.scala 55:20]
    node fract = bits(io_in, 51, 0) @[RecFNToIN.scala 56:22]
    node _T_12 = bits(exp, 11, 9) @[RecFNToIN.scala 58:22]
    node isZero = eq(_T_12, UInt<3>("h0")) @[RecFNToIN.scala 58:47]
    node _T_14 = bits(exp, 11, 10) @[RecFNToIN.scala 59:25]
    node invalid = eq(_T_14, UInt<2>("h3")) @[RecFNToIN.scala 59:50]
    node _T_16 = bits(exp, 9, 9) @[RecFNToIN.scala 60:33]
    node isNaN = and(invalid, _T_16) @[RecFNToIN.scala 60:27]
    node notSpecial_magGeOne = bits(exp, 11, 11) @[RecFNToIN.scala 61:34]
    node _T_17 = cat(notSpecial_magGeOne, fract) @[Cat.scala 30:58]
    node _T_18 = bits(exp, 4, 0) @[RecFNToIN.scala 74:20]
    node _T_20 = mux(notSpecial_magGeOne, _T_18, UInt<5>("h0")) @[RecFNToIN.scala 73:16]
    node _GEN_0 = pad(_T_17, 84) @[RecFNToIN.scala 72:40]
    node shiftedSig = dshlw(_GEN_0, _T_20) @[RecFNToIN.scala 72:40]
    node unroundedInt = bits(shiftedSig, 83, 52) @[RecFNToIN.scala 82:24]
    node _T_21 = bits(shiftedSig, 52, 51) @[RecFNToIN.scala 85:23]
    node _T_22 = bits(shiftedSig, 50, 0) @[RecFNToIN.scala 86:23]
    node _T_24 = neq(_T_22, UInt<51>("h0")) @[RecFNToIN.scala 86:41]
    node roundBits = cat(_T_21, _T_24) @[Cat.scala 30:58]
    node _T_25 = bits(roundBits, 1, 0) @[RecFNToIN.scala 88:58]
    node _T_27 = neq(_T_25, UInt<2>("h0")) @[RecFNToIN.scala 88:65]
    node _T_29 = not(isZero) @[RecFNToIN.scala 88:70]
    node roundInexact = mux(notSpecial_magGeOne, _T_27, _T_29) @[RecFNToIN.scala 88:27]
    node _T_30 = bits(roundBits, 2, 1) @[RecFNToIN.scala 91:22]
    node _T_31 = not(_T_30) @[RecFNToIN.scala 91:29]
    node _T_33 = eq(_T_31, UInt<2>("h0")) @[RecFNToIN.scala 91:29]
    skip
    node _T_35 = not(_T_25) @[RecFNToIN.scala 91:53]
    node _T_37 = eq(_T_35, UInt<2>("h0")) @[RecFNToIN.scala 91:53]
    node _T_38 = or(_T_33, _T_37) @[RecFNToIN.scala 91:34]
    node _T_39 = bits(exp, 10, 0) @[RecFNToIN.scala 92:20]
    node _T_40 = not(_T_39) @[RecFNToIN.scala 92:38]
    node _T_42 = eq(_T_40, UInt<11>("h0")) @[RecFNToIN.scala 92:38]
    skip
    skip
    node _T_47 = and(_T_42, _T_27) @[RecFNToIN.scala 92:16]
    node roundIncr_nearestEven = mux(notSpecial_magGeOne, _T_38, _T_47) @[RecFNToIN.scala 90:12]
    node _T_48 = eq(io_roundingMode, UInt<2>("h0")) @[RecFNToIN.scala 95:27]
    node _T_49 = and(_T_48, roundIncr_nearestEven) @[RecFNToIN.scala 95:51]
    node _T_50 = eq(io_roundingMode, UInt<2>("h2")) @[RecFNToIN.scala 96:27]
    node _T_51 = and(sign, roundInexact) @[RecFNToIN.scala 96:60]
    node _T_52 = and(_T_50, _T_51) @[RecFNToIN.scala 96:49]
    node _T_53 = or(_T_49, _T_52) @[RecFNToIN.scala 95:78]
    node _T_54 = eq(io_roundingMode, UInt<2>("h3")) @[RecFNToIN.scala 97:27]
    node _T_56 = not(sign) @[RecFNToIN.scala 97:53]
    node _T_57 = and(_T_56, roundInexact) @[RecFNToIN.scala 97:60]
    node _T_58 = and(_T_54, _T_57) @[RecFNToIN.scala 97:49]
    node roundIncr = or(_T_53, _T_58) @[RecFNToIN.scala 96:78]
    node _T_59 = not(unroundedInt) @[RecFNToIN.scala 98:39]
    node complUnroundedInt = mux(sign, _T_59, unroundedInt) @[RecFNToIN.scala 98:32]
    node _T_60 = xor(roundIncr, sign) @[RecFNToIN.scala 100:23]
    node _T_62 = add(complUnroundedInt, UInt<32>("h1")) @[RecFNToIN.scala 100:49]
    node _T_63 = tail(_T_62, 1) @[RecFNToIN.scala 100:49]
    node roundedInt = mux(_T_60, _T_63, complUnroundedInt) @[RecFNToIN.scala 100:12]
    node _T_64 = bits(unroundedInt, 29, 0) @[RecFNToIN.scala 103:38]
    node _T_65 = not(_T_64) @[RecFNToIN.scala 103:56]
    node _T_67 = eq(_T_65, UInt<30>("h0")) @[RecFNToIN.scala 103:56]
    node roundCarryBut2 = and(_T_67, roundIncr) @[RecFNToIN.scala 103:61]
    skip
    node _T_69 = geq(_T_39, UInt<11>("h20")) @[RecFNToIN.scala 108:21]
    node _T_71 = eq(_T_39, UInt<11>("h1f")) @[RecFNToIN.scala 109:26]
    skip
    node _T_74 = bits(unroundedInt, 30, 0) @[RecFNToIN.scala 110:45]
    node _T_76 = neq(_T_74, UInt<31>("h0")) @[RecFNToIN.scala 110:63]
    node _T_77 = or(_T_56, _T_76) @[RecFNToIN.scala 110:30]
    node _T_78 = or(_T_77, roundIncr) @[RecFNToIN.scala 111:27]
    node _T_79 = and(_T_71, _T_78) @[RecFNToIN.scala 109:50]
    node _T_80 = or(_T_69, _T_79) @[RecFNToIN.scala 108:40]
    skip
    node _T_84 = eq(_T_39, UInt<11>("h1e")) @[RecFNToIN.scala 112:36]
    node _T_85 = and(_T_56, _T_84) @[RecFNToIN.scala 112:25]
    node _T_86 = and(_T_85, roundCarryBut2) @[RecFNToIN.scala 112:60]
    node _T_87 = or(_T_80, _T_86) @[RecFNToIN.scala 111:42]
    node overflow_signed = and(notSpecial_magGeOne, _T_87) @[RecFNToIN.scala 107:12]
    skip
    node _T_91 = or(sign, _T_69) @[RecFNToIN.scala 117:18]
    skip
    node _T_94 = bits(unroundedInt, 30, 30) @[RecFNToIN.scala 119:34]
    node _T_95 = and(_T_71, _T_94) @[RecFNToIN.scala 118:50]
    node _T_96 = and(_T_95, roundCarryBut2) @[RecFNToIN.scala 119:49]
    node _T_97 = or(_T_91, _T_96) @[RecFNToIN.scala 117:48]
    node _T_98 = and(sign, roundIncr) @[RecFNToIN.scala 120:18]
    node overflow_unsigned = mux(notSpecial_magGeOne, _T_97, _T_98) @[RecFNToIN.scala 116:12]
    node overflow = mux(io_signedOut, overflow_signed, overflow_unsigned) @[RecFNToIN.scala 122:23]
    node _T_100 = not(isNaN) @[RecFNToIN.scala 124:27]
    node excSign = and(sign, _T_100) @[RecFNToIN.scala 124:24]
    node _T_101 = and(io_signedOut, excSign) @[RecFNToIN.scala 126:26]
    skip
    node _T_105 = mux(_T_101, UInt<32>("h80000000"), UInt<32>("h0")) @[RecFNToIN.scala 126:12]
    node _T_107 = not(excSign) @[RecFNToIN.scala 127:29]
    node _T_108 = and(io_signedOut, _T_107) @[RecFNToIN.scala 127:26]
    node _T_111 = mux(_T_108, UInt<31>("h7fffffff"), UInt<31>("h0")) @[RecFNToIN.scala 127:12]
    node _GEN_1 = pad(_T_111, 32) @[RecFNToIN.scala 126:72]
    node _T_112 = or(_T_105, _GEN_1) @[RecFNToIN.scala 126:72]
    node _T_114 = not(io_signedOut) @[RecFNToIN.scala 131:13]
    skip
    node _T_117 = and(_T_114, _T_107) @[RecFNToIN.scala 131:28]
    node _T_120 = mux(_T_117, UInt<32>("hffffffff"), UInt<32>("h0")) @[RecFNToIN.scala 131:12]
    node excValue = or(_T_112, _T_120) @[RecFNToIN.scala 130:11]
    node _T_122 = not(invalid) @[RecFNToIN.scala 135:35]
    node _T_123 = and(roundInexact, _T_122) @[RecFNToIN.scala 135:32]
    node _T_125 = not(overflow) @[RecFNToIN.scala 135:48]
    node inexact = and(_T_123, _T_125) @[RecFNToIN.scala 135:45]
    node _T_126 = or(invalid, overflow) @[RecFNToIN.scala 137:27]
    skip
    node _T_128 = cat(invalid, overflow) @[Cat.scala 30:58]
    skip
    io_out <= mux(_T_126, excValue, roundedInt) @[RecFNToIN.scala 137:18]
    io_intExceptionFlags <= cat(_T_128, inexact) @[Cat.scala 30:58]

  module RecFNToIN_1 :
    input io_in : UInt<65>
    input io_roundingMode : UInt<2>
    input io_signedOut : UInt<1>
    output io_out : UInt<64>
    output io_intExceptionFlags : UInt<3>

    node sign = bits(io_in, 64, 64) @[RecFNToIN.scala 54:21]
    node exp = bits(io_in, 63, 52) @[RecFNToIN.scala 55:20]
    node fract = bits(io_in, 51, 0) @[RecFNToIN.scala 56:22]
    node _T_12 = bits(exp, 11, 9) @[RecFNToIN.scala 58:22]
    node isZero = eq(_T_12, UInt<3>("h0")) @[RecFNToIN.scala 58:47]
    node _T_14 = bits(exp, 11, 10) @[RecFNToIN.scala 59:25]
    node invalid = eq(_T_14, UInt<2>("h3")) @[RecFNToIN.scala 59:50]
    node _T_16 = bits(exp, 9, 9) @[RecFNToIN.scala 60:33]
    node isNaN = and(invalid, _T_16) @[RecFNToIN.scala 60:27]
    node notSpecial_magGeOne = bits(exp, 11, 11) @[RecFNToIN.scala 61:34]
    node _T_17 = cat(notSpecial_magGeOne, fract) @[Cat.scala 30:58]
    node _T_18 = bits(exp, 5, 0) @[RecFNToIN.scala 74:20]
    node _T_20 = mux(notSpecial_magGeOne, _T_18, UInt<6>("h0")) @[RecFNToIN.scala 73:16]
    node _GEN_0 = pad(_T_17, 116) @[RecFNToIN.scala 72:40]
    node shiftedSig = dshlw(_GEN_0, _T_20) @[RecFNToIN.scala 72:40]
    node unroundedInt = bits(shiftedSig, 115, 52) @[RecFNToIN.scala 82:24]
    node _T_21 = bits(shiftedSig, 52, 51) @[RecFNToIN.scala 85:23]
    node _T_22 = bits(shiftedSig, 50, 0) @[RecFNToIN.scala 86:23]
    node _T_24 = neq(_T_22, UInt<51>("h0")) @[RecFNToIN.scala 86:41]
    node roundBits = cat(_T_21, _T_24) @[Cat.scala 30:58]
    node _T_25 = bits(roundBits, 1, 0) @[RecFNToIN.scala 88:58]
    node _T_27 = neq(_T_25, UInt<2>("h0")) @[RecFNToIN.scala 88:65]
    node _T_29 = not(isZero) @[RecFNToIN.scala 88:70]
    node roundInexact = mux(notSpecial_magGeOne, _T_27, _T_29) @[RecFNToIN.scala 88:27]
    node _T_30 = bits(roundBits, 2, 1) @[RecFNToIN.scala 91:22]
    node _T_31 = not(_T_30) @[RecFNToIN.scala 91:29]
    node _T_33 = eq(_T_31, UInt<2>("h0")) @[RecFNToIN.scala 91:29]
    skip
    node _T_35 = not(_T_25) @[RecFNToIN.scala 91:53]
    node _T_37 = eq(_T_35, UInt<2>("h0")) @[RecFNToIN.scala 91:53]
    node _T_38 = or(_T_33, _T_37) @[RecFNToIN.scala 91:34]
    node _T_39 = bits(exp, 10, 0) @[RecFNToIN.scala 92:20]
    node _T_40 = not(_T_39) @[RecFNToIN.scala 92:38]
    node _T_42 = eq(_T_40, UInt<11>("h0")) @[RecFNToIN.scala 92:38]
    skip
    skip
    node _T_47 = and(_T_42, _T_27) @[RecFNToIN.scala 92:16]
    node roundIncr_nearestEven = mux(notSpecial_magGeOne, _T_38, _T_47) @[RecFNToIN.scala 90:12]
    node _T_48 = eq(io_roundingMode, UInt<2>("h0")) @[RecFNToIN.scala 95:27]
    node _T_49 = and(_T_48, roundIncr_nearestEven) @[RecFNToIN.scala 95:51]
    node _T_50 = eq(io_roundingMode, UInt<2>("h2")) @[RecFNToIN.scala 96:27]
    node _T_51 = and(sign, roundInexact) @[RecFNToIN.scala 96:60]
    node _T_52 = and(_T_50, _T_51) @[RecFNToIN.scala 96:49]
    node _T_53 = or(_T_49, _T_52) @[RecFNToIN.scala 95:78]
    node _T_54 = eq(io_roundingMode, UInt<2>("h3")) @[RecFNToIN.scala 97:27]
    node _T_56 = not(sign) @[RecFNToIN.scala 97:53]
    node _T_57 = and(_T_56, roundInexact) @[RecFNToIN.scala 97:60]
    node _T_58 = and(_T_54, _T_57) @[RecFNToIN.scala 97:49]
    node roundIncr = or(_T_53, _T_58) @[RecFNToIN.scala 96:78]
    node _T_59 = not(unroundedInt) @[RecFNToIN.scala 98:39]
    node complUnroundedInt = mux(sign, _T_59, unroundedInt) @[RecFNToIN.scala 98:32]
    node _T_60 = xor(roundIncr, sign) @[RecFNToIN.scala 100:23]
    node _T_62 = add(complUnroundedInt, UInt<64>("h1")) @[RecFNToIN.scala 100:49]
    node _T_63 = tail(_T_62, 1) @[RecFNToIN.scala 100:49]
    node roundedInt = mux(_T_60, _T_63, complUnroundedInt) @[RecFNToIN.scala 100:12]
    node _T_64 = bits(unroundedInt, 61, 0) @[RecFNToIN.scala 103:38]
    node _T_65 = not(_T_64) @[RecFNToIN.scala 103:56]
    node _T_67 = eq(_T_65, UInt<62>("h0")) @[RecFNToIN.scala 103:56]
    node roundCarryBut2 = and(_T_67, roundIncr) @[RecFNToIN.scala 103:61]
    skip
    node _T_69 = geq(_T_39, UInt<11>("h40")) @[RecFNToIN.scala 108:21]
    node _T_71 = eq(_T_39, UInt<11>("h3f")) @[RecFNToIN.scala 109:26]
    skip
    node _T_74 = bits(unroundedInt, 62, 0) @[RecFNToIN.scala 110:45]
    node _T_76 = neq(_T_74, UInt<63>("h0")) @[RecFNToIN.scala 110:63]
    node _T_77 = or(_T_56, _T_76) @[RecFNToIN.scala 110:30]
    node _T_78 = or(_T_77, roundIncr) @[RecFNToIN.scala 111:27]
    node _T_79 = and(_T_71, _T_78) @[RecFNToIN.scala 109:50]
    node _T_80 = or(_T_69, _T_79) @[RecFNToIN.scala 108:40]
    skip
    node _T_84 = eq(_T_39, UInt<11>("h3e")) @[RecFNToIN.scala 112:36]
    node _T_85 = and(_T_56, _T_84) @[RecFNToIN.scala 112:25]
    node _T_86 = and(_T_85, roundCarryBut2) @[RecFNToIN.scala 112:60]
    node _T_87 = or(_T_80, _T_86) @[RecFNToIN.scala 111:42]
    node overflow_signed = and(notSpecial_magGeOne, _T_87) @[RecFNToIN.scala 107:12]
    skip
    node _T_91 = or(sign, _T_69) @[RecFNToIN.scala 117:18]
    skip
    node _T_94 = bits(unroundedInt, 62, 62) @[RecFNToIN.scala 119:34]
    node _T_95 = and(_T_71, _T_94) @[RecFNToIN.scala 118:50]
    node _T_96 = and(_T_95, roundCarryBut2) @[RecFNToIN.scala 119:49]
    node _T_97 = or(_T_91, _T_96) @[RecFNToIN.scala 117:48]
    node _T_98 = and(sign, roundIncr) @[RecFNToIN.scala 120:18]
    node overflow_unsigned = mux(notSpecial_magGeOne, _T_97, _T_98) @[RecFNToIN.scala 116:12]
    node overflow = mux(io_signedOut, overflow_signed, overflow_unsigned) @[RecFNToIN.scala 122:23]
    node _T_100 = not(isNaN) @[RecFNToIN.scala 124:27]
    node excSign = and(sign, _T_100) @[RecFNToIN.scala 124:24]
    node _T_101 = and(io_signedOut, excSign) @[RecFNToIN.scala 126:26]
    skip
    node _T_105 = mux(_T_101, UInt<64>("h8000000000000000"), UInt<64>("h0")) @[RecFNToIN.scala 126:12]
    node _T_107 = not(excSign) @[RecFNToIN.scala 127:29]
    node _T_108 = and(io_signedOut, _T_107) @[RecFNToIN.scala 127:26]
    node _T_111 = mux(_T_108, UInt<63>("h7fffffffffffffff"), UInt<63>("h0")) @[RecFNToIN.scala 127:12]
    node _GEN_1 = pad(_T_111, 64) @[RecFNToIN.scala 126:72]
    node _T_112 = or(_T_105, _GEN_1) @[RecFNToIN.scala 126:72]
    node _T_114 = not(io_signedOut) @[RecFNToIN.scala 131:13]
    skip
    node _T_117 = and(_T_114, _T_107) @[RecFNToIN.scala 131:28]
    node _T_120 = mux(_T_117, UInt<64>("hffffffffffffffff"), UInt<64>("h0")) @[RecFNToIN.scala 131:12]
    node excValue = or(_T_112, _T_120) @[RecFNToIN.scala 130:11]
    node _T_122 = not(invalid) @[RecFNToIN.scala 135:35]
    node _T_123 = and(roundInexact, _T_122) @[RecFNToIN.scala 135:32]
    node _T_125 = not(overflow) @[RecFNToIN.scala 135:48]
    node inexact = and(_T_123, _T_125) @[RecFNToIN.scala 135:45]
    node _T_126 = or(invalid, overflow) @[RecFNToIN.scala 137:27]
    skip
    node _T_128 = cat(invalid, overflow) @[Cat.scala 30:58]
    skip
    io_out <= mux(_T_126, excValue, roundedInt) @[RecFNToIN.scala 137:18]
    io_intExceptionFlags <= cat(_T_128, inexact) @[Cat.scala 30:58]

  module FPToInt :
    input clock : Clock
    input io_in_valid : UInt<1>
    input io_in_bits_cmd : UInt<5>
    input io_in_bits_ldst : UInt<1>
    input io_in_bits_single : UInt<1>
    input io_in_bits_rm : UInt<3>
    input io_in_bits_typ : UInt<2>
    input io_in_bits_in1 : UInt<65>
    input io_in_bits_in2 : UInt<65>
    output io_as_double_rm : UInt<3>
    output io_as_double_in1 : UInt<65>
    output io_as_double_in2 : UInt<65>
    output io_out_valid : UInt<1>
    output io_out_bits_lt : UInt<1>
    output io_out_bits_store : UInt<64>
    output io_out_bits_toint : UInt<64>
    output io_out_bits_exc : UInt<5>

    inst dcmp of CompareRecFN @[FPU.scala 319:20]
    inst RecFNToIN of RecFNToIN @[FPU.scala 336:24]
    inst RecFNToIN_1 of RecFNToIN_1 @[FPU.scala 336:24]
    reg in_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), in_cmd) @[FPU.scala 286:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), in_single) @[FPU.scala 286:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_rm : UInt<3>, clock with :
      reset => (UInt<1>("h0"), in_rm) @[FPU.scala 286:15]
    reg in_typ : UInt<2>, clock with :
      reset => (UInt<1>("h0"), in_typ) @[FPU.scala 286:15]
    reg in_in1 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in1) @[FPU.scala 286:15]
    reg in_in2 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in2) @[FPU.scala 286:15]
    skip
    reg valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid) @[FPU.scala 287:18]
    node _T_224 = not(io_in_bits_ldst) @[FPU.scala 293:47]
    node _T_225 = and(io_in_bits_single, _T_224) @[FPU.scala 293:44]
    node _T_228 = and(io_in_bits_cmd, UInt<5>("hc")) @[FPU.scala 293:82]
    node _T_229 = eq(UInt<5>("hc"), _T_228) @[FPU.scala 293:82]
    node _T_231 = not(_T_229) @[FPU.scala 293:82]
    node _T_232 = and(_T_225, _T_231) @[FPU.scala 293:64]
    node _T_233 = bits(io_in_bits_in1, 32, 32) @[FPU.scala 237:18]
    node _T_234 = bits(io_in_bits_in1, 22, 0) @[FPU.scala 238:21]
    node _T_235 = bits(io_in_bits_in1, 31, 23) @[FPU.scala 239:19]
    node _T_236 = shl(_T_234, 53) @[FPU.scala 240:28]
    node _T_237 = shr(_T_236, 24) @[FPU.scala 240:43]
    node _T_238 = bits(_T_235, 8, 6) @[FPU.scala 242:26]
    node _GEN_31 = pad(_T_235, 12) @[FPU.scala 243:31]
    node _T_240 = add(_GEN_31, UInt<12>("h800")) @[FPU.scala 243:31]
    node _T_241 = tail(_T_240, 1) @[FPU.scala 243:31]
    node _T_243 = sub(_T_241, UInt<12>("h100")) @[FPU.scala 243:53]
    skip
    node _T_245 = tail(_T_243, 1) @[FPU.scala 243:53]
    node _T_247 = eq(_T_238, UInt<3>("h0")) @[FPU.scala 244:19]
    node _T_249 = geq(_T_238, UInt<3>("h6")) @[FPU.scala 244:36]
    node _T_250 = or(_T_247, _T_249) @[FPU.scala 244:25]
    node _T_251 = bits(_T_245, 8, 0) @[FPU.scala 244:65]
    node _T_252 = cat(_T_238, _T_251) @[Cat.scala 30:58]
    skip
    node _T_254 = mux(_T_250, _T_252, _T_245) @[FPU.scala 244:10]
    skip
    node _T_256 = cat(cat(_T_233, _T_254), _T_237) @[Cat.scala 30:58]
    node _T_257 = bits(io_in_bits_in2, 32, 32) @[FPU.scala 237:18]
    node _T_258 = bits(io_in_bits_in2, 22, 0) @[FPU.scala 238:21]
    node _T_259 = bits(io_in_bits_in2, 31, 23) @[FPU.scala 239:19]
    node _T_260 = shl(_T_258, 53) @[FPU.scala 240:28]
    node _T_261 = shr(_T_260, 24) @[FPU.scala 240:43]
    node _T_262 = bits(_T_259, 8, 6) @[FPU.scala 242:26]
    node _GEN_32 = pad(_T_259, 12) @[FPU.scala 243:31]
    node _T_264 = add(_GEN_32, UInt<12>("h800")) @[FPU.scala 243:31]
    node _T_265 = tail(_T_264, 1) @[FPU.scala 243:31]
    node _T_267 = sub(_T_265, UInt<12>("h100")) @[FPU.scala 243:53]
    skip
    node _T_269 = tail(_T_267, 1) @[FPU.scala 243:53]
    node _T_271 = eq(_T_262, UInt<3>("h0")) @[FPU.scala 244:19]
    node _T_273 = geq(_T_262, UInt<3>("h6")) @[FPU.scala 244:36]
    node _T_274 = or(_T_271, _T_273) @[FPU.scala 244:25]
    node _T_275 = bits(_T_269, 8, 0) @[FPU.scala 244:65]
    node _T_276 = cat(_T_262, _T_275) @[Cat.scala 30:58]
    skip
    node _T_278 = mux(_T_274, _T_276, _T_269) @[FPU.scala 244:10]
    skip
    node _T_280 = cat(cat(_T_257, _T_278), _T_261) @[Cat.scala 30:58]
    node _GEN_0 = mux(_T_232, _T_256, io_in_bits_in1) @[FPU.scala 293:98 FPU.scala 294:14 FPU.scala 292:8]
    node _GEN_1 = mux(_T_232, _T_280, io_in_bits_in2) @[FPU.scala 293:98 FPU.scala 295:14 FPU.scala 292:8]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_281 = bits(in_in1, 32, 32) @[fNFromRecFN.scala 45:22]
    node _T_282 = bits(in_in1, 31, 23) @[fNFromRecFN.scala 46:23]
    node _T_283 = bits(in_in1, 22, 0) @[fNFromRecFN.scala 47:25]
    node _T_284 = bits(_T_282, 6, 0) @[fNFromRecFN.scala 49:39]
    node _T_286 = lt(_T_284, UInt<7>("h2")) @[fNFromRecFN.scala 49:57]
    node _T_287 = bits(_T_282, 8, 6) @[fNFromRecFN.scala 51:19]
    node _T_289 = eq(_T_287, UInt<3>("h1")) @[fNFromRecFN.scala 51:44]
    node _T_290 = bits(_T_282, 8, 7) @[fNFromRecFN.scala 52:24]
    node _T_292 = eq(_T_290, UInt<2>("h1")) @[fNFromRecFN.scala 52:49]
    node _T_293 = and(_T_292, _T_286) @[fNFromRecFN.scala 52:62]
    node _T_294 = or(_T_289, _T_293) @[fNFromRecFN.scala 51:57]
    skip
    skip
    node _T_299 = not(_T_286) @[fNFromRecFN.scala 56:18]
    node _T_300 = and(_T_292, _T_299) @[fNFromRecFN.scala 55:58]
    skip
    node _T_303 = eq(_T_290, UInt<2>("h2")) @[fNFromRecFN.scala 57:48]
    node _T_304 = or(_T_300, _T_303) @[fNFromRecFN.scala 56:39]
    skip
    node _T_307 = eq(_T_290, UInt<2>("h3")) @[fNFromRecFN.scala 58:55]
    node _T_308 = bits(_T_282, 6, 6) @[fNFromRecFN.scala 59:39]
    node _T_309 = and(_T_307, _T_308) @[fNFromRecFN.scala 59:31]
    node _T_311 = bits(_T_282, 4, 0) @[fNFromRecFN.scala 61:46]
    node _T_312 = sub(UInt<5>("h2"), _T_311) @[fNFromRecFN.scala 61:39]
    skip
    node _T_314 = tail(_T_312, 1) @[fNFromRecFN.scala 61:39]
    node _T_316 = cat(UInt<1>("h1"), _T_283) @[Cat.scala 30:58]
    node _T_317 = dshr(_T_316, _T_314) @[fNFromRecFN.scala 63:35]
    node _T_318 = bits(_T_317, 22, 0) @[fNFromRecFN.scala 63:53]
    node _T_319 = bits(_T_282, 7, 0) @[fNFromRecFN.scala 65:18]
    node _T_321 = sub(_T_319, UInt<8>("h81")) @[fNFromRecFN.scala 65:36]
    skip
    node _T_323 = tail(_T_321, 1) @[fNFromRecFN.scala 65:36]
    skip
    node _T_327 = mux(_T_307, UInt<8>("hff"), UInt<8>("h0")) @[Bitwise.scala 71:12]
    node _T_328 = mux(_T_304, _T_323, _T_327) @[fNFromRecFN.scala 68:16]
    node _T_329 = or(_T_304, _T_309) @[fNFromRecFN.scala 70:26]
    node _T_331 = mux(_T_294, _T_318, UInt<23>("h0")) @[fNFromRecFN.scala 72:20]
    node _T_332 = mux(_T_329, _T_283, _T_331) @[fNFromRecFN.scala 70:16]
    skip
    node _T_334 = cat(cat(_T_281, _T_328), _T_332) @[Cat.scala 30:58]
    node _T_335 = bits(_T_334, 31, 31) @[Package.scala 40:38]
    skip
    node _T_339 = mux(_T_335, UInt<32>("hffffffff"), UInt<32>("h0")) @[Bitwise.scala 71:12]
    node unrec_s = cat(_T_339, cat(cat(_T_281, _T_328), _T_332)) @[Cat.scala 30:58]
    node _T_340 = bits(in_in1, 64, 64) @[fNFromRecFN.scala 45:22]
    node _T_341 = bits(in_in1, 63, 52) @[fNFromRecFN.scala 46:23]
    node _T_342 = bits(in_in1, 51, 0) @[fNFromRecFN.scala 47:25]
    node _T_343 = bits(_T_341, 9, 0) @[fNFromRecFN.scala 49:39]
    node _T_345 = lt(_T_343, UInt<10>("h2")) @[fNFromRecFN.scala 49:57]
    node _T_346 = bits(_T_341, 11, 9) @[fNFromRecFN.scala 51:19]
    node _T_348 = eq(_T_346, UInt<3>("h1")) @[fNFromRecFN.scala 51:44]
    node _T_349 = bits(_T_341, 11, 10) @[fNFromRecFN.scala 52:24]
    node _T_351 = eq(_T_349, UInt<2>("h1")) @[fNFromRecFN.scala 52:49]
    node _T_352 = and(_T_351, _T_345) @[fNFromRecFN.scala 52:62]
    node _T_353 = or(_T_348, _T_352) @[fNFromRecFN.scala 51:57]
    skip
    skip
    node _T_358 = not(_T_345) @[fNFromRecFN.scala 56:18]
    node _T_359 = and(_T_351, _T_358) @[fNFromRecFN.scala 55:58]
    skip
    node _T_362 = eq(_T_349, UInt<2>("h2")) @[fNFromRecFN.scala 57:48]
    node _T_363 = or(_T_359, _T_362) @[fNFromRecFN.scala 56:39]
    skip
    node _T_366 = eq(_T_349, UInt<2>("h3")) @[fNFromRecFN.scala 58:55]
    node _T_367 = bits(_T_341, 9, 9) @[fNFromRecFN.scala 59:39]
    node _T_368 = and(_T_366, _T_367) @[fNFromRecFN.scala 59:31]
    node _T_370 = bits(_T_341, 5, 0) @[fNFromRecFN.scala 61:46]
    node _T_371 = sub(UInt<6>("h2"), _T_370) @[fNFromRecFN.scala 61:39]
    skip
    node _T_373 = tail(_T_371, 1) @[fNFromRecFN.scala 61:39]
    node _T_375 = cat(UInt<1>("h1"), _T_342) @[Cat.scala 30:58]
    node _T_376 = dshr(_T_375, _T_373) @[fNFromRecFN.scala 63:35]
    node _T_377 = bits(_T_376, 51, 0) @[fNFromRecFN.scala 63:53]
    node _T_378 = bits(_T_341, 10, 0) @[fNFromRecFN.scala 65:18]
    node _T_380 = sub(_T_378, UInt<11>("h401")) @[fNFromRecFN.scala 65:36]
    skip
    node _T_382 = tail(_T_380, 1) @[fNFromRecFN.scala 65:36]
    skip
    node _T_386 = mux(_T_366, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 71:12]
    node _T_387 = mux(_T_363, _T_382, _T_386) @[fNFromRecFN.scala 68:16]
    node _T_388 = or(_T_363, _T_368) @[fNFromRecFN.scala 70:26]
    node _T_390 = mux(_T_353, _T_377, UInt<52>("h0")) @[fNFromRecFN.scala 72:20]
    node _T_391 = mux(_T_388, _T_342, _T_390) @[fNFromRecFN.scala 70:16]
    skip
    node _T_393 = cat(cat(_T_340, _T_387), _T_391) @[Cat.scala 30:58]
    node unrec_int = mux(in_single, unrec_s, _T_393) @[FPU.scala 304:10]
    skip
    skip
    skip
    skip
    node _T_398 = bits(_T_287, 2, 1) @[FPU.scala 206:27]
    node _T_400 = eq(_T_398, UInt<2>("h3")) @[FPU.scala 207:30]
    skip
    skip
    skip
    node _T_407 = eq(_T_398, UInt<2>("h1")) @[FPU.scala 210:50]
    node _T_408 = and(_T_407, _T_286) @[FPU.scala 210:62]
    node _T_409 = or(_T_289, _T_408) @[FPU.scala 210:40]
    skip
    skip
    node _T_414 = and(_T_407, _T_299) @[FPU.scala 211:39]
    node _T_416 = eq(_T_398, UInt<2>("h2")) @[FPU.scala 211:71]
    node _T_417 = or(_T_414, _T_416) @[FPU.scala 211:61]
    node _T_419 = eq(_T_287, UInt<3>("h0")) @[FPU.scala 212:23]
    skip
    node _T_422 = not(_T_308) @[FPU.scala 213:30]
    node _T_423 = and(_T_400, _T_422) @[FPU.scala 213:27]
    node _T_424 = not(_T_287) @[FPU.scala 214:22]
    node _T_426 = eq(_T_424, UInt<3>("h0")) @[FPU.scala 214:22]
    node _T_427 = bits(_T_283, 22, 22) @[FPU.scala 215:31]
    node _T_429 = not(_T_427) @[FPU.scala 215:27]
    node _T_430 = and(_T_426, _T_429) @[FPU.scala 215:24]
    skip
    node _T_432 = and(_T_426, _T_427) @[FPU.scala 216:24]
    node _T_434 = not(_T_281) @[FPU.scala 218:34]
    node _T_435 = and(_T_423, _T_434) @[FPU.scala 218:31]
    skip
    node _T_438 = and(_T_417, _T_434) @[FPU.scala 218:50]
    skip
    node _T_441 = and(_T_409, _T_434) @[FPU.scala 219:21]
    skip
    node _T_444 = and(_T_419, _T_434) @[FPU.scala 219:38]
    node _T_445 = and(_T_419, _T_281) @[FPU.scala 219:55]
    node _T_446 = and(_T_409, _T_281) @[FPU.scala 220:21]
    node _T_447 = and(_T_417, _T_281) @[FPU.scala 220:39]
    node _T_448 = and(_T_423, _T_281) @[FPU.scala 220:54]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node classify_s = cat(cat(cat(cat(_T_432, _T_430), _T_435), cat(_T_438, _T_441)), cat(cat(cat(_T_444, _T_445), _T_446), cat(_T_447, _T_448))) @[Cat.scala 30:58]
    skip
    skip
    skip
    skip
    node _T_461 = bits(_T_346, 2, 1) @[FPU.scala 206:27]
    node _T_463 = eq(_T_461, UInt<2>("h3")) @[FPU.scala 207:30]
    skip
    skip
    skip
    node _T_470 = eq(_T_461, UInt<2>("h1")) @[FPU.scala 210:50]
    node _T_471 = and(_T_470, _T_345) @[FPU.scala 210:62]
    node _T_472 = or(_T_348, _T_471) @[FPU.scala 210:40]
    skip
    skip
    node _T_477 = and(_T_470, _T_358) @[FPU.scala 211:39]
    node _T_479 = eq(_T_461, UInt<2>("h2")) @[FPU.scala 211:71]
    node _T_480 = or(_T_477, _T_479) @[FPU.scala 211:61]
    node _T_482 = eq(_T_346, UInt<3>("h0")) @[FPU.scala 212:23]
    skip
    node _T_485 = not(_T_367) @[FPU.scala 213:30]
    node _T_486 = and(_T_463, _T_485) @[FPU.scala 213:27]
    node _T_487 = not(_T_346) @[FPU.scala 214:22]
    node _T_489 = eq(_T_487, UInt<3>("h0")) @[FPU.scala 214:22]
    node _T_490 = bits(_T_342, 51, 51) @[FPU.scala 215:31]
    node _T_492 = not(_T_490) @[FPU.scala 215:27]
    node _T_493 = and(_T_489, _T_492) @[FPU.scala 215:24]
    skip
    node _T_495 = and(_T_489, _T_490) @[FPU.scala 216:24]
    node _T_497 = not(_T_340) @[FPU.scala 218:34]
    node _T_498 = and(_T_486, _T_497) @[FPU.scala 218:31]
    skip
    node _T_501 = and(_T_480, _T_497) @[FPU.scala 218:50]
    skip
    node _T_504 = and(_T_472, _T_497) @[FPU.scala 219:21]
    skip
    node _T_507 = and(_T_482, _T_497) @[FPU.scala 219:38]
    node _T_508 = and(_T_482, _T_340) @[FPU.scala 219:55]
    node _T_509 = and(_T_472, _T_340) @[FPU.scala 220:21]
    node _T_510 = and(_T_480, _T_340) @[FPU.scala 220:39]
    node _T_511 = and(_T_486, _T_340) @[FPU.scala 220:54]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_520 = cat(cat(cat(cat(_T_495, _T_493), _T_498), cat(_T_501, _T_504)), cat(cat(cat(_T_507, _T_508), _T_509), cat(_T_510, _T_511))) @[Cat.scala 30:58]
    node classify_out = mux(in_single, classify_s, _T_520) @[FPU.scala 316:10]
    node _T_521 = bits(in_rm, 1, 1) @[FPU.scala 322:30]
    skip
    node _T_524 = bits(in_rm, 0, 0) @[FPU.scala 324:33]
    node _T_525 = mux(_T_524, pad(classify_out, 64), unrec_int) @[FPU.scala 324:27]
    node _T_529 = and(in_cmd, UInt<5>("hc")) @[FPU.scala 328:16]
    node _T_530 = eq(UInt<5>("h4"), _T_529) @[FPU.scala 328:16]
    node _T_531 = not(in_rm) @[FPU.scala 329:27]
    node _T_532 = cat(dcmp.io_lt, dcmp.io_eq) @[Cat.scala 30:58]
    node _GEN_33 = pad(_T_532, 3) @[FPU.scala 329:34]
    node _T_533 = and(_T_531, _GEN_33) @[FPU.scala 329:34]
    node _T_535 = neq(_T_533, UInt<3>("h0")) @[FPU.scala 329:65]
    node _GEN_23 = mux(_T_530, pad(_T_535, 64), _T_525) @[FPU.scala 328:30 FPU.scala 329:23 FPU.scala 324:21]
    node _GEN_24 = mux(_T_530, dcmp.io_exceptionFlags, UInt<5>("h0")) @[FPU.scala 328:30 FPU.scala 330:21 FPU.scala 326:19]
    skip
    node _T_539 = eq(UInt<5>("h8"), _T_529) @[FPU.scala 332:16]
    node _T_540 = bits(in_typ, 0, 0) @[FPU.scala 339:35]
    skip
    node _T_542 = bits(in_typ, 1, 1) @[Package.scala 44:13]
    node _T_544 = not(_T_542) @[FPU.scala 340:44]
    node _T_545 = bits(RecFNToIN.io_out, 31, 31) @[Package.scala 40:38]
    skip
    node _T_549 = mux(_T_545, UInt<32>("hffffffff"), UInt<32>("h0")) @[Bitwise.scala 71:12]
    node _T_550 = cat(_T_549, RecFNToIN.io_out) @[Cat.scala 30:58]
    node _T_551 = bits(RecFNToIN.io_intExceptionFlags, 2, 1) @[FPU.scala 342:57]
    node _T_553 = neq(_T_551, UInt<2>("h0")) @[FPU.scala 342:64]
    node _T_555 = bits(RecFNToIN.io_intExceptionFlags, 0, 0) @[FPU.scala 342:106]
    skip
    node _T_557 = cat(cat(_T_553, UInt<3>("h0")), _T_555) @[Cat.scala 30:58]
    node _GEN_25 = mux(_T_544, _T_550, _GEN_23) @[FPU.scala 340:51 FPU.scala 341:27]
    node _GEN_26 = mux(_T_544, _T_557, _GEN_24) @[FPU.scala 340:51 FPU.scala 342:25]
    skip
    skip
    skip
    skip
    node _T_563 = bits(RecFNToIN_1.io_intExceptionFlags, 2, 1) @[FPU.scala 342:57]
    node _T_565 = neq(_T_563, UInt<2>("h0")) @[FPU.scala 342:64]
    node _T_567 = bits(RecFNToIN_1.io_intExceptionFlags, 0, 0) @[FPU.scala 342:106]
    skip
    node _T_569 = cat(cat(_T_565, UInt<3>("h0")), _T_567) @[Cat.scala 30:58]
    node _GEN_27 = mux(_T_542, RecFNToIN_1.io_out, _GEN_25) @[FPU.scala 340:51 FPU.scala 341:27]
    node _GEN_28 = mux(_T_542, _T_569, _GEN_26) @[FPU.scala 340:51 FPU.scala 342:25]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_as_double_rm <= in_rm @[FPU.scala 349:16]
    skip
    io_as_double_in1 <= in_in1 @[FPU.scala 349:16]
    io_as_double_in2 <= in_in2 @[FPU.scala 349:16]
    skip
    io_out_valid <= valid @[FPU.scala 347:16]
    io_out_bits_lt <= dcmp.io_lt @[FPU.scala 348:18]
    io_out_bits_store <= mux(in_single, unrec_s, _T_393) @[FPU.scala 304:10]
    io_out_bits_toint <= mux(_T_539, _GEN_27, _GEN_23) @[FPU.scala 332:33]
    io_out_bits_exc <= mux(_T_539, _GEN_28, _GEN_24) @[FPU.scala 332:33]
    in_cmd <= mux(io_in_valid, io_in_bits_cmd, in_cmd) @[FPU.scala 291:22 FPU.scala 292:8 FPU.scala 286:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_single <= mux(io_in_valid, io_in_bits_single, in_single) @[FPU.scala 291:22 FPU.scala 292:8 FPU.scala 286:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_rm <= mux(io_in_valid, io_in_bits_rm, in_rm) @[FPU.scala 291:22 FPU.scala 292:8 FPU.scala 286:15]
    in_typ <= mux(io_in_valid, io_in_bits_typ, in_typ) @[FPU.scala 291:22 FPU.scala 292:8 FPU.scala 286:15]
    in_in1 <= mux(io_in_valid, _GEN_0, in_in1) @[FPU.scala 291:22 FPU.scala 286:15]
    in_in2 <= mux(io_in_valid, _GEN_1, in_in2) @[FPU.scala 291:22 FPU.scala 286:15]
    skip
    valid <= io_in_valid @[FPU.scala 287:18]
    skip
    skip
    dcmp.io_a <= in_in1 @[FPU.scala 320:13]
    dcmp.io_b <= in_in2 @[FPU.scala 321:13]
    dcmp.io_signaling <= not(_T_521) @[FPU.scala 322:24]
    skip
    skip
    RecFNToIN.io_in <= in_in1 @[FPU.scala 337:18]
    RecFNToIN.io_roundingMode <= bits(in_rm, 1, 0) @[FPU.scala 338:28]
    RecFNToIN.io_signedOut <= not(_T_540) @[FPU.scala 339:28]
    skip
    skip
    RecFNToIN_1.io_in <= in_in1 @[FPU.scala 337:18]
    RecFNToIN_1.io_roundingMode <= bits(in_rm, 1, 0) @[FPU.scala 338:28]
    RecFNToIN_1.io_signedOut <= not(_T_540) @[FPU.scala 339:28]

  module INToRecFN :
    input io_signedIn : UInt<1>
    input io_in : UInt<64>
    input io_roundingMode : UInt<2>
    output io_out : UInt<33>
    output io_exceptionFlags : UInt<5>

    node _T_12 = bits(io_in, 63, 63) @[INToRecFN.scala 55:36]
    node sign = and(io_signedIn, _T_12) @[INToRecFN.scala 55:28]
    node _T_14 = sub(UInt<64>("h0"), io_in) @[INToRecFN.scala 56:27]
    skip
    node _T_16 = tail(_T_14, 1) @[INToRecFN.scala 56:27]
    node absIn = mux(sign, _T_16, io_in) @[INToRecFN.scala 56:20]
    skip
    node _T_18 = bits(absIn, 63, 32) @[CircuitMath.scala 35:17]
    node _T_19 = bits(absIn, 31, 0) @[CircuitMath.scala 36:17]
    node _T_21 = neq(_T_18, UInt<32>("h0")) @[CircuitMath.scala 37:22]
    node _T_22 = bits(_T_18, 31, 16) @[CircuitMath.scala 35:17]
    node _T_23 = bits(_T_18, 15, 0) @[CircuitMath.scala 36:17]
    node _T_25 = neq(_T_22, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_26 = bits(_T_22, 15, 8) @[CircuitMath.scala 35:17]
    node _T_27 = bits(_T_22, 7, 0) @[CircuitMath.scala 36:17]
    node _T_29 = neq(_T_26, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_30 = bits(_T_26, 7, 4) @[CircuitMath.scala 35:17]
    node _T_31 = bits(_T_26, 3, 0) @[CircuitMath.scala 36:17]
    node _T_33 = neq(_T_30, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_34 = bits(_T_30, 3, 3) @[CircuitMath.scala 32:12]
    node _T_36 = bits(_T_30, 2, 2) @[CircuitMath.scala 32:12]
    node _T_38 = bits(_T_30, 1, 1) @[CircuitMath.scala 30:8]
    node _T_39 = mux(_T_36, UInt<2>("h2"), pad(_T_38, 2)) @[CircuitMath.scala 32:10]
    node _T_40 = mux(_T_34, UInt<2>("h3"), _T_39) @[CircuitMath.scala 32:10]
    node _T_41 = bits(_T_31, 3, 3) @[CircuitMath.scala 32:12]
    node _T_43 = bits(_T_31, 2, 2) @[CircuitMath.scala 32:12]
    node _T_45 = bits(_T_31, 1, 1) @[CircuitMath.scala 30:8]
    node _T_46 = mux(_T_43, UInt<2>("h2"), pad(_T_45, 2)) @[CircuitMath.scala 32:10]
    node _T_47 = mux(_T_41, UInt<2>("h3"), _T_46) @[CircuitMath.scala 32:10]
    node _T_48 = mux(_T_33, _T_40, _T_47) @[CircuitMath.scala 38:21]
    node _T_49 = cat(_T_33, _T_48) @[Cat.scala 30:58]
    node _T_50 = bits(_T_27, 7, 4) @[CircuitMath.scala 35:17]
    node _T_51 = bits(_T_27, 3, 0) @[CircuitMath.scala 36:17]
    node _T_53 = neq(_T_50, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_54 = bits(_T_50, 3, 3) @[CircuitMath.scala 32:12]
    node _T_56 = bits(_T_50, 2, 2) @[CircuitMath.scala 32:12]
    node _T_58 = bits(_T_50, 1, 1) @[CircuitMath.scala 30:8]
    node _T_59 = mux(_T_56, UInt<2>("h2"), pad(_T_58, 2)) @[CircuitMath.scala 32:10]
    node _T_60 = mux(_T_54, UInt<2>("h3"), _T_59) @[CircuitMath.scala 32:10]
    node _T_61 = bits(_T_51, 3, 3) @[CircuitMath.scala 32:12]
    node _T_63 = bits(_T_51, 2, 2) @[CircuitMath.scala 32:12]
    node _T_65 = bits(_T_51, 1, 1) @[CircuitMath.scala 30:8]
    node _T_66 = mux(_T_63, UInt<2>("h2"), pad(_T_65, 2)) @[CircuitMath.scala 32:10]
    node _T_67 = mux(_T_61, UInt<2>("h3"), _T_66) @[CircuitMath.scala 32:10]
    node _T_68 = mux(_T_53, _T_60, _T_67) @[CircuitMath.scala 38:21]
    node _T_69 = cat(_T_53, _T_68) @[Cat.scala 30:58]
    node _T_70 = mux(_T_29, _T_49, _T_69) @[CircuitMath.scala 38:21]
    node _T_71 = cat(_T_29, _T_70) @[Cat.scala 30:58]
    node _T_72 = bits(_T_23, 15, 8) @[CircuitMath.scala 35:17]
    node _T_73 = bits(_T_23, 7, 0) @[CircuitMath.scala 36:17]
    node _T_75 = neq(_T_72, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_76 = bits(_T_72, 7, 4) @[CircuitMath.scala 35:17]
    node _T_77 = bits(_T_72, 3, 0) @[CircuitMath.scala 36:17]
    node _T_79 = neq(_T_76, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_80 = bits(_T_76, 3, 3) @[CircuitMath.scala 32:12]
    node _T_82 = bits(_T_76, 2, 2) @[CircuitMath.scala 32:12]
    node _T_84 = bits(_T_76, 1, 1) @[CircuitMath.scala 30:8]
    node _T_85 = mux(_T_82, UInt<2>("h2"), pad(_T_84, 2)) @[CircuitMath.scala 32:10]
    node _T_86 = mux(_T_80, UInt<2>("h3"), _T_85) @[CircuitMath.scala 32:10]
    node _T_87 = bits(_T_77, 3, 3) @[CircuitMath.scala 32:12]
    node _T_89 = bits(_T_77, 2, 2) @[CircuitMath.scala 32:12]
    node _T_91 = bits(_T_77, 1, 1) @[CircuitMath.scala 30:8]
    node _T_92 = mux(_T_89, UInt<2>("h2"), pad(_T_91, 2)) @[CircuitMath.scala 32:10]
    node _T_93 = mux(_T_87, UInt<2>("h3"), _T_92) @[CircuitMath.scala 32:10]
    node _T_94 = mux(_T_79, _T_86, _T_93) @[CircuitMath.scala 38:21]
    node _T_95 = cat(_T_79, _T_94) @[Cat.scala 30:58]
    node _T_96 = bits(_T_73, 7, 4) @[CircuitMath.scala 35:17]
    node _T_97 = bits(_T_73, 3, 0) @[CircuitMath.scala 36:17]
    node _T_99 = neq(_T_96, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_100 = bits(_T_96, 3, 3) @[CircuitMath.scala 32:12]
    node _T_102 = bits(_T_96, 2, 2) @[CircuitMath.scala 32:12]
    node _T_104 = bits(_T_96, 1, 1) @[CircuitMath.scala 30:8]
    node _T_105 = mux(_T_102, UInt<2>("h2"), pad(_T_104, 2)) @[CircuitMath.scala 32:10]
    node _T_106 = mux(_T_100, UInt<2>("h3"), _T_105) @[CircuitMath.scala 32:10]
    node _T_107 = bits(_T_97, 3, 3) @[CircuitMath.scala 32:12]
    node _T_109 = bits(_T_97, 2, 2) @[CircuitMath.scala 32:12]
    node _T_111 = bits(_T_97, 1, 1) @[CircuitMath.scala 30:8]
    node _T_112 = mux(_T_109, UInt<2>("h2"), pad(_T_111, 2)) @[CircuitMath.scala 32:10]
    node _T_113 = mux(_T_107, UInt<2>("h3"), _T_112) @[CircuitMath.scala 32:10]
    node _T_114 = mux(_T_99, _T_106, _T_113) @[CircuitMath.scala 38:21]
    node _T_115 = cat(_T_99, _T_114) @[Cat.scala 30:58]
    node _T_116 = mux(_T_75, _T_95, _T_115) @[CircuitMath.scala 38:21]
    node _T_117 = cat(_T_75, _T_116) @[Cat.scala 30:58]
    node _T_118 = mux(_T_25, _T_71, _T_117) @[CircuitMath.scala 38:21]
    node _T_119 = cat(_T_25, _T_118) @[Cat.scala 30:58]
    node _T_120 = bits(_T_19, 31, 16) @[CircuitMath.scala 35:17]
    node _T_121 = bits(_T_19, 15, 0) @[CircuitMath.scala 36:17]
    node _T_123 = neq(_T_120, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_124 = bits(_T_120, 15, 8) @[CircuitMath.scala 35:17]
    node _T_125 = bits(_T_120, 7, 0) @[CircuitMath.scala 36:17]
    node _T_127 = neq(_T_124, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_128 = bits(_T_124, 7, 4) @[CircuitMath.scala 35:17]
    node _T_129 = bits(_T_124, 3, 0) @[CircuitMath.scala 36:17]
    node _T_131 = neq(_T_128, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_132 = bits(_T_128, 3, 3) @[CircuitMath.scala 32:12]
    node _T_134 = bits(_T_128, 2, 2) @[CircuitMath.scala 32:12]
    node _T_136 = bits(_T_128, 1, 1) @[CircuitMath.scala 30:8]
    node _T_137 = mux(_T_134, UInt<2>("h2"), pad(_T_136, 2)) @[CircuitMath.scala 32:10]
    node _T_138 = mux(_T_132, UInt<2>("h3"), _T_137) @[CircuitMath.scala 32:10]
    node _T_139 = bits(_T_129, 3, 3) @[CircuitMath.scala 32:12]
    node _T_141 = bits(_T_129, 2, 2) @[CircuitMath.scala 32:12]
    node _T_143 = bits(_T_129, 1, 1) @[CircuitMath.scala 30:8]
    node _T_144 = mux(_T_141, UInt<2>("h2"), pad(_T_143, 2)) @[CircuitMath.scala 32:10]
    node _T_145 = mux(_T_139, UInt<2>("h3"), _T_144) @[CircuitMath.scala 32:10]
    node _T_146 = mux(_T_131, _T_138, _T_145) @[CircuitMath.scala 38:21]
    node _T_147 = cat(_T_131, _T_146) @[Cat.scala 30:58]
    node _T_148 = bits(_T_125, 7, 4) @[CircuitMath.scala 35:17]
    node _T_149 = bits(_T_125, 3, 0) @[CircuitMath.scala 36:17]
    node _T_151 = neq(_T_148, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_152 = bits(_T_148, 3, 3) @[CircuitMath.scala 32:12]
    node _T_154 = bits(_T_148, 2, 2) @[CircuitMath.scala 32:12]
    node _T_156 = bits(_T_148, 1, 1) @[CircuitMath.scala 30:8]
    node _T_157 = mux(_T_154, UInt<2>("h2"), pad(_T_156, 2)) @[CircuitMath.scala 32:10]
    node _T_158 = mux(_T_152, UInt<2>("h3"), _T_157) @[CircuitMath.scala 32:10]
    node _T_159 = bits(_T_149, 3, 3) @[CircuitMath.scala 32:12]
    node _T_161 = bits(_T_149, 2, 2) @[CircuitMath.scala 32:12]
    node _T_163 = bits(_T_149, 1, 1) @[CircuitMath.scala 30:8]
    node _T_164 = mux(_T_161, UInt<2>("h2"), pad(_T_163, 2)) @[CircuitMath.scala 32:10]
    node _T_165 = mux(_T_159, UInt<2>("h3"), _T_164) @[CircuitMath.scala 32:10]
    node _T_166 = mux(_T_151, _T_158, _T_165) @[CircuitMath.scala 38:21]
    node _T_167 = cat(_T_151, _T_166) @[Cat.scala 30:58]
    node _T_168 = mux(_T_127, _T_147, _T_167) @[CircuitMath.scala 38:21]
    node _T_169 = cat(_T_127, _T_168) @[Cat.scala 30:58]
    node _T_170 = bits(_T_121, 15, 8) @[CircuitMath.scala 35:17]
    node _T_171 = bits(_T_121, 7, 0) @[CircuitMath.scala 36:17]
    node _T_173 = neq(_T_170, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_174 = bits(_T_170, 7, 4) @[CircuitMath.scala 35:17]
    node _T_175 = bits(_T_170, 3, 0) @[CircuitMath.scala 36:17]
    node _T_177 = neq(_T_174, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_178 = bits(_T_174, 3, 3) @[CircuitMath.scala 32:12]
    node _T_180 = bits(_T_174, 2, 2) @[CircuitMath.scala 32:12]
    node _T_182 = bits(_T_174, 1, 1) @[CircuitMath.scala 30:8]
    node _T_183 = mux(_T_180, UInt<2>("h2"), pad(_T_182, 2)) @[CircuitMath.scala 32:10]
    node _T_184 = mux(_T_178, UInt<2>("h3"), _T_183) @[CircuitMath.scala 32:10]
    node _T_185 = bits(_T_175, 3, 3) @[CircuitMath.scala 32:12]
    node _T_187 = bits(_T_175, 2, 2) @[CircuitMath.scala 32:12]
    node _T_189 = bits(_T_175, 1, 1) @[CircuitMath.scala 30:8]
    node _T_190 = mux(_T_187, UInt<2>("h2"), pad(_T_189, 2)) @[CircuitMath.scala 32:10]
    node _T_191 = mux(_T_185, UInt<2>("h3"), _T_190) @[CircuitMath.scala 32:10]
    node _T_192 = mux(_T_177, _T_184, _T_191) @[CircuitMath.scala 38:21]
    node _T_193 = cat(_T_177, _T_192) @[Cat.scala 30:58]
    node _T_194 = bits(_T_171, 7, 4) @[CircuitMath.scala 35:17]
    node _T_195 = bits(_T_171, 3, 0) @[CircuitMath.scala 36:17]
    node _T_197 = neq(_T_194, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_198 = bits(_T_194, 3, 3) @[CircuitMath.scala 32:12]
    node _T_200 = bits(_T_194, 2, 2) @[CircuitMath.scala 32:12]
    node _T_202 = bits(_T_194, 1, 1) @[CircuitMath.scala 30:8]
    node _T_203 = mux(_T_200, UInt<2>("h2"), pad(_T_202, 2)) @[CircuitMath.scala 32:10]
    node _T_204 = mux(_T_198, UInt<2>("h3"), _T_203) @[CircuitMath.scala 32:10]
    node _T_205 = bits(_T_195, 3, 3) @[CircuitMath.scala 32:12]
    node _T_207 = bits(_T_195, 2, 2) @[CircuitMath.scala 32:12]
    node _T_209 = bits(_T_195, 1, 1) @[CircuitMath.scala 30:8]
    node _T_210 = mux(_T_207, UInt<2>("h2"), pad(_T_209, 2)) @[CircuitMath.scala 32:10]
    node _T_211 = mux(_T_205, UInt<2>("h3"), _T_210) @[CircuitMath.scala 32:10]
    node _T_212 = mux(_T_197, _T_204, _T_211) @[CircuitMath.scala 38:21]
    node _T_213 = cat(_T_197, _T_212) @[Cat.scala 30:58]
    node _T_214 = mux(_T_173, _T_193, _T_213) @[CircuitMath.scala 38:21]
    node _T_215 = cat(_T_173, _T_214) @[Cat.scala 30:58]
    node _T_216 = mux(_T_123, _T_169, _T_215) @[CircuitMath.scala 38:21]
    node _T_217 = cat(_T_123, _T_216) @[Cat.scala 30:58]
    node _T_218 = mux(_T_21, _T_119, _T_217) @[CircuitMath.scala 38:21]
    node _T_219 = cat(_T_21, _T_218) @[Cat.scala 30:58]
    node normCount = not(_T_219) @[INToRecFN.scala 57:21]
    node _GEN_0 = pad(absIn, 127) @[INToRecFN.scala 58:27]
    node _T_220 = dshlw(_GEN_0, normCount) @[INToRecFN.scala 58:27]
    node normAbsIn = bits(_T_220, 63, 0) @[INToRecFN.scala 58:39]
    node _T_222 = bits(normAbsIn, 40, 39) @[INToRecFN.scala 63:26]
    node _T_223 = bits(normAbsIn, 38, 0) @[INToRecFN.scala 64:26]
    node _T_225 = neq(_T_223, UInt<39>("h0")) @[INToRecFN.scala 64:55]
    node roundBits = cat(_T_222, _T_225) @[Cat.scala 30:58]
    node _T_226 = bits(roundBits, 1, 0) @[INToRecFN.scala 72:33]
    node roundInexact = neq(_T_226, UInt<2>("h0")) @[INToRecFN.scala 72:40]
    node _T_228 = eq(io_roundingMode, UInt<2>("h0")) @[INToRecFN.scala 74:30]
    node _T_229 = bits(roundBits, 2, 1) @[INToRecFN.scala 75:22]
    node _T_230 = not(_T_229) @[INToRecFN.scala 75:29]
    node _T_232 = eq(_T_230, UInt<2>("h0")) @[INToRecFN.scala 75:29]
    skip
    node _T_234 = not(_T_226) @[INToRecFN.scala 75:53]
    node _T_236 = eq(_T_234, UInt<2>("h0")) @[INToRecFN.scala 75:53]
    node _T_237 = or(_T_232, _T_236) @[INToRecFN.scala 75:34]
    node _T_239 = and(_T_228, _T_237) @[INToRecFN.scala 74:12]
    node _T_240 = eq(io_roundingMode, UInt<2>("h2")) @[INToRecFN.scala 78:30]
    node _T_241 = and(sign, roundInexact) @[INToRecFN.scala 79:18]
    node _T_243 = and(_T_240, _T_241) @[INToRecFN.scala 78:12]
    node _T_244 = or(_T_239, _T_243) @[INToRecFN.scala 77:11]
    node _T_245 = eq(io_roundingMode, UInt<2>("h3")) @[INToRecFN.scala 82:30]
    node _T_247 = not(sign) @[INToRecFN.scala 83:13]
    node _T_248 = and(_T_247, roundInexact) @[INToRecFN.scala 83:20]
    node _T_250 = and(_T_245, _T_248) @[INToRecFN.scala 82:12]
    node round = or(_T_244, _T_250) @[INToRecFN.scala 81:11]
    node _T_252 = bits(normAbsIn, 63, 40) @[INToRecFN.scala 89:34]
    node unroundedNorm = cat(UInt<1>("h0"), _T_252) @[Cat.scala 30:58]
    node _T_255 = add(unroundedNorm, UInt<25>("h1")) @[INToRecFN.scala 94:48]
    node _T_256 = tail(_T_255, 1) @[INToRecFN.scala 94:48]
    node roundedNorm = mux(round, _T_256, unroundedNorm) @[INToRecFN.scala 94:26]
    node _T_257 = not(normCount) @[INToRecFN.scala 97:24]
    skip
    node _T_260 = cat(UInt<1>("h0"), cat(UInt<1>("h0"), _T_257)) @[Cat.scala 30:58]
    node _T_261 = bits(roundedNorm, 24, 24) @[INToRecFN.scala 106:65]
    node _GEN_1 = pad(_T_261, 8) @[INToRecFN.scala 106:52]
    node _T_262 = add(_T_260, _GEN_1) @[INToRecFN.scala 106:52]
    node roundedExp = tail(_T_262, 1) @[INToRecFN.scala 106:52]
    node _T_263 = bits(normAbsIn, 63, 63) @[INToRecFN.scala 112:22]
    skip
    skip
    skip
    skip
    skip
    node _T_267 = bits(roundedNorm, 22, 0) @[INToRecFN.scala 122:44]
    node _T_268 = cat(sign, cat(_T_263, roundedExp)) @[Cat.scala 30:58]
    skip
    node _T_272 = cat(UInt<1>("h0"), roundInexact) @[Cat.scala 30:58]
    skip
    skip
    io_out <= cat(_T_268, _T_267) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(UInt<3>("h0"), _T_272) @[Cat.scala 30:58]

  module INToRecFN_1 :
    input io_signedIn : UInt<1>
    input io_in : UInt<64>
    input io_roundingMode : UInt<2>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>

    node _T_12 = bits(io_in, 63, 63) @[INToRecFN.scala 55:36]
    node sign = and(io_signedIn, _T_12) @[INToRecFN.scala 55:28]
    node _T_14 = sub(UInt<64>("h0"), io_in) @[INToRecFN.scala 56:27]
    skip
    node _T_16 = tail(_T_14, 1) @[INToRecFN.scala 56:27]
    node absIn = mux(sign, _T_16, io_in) @[INToRecFN.scala 56:20]
    skip
    node _T_18 = bits(absIn, 63, 32) @[CircuitMath.scala 35:17]
    node _T_19 = bits(absIn, 31, 0) @[CircuitMath.scala 36:17]
    node _T_21 = neq(_T_18, UInt<32>("h0")) @[CircuitMath.scala 37:22]
    node _T_22 = bits(_T_18, 31, 16) @[CircuitMath.scala 35:17]
    node _T_23 = bits(_T_18, 15, 0) @[CircuitMath.scala 36:17]
    node _T_25 = neq(_T_22, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_26 = bits(_T_22, 15, 8) @[CircuitMath.scala 35:17]
    node _T_27 = bits(_T_22, 7, 0) @[CircuitMath.scala 36:17]
    node _T_29 = neq(_T_26, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_30 = bits(_T_26, 7, 4) @[CircuitMath.scala 35:17]
    node _T_31 = bits(_T_26, 3, 0) @[CircuitMath.scala 36:17]
    node _T_33 = neq(_T_30, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_34 = bits(_T_30, 3, 3) @[CircuitMath.scala 32:12]
    node _T_36 = bits(_T_30, 2, 2) @[CircuitMath.scala 32:12]
    node _T_38 = bits(_T_30, 1, 1) @[CircuitMath.scala 30:8]
    node _T_39 = mux(_T_36, UInt<2>("h2"), pad(_T_38, 2)) @[CircuitMath.scala 32:10]
    node _T_40 = mux(_T_34, UInt<2>("h3"), _T_39) @[CircuitMath.scala 32:10]
    node _T_41 = bits(_T_31, 3, 3) @[CircuitMath.scala 32:12]
    node _T_43 = bits(_T_31, 2, 2) @[CircuitMath.scala 32:12]
    node _T_45 = bits(_T_31, 1, 1) @[CircuitMath.scala 30:8]
    node _T_46 = mux(_T_43, UInt<2>("h2"), pad(_T_45, 2)) @[CircuitMath.scala 32:10]
    node _T_47 = mux(_T_41, UInt<2>("h3"), _T_46) @[CircuitMath.scala 32:10]
    node _T_48 = mux(_T_33, _T_40, _T_47) @[CircuitMath.scala 38:21]
    node _T_49 = cat(_T_33, _T_48) @[Cat.scala 30:58]
    node _T_50 = bits(_T_27, 7, 4) @[CircuitMath.scala 35:17]
    node _T_51 = bits(_T_27, 3, 0) @[CircuitMath.scala 36:17]
    node _T_53 = neq(_T_50, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_54 = bits(_T_50, 3, 3) @[CircuitMath.scala 32:12]
    node _T_56 = bits(_T_50, 2, 2) @[CircuitMath.scala 32:12]
    node _T_58 = bits(_T_50, 1, 1) @[CircuitMath.scala 30:8]
    node _T_59 = mux(_T_56, UInt<2>("h2"), pad(_T_58, 2)) @[CircuitMath.scala 32:10]
    node _T_60 = mux(_T_54, UInt<2>("h3"), _T_59) @[CircuitMath.scala 32:10]
    node _T_61 = bits(_T_51, 3, 3) @[CircuitMath.scala 32:12]
    node _T_63 = bits(_T_51, 2, 2) @[CircuitMath.scala 32:12]
    node _T_65 = bits(_T_51, 1, 1) @[CircuitMath.scala 30:8]
    node _T_66 = mux(_T_63, UInt<2>("h2"), pad(_T_65, 2)) @[CircuitMath.scala 32:10]
    node _T_67 = mux(_T_61, UInt<2>("h3"), _T_66) @[CircuitMath.scala 32:10]
    node _T_68 = mux(_T_53, _T_60, _T_67) @[CircuitMath.scala 38:21]
    node _T_69 = cat(_T_53, _T_68) @[Cat.scala 30:58]
    node _T_70 = mux(_T_29, _T_49, _T_69) @[CircuitMath.scala 38:21]
    node _T_71 = cat(_T_29, _T_70) @[Cat.scala 30:58]
    node _T_72 = bits(_T_23, 15, 8) @[CircuitMath.scala 35:17]
    node _T_73 = bits(_T_23, 7, 0) @[CircuitMath.scala 36:17]
    node _T_75 = neq(_T_72, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_76 = bits(_T_72, 7, 4) @[CircuitMath.scala 35:17]
    node _T_77 = bits(_T_72, 3, 0) @[CircuitMath.scala 36:17]
    node _T_79 = neq(_T_76, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_80 = bits(_T_76, 3, 3) @[CircuitMath.scala 32:12]
    node _T_82 = bits(_T_76, 2, 2) @[CircuitMath.scala 32:12]
    node _T_84 = bits(_T_76, 1, 1) @[CircuitMath.scala 30:8]
    node _T_85 = mux(_T_82, UInt<2>("h2"), pad(_T_84, 2)) @[CircuitMath.scala 32:10]
    node _T_86 = mux(_T_80, UInt<2>("h3"), _T_85) @[CircuitMath.scala 32:10]
    node _T_87 = bits(_T_77, 3, 3) @[CircuitMath.scala 32:12]
    node _T_89 = bits(_T_77, 2, 2) @[CircuitMath.scala 32:12]
    node _T_91 = bits(_T_77, 1, 1) @[CircuitMath.scala 30:8]
    node _T_92 = mux(_T_89, UInt<2>("h2"), pad(_T_91, 2)) @[CircuitMath.scala 32:10]
    node _T_93 = mux(_T_87, UInt<2>("h3"), _T_92) @[CircuitMath.scala 32:10]
    node _T_94 = mux(_T_79, _T_86, _T_93) @[CircuitMath.scala 38:21]
    node _T_95 = cat(_T_79, _T_94) @[Cat.scala 30:58]
    node _T_96 = bits(_T_73, 7, 4) @[CircuitMath.scala 35:17]
    node _T_97 = bits(_T_73, 3, 0) @[CircuitMath.scala 36:17]
    node _T_99 = neq(_T_96, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_100 = bits(_T_96, 3, 3) @[CircuitMath.scala 32:12]
    node _T_102 = bits(_T_96, 2, 2) @[CircuitMath.scala 32:12]
    node _T_104 = bits(_T_96, 1, 1) @[CircuitMath.scala 30:8]
    node _T_105 = mux(_T_102, UInt<2>("h2"), pad(_T_104, 2)) @[CircuitMath.scala 32:10]
    node _T_106 = mux(_T_100, UInt<2>("h3"), _T_105) @[CircuitMath.scala 32:10]
    node _T_107 = bits(_T_97, 3, 3) @[CircuitMath.scala 32:12]
    node _T_109 = bits(_T_97, 2, 2) @[CircuitMath.scala 32:12]
    node _T_111 = bits(_T_97, 1, 1) @[CircuitMath.scala 30:8]
    node _T_112 = mux(_T_109, UInt<2>("h2"), pad(_T_111, 2)) @[CircuitMath.scala 32:10]
    node _T_113 = mux(_T_107, UInt<2>("h3"), _T_112) @[CircuitMath.scala 32:10]
    node _T_114 = mux(_T_99, _T_106, _T_113) @[CircuitMath.scala 38:21]
    node _T_115 = cat(_T_99, _T_114) @[Cat.scala 30:58]
    node _T_116 = mux(_T_75, _T_95, _T_115) @[CircuitMath.scala 38:21]
    node _T_117 = cat(_T_75, _T_116) @[Cat.scala 30:58]
    node _T_118 = mux(_T_25, _T_71, _T_117) @[CircuitMath.scala 38:21]
    node _T_119 = cat(_T_25, _T_118) @[Cat.scala 30:58]
    node _T_120 = bits(_T_19, 31, 16) @[CircuitMath.scala 35:17]
    node _T_121 = bits(_T_19, 15, 0) @[CircuitMath.scala 36:17]
    node _T_123 = neq(_T_120, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_124 = bits(_T_120, 15, 8) @[CircuitMath.scala 35:17]
    node _T_125 = bits(_T_120, 7, 0) @[CircuitMath.scala 36:17]
    node _T_127 = neq(_T_124, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_128 = bits(_T_124, 7, 4) @[CircuitMath.scala 35:17]
    node _T_129 = bits(_T_124, 3, 0) @[CircuitMath.scala 36:17]
    node _T_131 = neq(_T_128, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_132 = bits(_T_128, 3, 3) @[CircuitMath.scala 32:12]
    node _T_134 = bits(_T_128, 2, 2) @[CircuitMath.scala 32:12]
    node _T_136 = bits(_T_128, 1, 1) @[CircuitMath.scala 30:8]
    node _T_137 = mux(_T_134, UInt<2>("h2"), pad(_T_136, 2)) @[CircuitMath.scala 32:10]
    node _T_138 = mux(_T_132, UInt<2>("h3"), _T_137) @[CircuitMath.scala 32:10]
    node _T_139 = bits(_T_129, 3, 3) @[CircuitMath.scala 32:12]
    node _T_141 = bits(_T_129, 2, 2) @[CircuitMath.scala 32:12]
    node _T_143 = bits(_T_129, 1, 1) @[CircuitMath.scala 30:8]
    node _T_144 = mux(_T_141, UInt<2>("h2"), pad(_T_143, 2)) @[CircuitMath.scala 32:10]
    node _T_145 = mux(_T_139, UInt<2>("h3"), _T_144) @[CircuitMath.scala 32:10]
    node _T_146 = mux(_T_131, _T_138, _T_145) @[CircuitMath.scala 38:21]
    node _T_147 = cat(_T_131, _T_146) @[Cat.scala 30:58]
    node _T_148 = bits(_T_125, 7, 4) @[CircuitMath.scala 35:17]
    node _T_149 = bits(_T_125, 3, 0) @[CircuitMath.scala 36:17]
    node _T_151 = neq(_T_148, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_152 = bits(_T_148, 3, 3) @[CircuitMath.scala 32:12]
    node _T_154 = bits(_T_148, 2, 2) @[CircuitMath.scala 32:12]
    node _T_156 = bits(_T_148, 1, 1) @[CircuitMath.scala 30:8]
    node _T_157 = mux(_T_154, UInt<2>("h2"), pad(_T_156, 2)) @[CircuitMath.scala 32:10]
    node _T_158 = mux(_T_152, UInt<2>("h3"), _T_157) @[CircuitMath.scala 32:10]
    node _T_159 = bits(_T_149, 3, 3) @[CircuitMath.scala 32:12]
    node _T_161 = bits(_T_149, 2, 2) @[CircuitMath.scala 32:12]
    node _T_163 = bits(_T_149, 1, 1) @[CircuitMath.scala 30:8]
    node _T_164 = mux(_T_161, UInt<2>("h2"), pad(_T_163, 2)) @[CircuitMath.scala 32:10]
    node _T_165 = mux(_T_159, UInt<2>("h3"), _T_164) @[CircuitMath.scala 32:10]
    node _T_166 = mux(_T_151, _T_158, _T_165) @[CircuitMath.scala 38:21]
    node _T_167 = cat(_T_151, _T_166) @[Cat.scala 30:58]
    node _T_168 = mux(_T_127, _T_147, _T_167) @[CircuitMath.scala 38:21]
    node _T_169 = cat(_T_127, _T_168) @[Cat.scala 30:58]
    node _T_170 = bits(_T_121, 15, 8) @[CircuitMath.scala 35:17]
    node _T_171 = bits(_T_121, 7, 0) @[CircuitMath.scala 36:17]
    node _T_173 = neq(_T_170, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_174 = bits(_T_170, 7, 4) @[CircuitMath.scala 35:17]
    node _T_175 = bits(_T_170, 3, 0) @[CircuitMath.scala 36:17]
    node _T_177 = neq(_T_174, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_178 = bits(_T_174, 3, 3) @[CircuitMath.scala 32:12]
    node _T_180 = bits(_T_174, 2, 2) @[CircuitMath.scala 32:12]
    node _T_182 = bits(_T_174, 1, 1) @[CircuitMath.scala 30:8]
    node _T_183 = mux(_T_180, UInt<2>("h2"), pad(_T_182, 2)) @[CircuitMath.scala 32:10]
    node _T_184 = mux(_T_178, UInt<2>("h3"), _T_183) @[CircuitMath.scala 32:10]
    node _T_185 = bits(_T_175, 3, 3) @[CircuitMath.scala 32:12]
    node _T_187 = bits(_T_175, 2, 2) @[CircuitMath.scala 32:12]
    node _T_189 = bits(_T_175, 1, 1) @[CircuitMath.scala 30:8]
    node _T_190 = mux(_T_187, UInt<2>("h2"), pad(_T_189, 2)) @[CircuitMath.scala 32:10]
    node _T_191 = mux(_T_185, UInt<2>("h3"), _T_190) @[CircuitMath.scala 32:10]
    node _T_192 = mux(_T_177, _T_184, _T_191) @[CircuitMath.scala 38:21]
    node _T_193 = cat(_T_177, _T_192) @[Cat.scala 30:58]
    node _T_194 = bits(_T_171, 7, 4) @[CircuitMath.scala 35:17]
    node _T_195 = bits(_T_171, 3, 0) @[CircuitMath.scala 36:17]
    node _T_197 = neq(_T_194, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_198 = bits(_T_194, 3, 3) @[CircuitMath.scala 32:12]
    node _T_200 = bits(_T_194, 2, 2) @[CircuitMath.scala 32:12]
    node _T_202 = bits(_T_194, 1, 1) @[CircuitMath.scala 30:8]
    node _T_203 = mux(_T_200, UInt<2>("h2"), pad(_T_202, 2)) @[CircuitMath.scala 32:10]
    node _T_204 = mux(_T_198, UInt<2>("h3"), _T_203) @[CircuitMath.scala 32:10]
    node _T_205 = bits(_T_195, 3, 3) @[CircuitMath.scala 32:12]
    node _T_207 = bits(_T_195, 2, 2) @[CircuitMath.scala 32:12]
    node _T_209 = bits(_T_195, 1, 1) @[CircuitMath.scala 30:8]
    node _T_210 = mux(_T_207, UInt<2>("h2"), pad(_T_209, 2)) @[CircuitMath.scala 32:10]
    node _T_211 = mux(_T_205, UInt<2>("h3"), _T_210) @[CircuitMath.scala 32:10]
    node _T_212 = mux(_T_197, _T_204, _T_211) @[CircuitMath.scala 38:21]
    node _T_213 = cat(_T_197, _T_212) @[Cat.scala 30:58]
    node _T_214 = mux(_T_173, _T_193, _T_213) @[CircuitMath.scala 38:21]
    node _T_215 = cat(_T_173, _T_214) @[Cat.scala 30:58]
    node _T_216 = mux(_T_123, _T_169, _T_215) @[CircuitMath.scala 38:21]
    node _T_217 = cat(_T_123, _T_216) @[Cat.scala 30:58]
    node _T_218 = mux(_T_21, _T_119, _T_217) @[CircuitMath.scala 38:21]
    node _T_219 = cat(_T_21, _T_218) @[Cat.scala 30:58]
    node normCount = not(_T_219) @[INToRecFN.scala 57:21]
    node _GEN_0 = pad(absIn, 127) @[INToRecFN.scala 58:27]
    node _T_220 = dshlw(_GEN_0, normCount) @[INToRecFN.scala 58:27]
    node normAbsIn = bits(_T_220, 63, 0) @[INToRecFN.scala 58:39]
    node _T_222 = bits(normAbsIn, 11, 10) @[INToRecFN.scala 63:26]
    node _T_223 = bits(normAbsIn, 9, 0) @[INToRecFN.scala 64:26]
    node _T_225 = neq(_T_223, UInt<10>("h0")) @[INToRecFN.scala 64:55]
    node roundBits = cat(_T_222, _T_225) @[Cat.scala 30:58]
    node _T_226 = bits(roundBits, 1, 0) @[INToRecFN.scala 72:33]
    node roundInexact = neq(_T_226, UInt<2>("h0")) @[INToRecFN.scala 72:40]
    node _T_228 = eq(io_roundingMode, UInt<2>("h0")) @[INToRecFN.scala 74:30]
    node _T_229 = bits(roundBits, 2, 1) @[INToRecFN.scala 75:22]
    node _T_230 = not(_T_229) @[INToRecFN.scala 75:29]
    node _T_232 = eq(_T_230, UInt<2>("h0")) @[INToRecFN.scala 75:29]
    skip
    node _T_234 = not(_T_226) @[INToRecFN.scala 75:53]
    node _T_236 = eq(_T_234, UInt<2>("h0")) @[INToRecFN.scala 75:53]
    node _T_237 = or(_T_232, _T_236) @[INToRecFN.scala 75:34]
    node _T_239 = and(_T_228, _T_237) @[INToRecFN.scala 74:12]
    node _T_240 = eq(io_roundingMode, UInt<2>("h2")) @[INToRecFN.scala 78:30]
    node _T_241 = and(sign, roundInexact) @[INToRecFN.scala 79:18]
    node _T_243 = and(_T_240, _T_241) @[INToRecFN.scala 78:12]
    node _T_244 = or(_T_239, _T_243) @[INToRecFN.scala 77:11]
    node _T_245 = eq(io_roundingMode, UInt<2>("h3")) @[INToRecFN.scala 82:30]
    node _T_247 = not(sign) @[INToRecFN.scala 83:13]
    node _T_248 = and(_T_247, roundInexact) @[INToRecFN.scala 83:20]
    node _T_250 = and(_T_245, _T_248) @[INToRecFN.scala 82:12]
    node round = or(_T_244, _T_250) @[INToRecFN.scala 81:11]
    node _T_252 = bits(normAbsIn, 63, 11) @[INToRecFN.scala 89:34]
    node unroundedNorm = cat(UInt<1>("h0"), _T_252) @[Cat.scala 30:58]
    node _T_255 = add(unroundedNorm, UInt<54>("h1")) @[INToRecFN.scala 94:48]
    node _T_256 = tail(_T_255, 1) @[INToRecFN.scala 94:48]
    node roundedNorm = mux(round, _T_256, unroundedNorm) @[INToRecFN.scala 94:26]
    node _T_257 = not(normCount) @[INToRecFN.scala 97:24]
    skip
    node _T_260 = cat(UInt<1>("h0"), cat(UInt<4>("h0"), _T_257)) @[Cat.scala 30:58]
    node _T_261 = bits(roundedNorm, 53, 53) @[INToRecFN.scala 106:65]
    node _GEN_1 = pad(_T_261, 11) @[INToRecFN.scala 106:52]
    node _T_262 = add(_T_260, _GEN_1) @[INToRecFN.scala 106:52]
    node roundedExp = tail(_T_262, 1) @[INToRecFN.scala 106:52]
    node _T_263 = bits(normAbsIn, 63, 63) @[INToRecFN.scala 112:22]
    skip
    skip
    skip
    skip
    skip
    node _T_267 = bits(roundedNorm, 51, 0) @[INToRecFN.scala 122:44]
    node _T_268 = cat(sign, cat(_T_263, roundedExp)) @[Cat.scala 30:58]
    skip
    node _T_272 = cat(UInt<1>("h0"), roundInexact) @[Cat.scala 30:58]
    skip
    skip
    io_out <= cat(_T_268, _T_267) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(UInt<3>("h0"), _T_272) @[Cat.scala 30:58]

  module IntToFP :
    input clock : Clock
    input reset : UInt<1>
    input io_in_valid : UInt<1>
    input io_in_bits_cmd : UInt<5>
    input io_in_bits_single : UInt<1>
    input io_in_bits_rm : UInt<3>
    input io_in_bits_typ : UInt<2>
    input io_in_bits_in1 : UInt<65>
    output io_out_bits_data : UInt<65>
    output io_out_bits_exc : UInt<5>

    inst INToRecFN of INToRecFN @[FPU.scala 381:21]
    inst INToRecFN_1 of INToRecFN_1 @[FPU.scala 391:25]
    reg in_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), in_valid) @[Valid.scala 47:18]
    reg in_bits_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), in_bits_cmd) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_bits_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), in_bits_single) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_bits_rm : UInt<3>, clock with :
      reset => (UInt<1>("h0"), in_bits_rm) @[Reg.scala 34:16]
    reg in_bits_typ : UInt<2>, clock with :
      reset => (UInt<1>("h0"), in_bits_typ) @[Reg.scala 34:16]
    reg in_bits_in1 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_bits_in1) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_276 = bits(in_bits_in1, 31, 31) @[recFNFromFN.scala 47:22]
    node _T_277 = bits(in_bits_in1, 30, 23) @[recFNFromFN.scala 48:23]
    node _T_278 = bits(in_bits_in1, 22, 0) @[recFNFromFN.scala 49:25]
    node _T_280 = eq(_T_277, UInt<8>("h0")) @[recFNFromFN.scala 51:34]
    node _T_282 = eq(_T_278, UInt<23>("h0")) @[recFNFromFN.scala 52:38]
    node _T_283 = and(_T_280, _T_282) @[recFNFromFN.scala 53:34]
    node _T_284 = shl(_T_278, 9) @[recFNFromFN.scala 56:26]
    node _T_285 = bits(_T_284, 31, 16) @[CircuitMath.scala 35:17]
    node _T_286 = bits(_T_284, 15, 0) @[CircuitMath.scala 36:17]
    node _T_288 = neq(_T_285, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_289 = bits(_T_285, 15, 8) @[CircuitMath.scala 35:17]
    node _T_290 = bits(_T_285, 7, 0) @[CircuitMath.scala 36:17]
    node _T_292 = neq(_T_289, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_293 = bits(_T_289, 7, 4) @[CircuitMath.scala 35:17]
    node _T_294 = bits(_T_289, 3, 0) @[CircuitMath.scala 36:17]
    node _T_296 = neq(_T_293, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_297 = bits(_T_293, 3, 3) @[CircuitMath.scala 32:12]
    node _T_299 = bits(_T_293, 2, 2) @[CircuitMath.scala 32:12]
    node _T_301 = bits(_T_293, 1, 1) @[CircuitMath.scala 30:8]
    node _T_302 = mux(_T_299, UInt<2>("h2"), pad(_T_301, 2)) @[CircuitMath.scala 32:10]
    node _T_303 = mux(_T_297, UInt<2>("h3"), _T_302) @[CircuitMath.scala 32:10]
    node _T_304 = bits(_T_294, 3, 3) @[CircuitMath.scala 32:12]
    node _T_306 = bits(_T_294, 2, 2) @[CircuitMath.scala 32:12]
    node _T_308 = bits(_T_294, 1, 1) @[CircuitMath.scala 30:8]
    node _T_309 = mux(_T_306, UInt<2>("h2"), pad(_T_308, 2)) @[CircuitMath.scala 32:10]
    node _T_310 = mux(_T_304, UInt<2>("h3"), _T_309) @[CircuitMath.scala 32:10]
    node _T_311 = mux(_T_296, _T_303, _T_310) @[CircuitMath.scala 38:21]
    node _T_312 = cat(_T_296, _T_311) @[Cat.scala 30:58]
    node _T_313 = bits(_T_290, 7, 4) @[CircuitMath.scala 35:17]
    node _T_314 = bits(_T_290, 3, 0) @[CircuitMath.scala 36:17]
    node _T_316 = neq(_T_313, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_317 = bits(_T_313, 3, 3) @[CircuitMath.scala 32:12]
    node _T_319 = bits(_T_313, 2, 2) @[CircuitMath.scala 32:12]
    node _T_321 = bits(_T_313, 1, 1) @[CircuitMath.scala 30:8]
    node _T_322 = mux(_T_319, UInt<2>("h2"), pad(_T_321, 2)) @[CircuitMath.scala 32:10]
    node _T_323 = mux(_T_317, UInt<2>("h3"), _T_322) @[CircuitMath.scala 32:10]
    node _T_324 = bits(_T_314, 3, 3) @[CircuitMath.scala 32:12]
    node _T_326 = bits(_T_314, 2, 2) @[CircuitMath.scala 32:12]
    node _T_328 = bits(_T_314, 1, 1) @[CircuitMath.scala 30:8]
    node _T_329 = mux(_T_326, UInt<2>("h2"), pad(_T_328, 2)) @[CircuitMath.scala 32:10]
    node _T_330 = mux(_T_324, UInt<2>("h3"), _T_329) @[CircuitMath.scala 32:10]
    node _T_331 = mux(_T_316, _T_323, _T_330) @[CircuitMath.scala 38:21]
    node _T_332 = cat(_T_316, _T_331) @[Cat.scala 30:58]
    node _T_333 = mux(_T_292, _T_312, _T_332) @[CircuitMath.scala 38:21]
    node _T_334 = cat(_T_292, _T_333) @[Cat.scala 30:58]
    node _T_335 = bits(_T_286, 15, 8) @[CircuitMath.scala 35:17]
    node _T_336 = bits(_T_286, 7, 0) @[CircuitMath.scala 36:17]
    node _T_338 = neq(_T_335, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_339 = bits(_T_335, 7, 4) @[CircuitMath.scala 35:17]
    node _T_340 = bits(_T_335, 3, 0) @[CircuitMath.scala 36:17]
    node _T_342 = neq(_T_339, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_343 = bits(_T_339, 3, 3) @[CircuitMath.scala 32:12]
    node _T_345 = bits(_T_339, 2, 2) @[CircuitMath.scala 32:12]
    node _T_347 = bits(_T_339, 1, 1) @[CircuitMath.scala 30:8]
    node _T_348 = mux(_T_345, UInt<2>("h2"), pad(_T_347, 2)) @[CircuitMath.scala 32:10]
    node _T_349 = mux(_T_343, UInt<2>("h3"), _T_348) @[CircuitMath.scala 32:10]
    node _T_350 = bits(_T_340, 3, 3) @[CircuitMath.scala 32:12]
    node _T_352 = bits(_T_340, 2, 2) @[CircuitMath.scala 32:12]
    node _T_354 = bits(_T_340, 1, 1) @[CircuitMath.scala 30:8]
    node _T_355 = mux(_T_352, UInt<2>("h2"), pad(_T_354, 2)) @[CircuitMath.scala 32:10]
    node _T_356 = mux(_T_350, UInt<2>("h3"), _T_355) @[CircuitMath.scala 32:10]
    node _T_357 = mux(_T_342, _T_349, _T_356) @[CircuitMath.scala 38:21]
    node _T_358 = cat(_T_342, _T_357) @[Cat.scala 30:58]
    node _T_359 = bits(_T_336, 7, 4) @[CircuitMath.scala 35:17]
    node _T_360 = bits(_T_336, 3, 0) @[CircuitMath.scala 36:17]
    node _T_362 = neq(_T_359, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_363 = bits(_T_359, 3, 3) @[CircuitMath.scala 32:12]
    node _T_365 = bits(_T_359, 2, 2) @[CircuitMath.scala 32:12]
    node _T_367 = bits(_T_359, 1, 1) @[CircuitMath.scala 30:8]
    node _T_368 = mux(_T_365, UInt<2>("h2"), pad(_T_367, 2)) @[CircuitMath.scala 32:10]
    node _T_369 = mux(_T_363, UInt<2>("h3"), _T_368) @[CircuitMath.scala 32:10]
    node _T_370 = bits(_T_360, 3, 3) @[CircuitMath.scala 32:12]
    node _T_372 = bits(_T_360, 2, 2) @[CircuitMath.scala 32:12]
    node _T_374 = bits(_T_360, 1, 1) @[CircuitMath.scala 30:8]
    node _T_375 = mux(_T_372, UInt<2>("h2"), pad(_T_374, 2)) @[CircuitMath.scala 32:10]
    node _T_376 = mux(_T_370, UInt<2>("h3"), _T_375) @[CircuitMath.scala 32:10]
    node _T_377 = mux(_T_362, _T_369, _T_376) @[CircuitMath.scala 38:21]
    node _T_378 = cat(_T_362, _T_377) @[Cat.scala 30:58]
    node _T_379 = mux(_T_338, _T_358, _T_378) @[CircuitMath.scala 38:21]
    node _T_380 = cat(_T_338, _T_379) @[Cat.scala 30:58]
    node _T_381 = mux(_T_288, _T_334, _T_380) @[CircuitMath.scala 38:21]
    node _T_382 = cat(_T_288, _T_381) @[Cat.scala 30:58]
    node _T_383 = not(_T_382) @[recFNFromFN.scala 56:13]
    node _GEN_29 = pad(_T_278, 54) @[recFNFromFN.scala 58:25]
    node _T_384 = dshlw(_GEN_29, _T_383) @[recFNFromFN.scala 58:25]
    node _T_385 = bits(_T_384, 21, 0) @[recFNFromFN.scala 58:37]
    node _T_387 = cat(_T_385, UInt<1>("h0")) @[Cat.scala 30:58]
    skip
    node _GEN_30 = pad(_T_383, 9) @[recFNFromFN.scala 62:27]
    node _T_393 = xor(_GEN_30, UInt<9>("h1ff")) @[recFNFromFN.scala 62:27]
    node _T_394 = mux(_T_280, _T_393, pad(_T_277, 9)) @[recFNFromFN.scala 61:16]
    node _T_398 = mux(_T_280, UInt<2>("h2"), UInt<2>("h1")) @[recFNFromFN.scala 64:47]
    node _GEN_31 = pad(_T_398, 8) @[recFNFromFN.scala 64:42]
    node _T_399 = or(UInt<8>("h80"), _GEN_31) @[recFNFromFN.scala 64:42]
    node _GEN_32 = pad(_T_399, 9) @[recFNFromFN.scala 64:15]
    node _T_400 = add(_T_394, _GEN_32) @[recFNFromFN.scala 64:15]
    node _T_401 = tail(_T_400, 1) @[recFNFromFN.scala 64:15]
    node _T_402 = bits(_T_401, 8, 7) @[recFNFromFN.scala 67:25]
    node _T_404 = eq(_T_402, UInt<2>("h3")) @[recFNFromFN.scala 67:50]
    node _T_406 = not(_T_282) @[recFNFromFN.scala 68:17]
    node _T_407 = and(_T_404, _T_406) @[recFNFromFN.scala 67:63]
    skip
    node _T_411 = mux(_T_283, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_412 = shl(_T_411, 6) @[recFNFromFN.scala 71:45]
    node _T_413 = not(_T_412) @[recFNFromFN.scala 71:28]
    node _T_414 = and(_T_401, _T_413) @[recFNFromFN.scala 71:26]
    node _T_415 = shl(_T_407, 6) @[recFNFromFN.scala 72:22]
    node _GEN_33 = pad(_T_415, 9) @[recFNFromFN.scala 71:64]
    node _T_416 = or(_T_414, _GEN_33) @[recFNFromFN.scala 71:64]
    node _T_417 = mux(_T_280, _T_387, _T_278) @[recFNFromFN.scala 73:27]
    skip
    node _T_419 = cat(cat(_T_276, _T_416), _T_417) @[Cat.scala 30:58]
    skip
    node _T_421 = not(in_bits_single) @[FPU.scala 363:24]
    node _T_422 = bits(in_bits_in1, 63, 63) @[recFNFromFN.scala 47:22]
    node _T_423 = bits(in_bits_in1, 62, 52) @[recFNFromFN.scala 48:23]
    node _T_424 = bits(in_bits_in1, 51, 0) @[recFNFromFN.scala 49:25]
    node _T_426 = eq(_T_423, UInt<11>("h0")) @[recFNFromFN.scala 51:34]
    node _T_428 = eq(_T_424, UInt<52>("h0")) @[recFNFromFN.scala 52:38]
    node _T_429 = and(_T_426, _T_428) @[recFNFromFN.scala 53:34]
    node _T_430 = shl(_T_424, 12) @[recFNFromFN.scala 56:26]
    node _T_431 = bits(_T_430, 63, 32) @[CircuitMath.scala 35:17]
    node _T_432 = bits(_T_430, 31, 0) @[CircuitMath.scala 36:17]
    node _T_434 = neq(_T_431, UInt<32>("h0")) @[CircuitMath.scala 37:22]
    node _T_435 = bits(_T_431, 31, 16) @[CircuitMath.scala 35:17]
    node _T_436 = bits(_T_431, 15, 0) @[CircuitMath.scala 36:17]
    node _T_438 = neq(_T_435, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_439 = bits(_T_435, 15, 8) @[CircuitMath.scala 35:17]
    node _T_440 = bits(_T_435, 7, 0) @[CircuitMath.scala 36:17]
    node _T_442 = neq(_T_439, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_443 = bits(_T_439, 7, 4) @[CircuitMath.scala 35:17]
    node _T_444 = bits(_T_439, 3, 0) @[CircuitMath.scala 36:17]
    node _T_446 = neq(_T_443, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_447 = bits(_T_443, 3, 3) @[CircuitMath.scala 32:12]
    node _T_449 = bits(_T_443, 2, 2) @[CircuitMath.scala 32:12]
    node _T_451 = bits(_T_443, 1, 1) @[CircuitMath.scala 30:8]
    node _T_452 = mux(_T_449, UInt<2>("h2"), pad(_T_451, 2)) @[CircuitMath.scala 32:10]
    node _T_453 = mux(_T_447, UInt<2>("h3"), _T_452) @[CircuitMath.scala 32:10]
    node _T_454 = bits(_T_444, 3, 3) @[CircuitMath.scala 32:12]
    node _T_456 = bits(_T_444, 2, 2) @[CircuitMath.scala 32:12]
    node _T_458 = bits(_T_444, 1, 1) @[CircuitMath.scala 30:8]
    node _T_459 = mux(_T_456, UInt<2>("h2"), pad(_T_458, 2)) @[CircuitMath.scala 32:10]
    node _T_460 = mux(_T_454, UInt<2>("h3"), _T_459) @[CircuitMath.scala 32:10]
    node _T_461 = mux(_T_446, _T_453, _T_460) @[CircuitMath.scala 38:21]
    node _T_462 = cat(_T_446, _T_461) @[Cat.scala 30:58]
    node _T_463 = bits(_T_440, 7, 4) @[CircuitMath.scala 35:17]
    node _T_464 = bits(_T_440, 3, 0) @[CircuitMath.scala 36:17]
    node _T_466 = neq(_T_463, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_467 = bits(_T_463, 3, 3) @[CircuitMath.scala 32:12]
    node _T_469 = bits(_T_463, 2, 2) @[CircuitMath.scala 32:12]
    node _T_471 = bits(_T_463, 1, 1) @[CircuitMath.scala 30:8]
    node _T_472 = mux(_T_469, UInt<2>("h2"), pad(_T_471, 2)) @[CircuitMath.scala 32:10]
    node _T_473 = mux(_T_467, UInt<2>("h3"), _T_472) @[CircuitMath.scala 32:10]
    node _T_474 = bits(_T_464, 3, 3) @[CircuitMath.scala 32:12]
    node _T_476 = bits(_T_464, 2, 2) @[CircuitMath.scala 32:12]
    node _T_478 = bits(_T_464, 1, 1) @[CircuitMath.scala 30:8]
    node _T_479 = mux(_T_476, UInt<2>("h2"), pad(_T_478, 2)) @[CircuitMath.scala 32:10]
    node _T_480 = mux(_T_474, UInt<2>("h3"), _T_479) @[CircuitMath.scala 32:10]
    node _T_481 = mux(_T_466, _T_473, _T_480) @[CircuitMath.scala 38:21]
    node _T_482 = cat(_T_466, _T_481) @[Cat.scala 30:58]
    node _T_483 = mux(_T_442, _T_462, _T_482) @[CircuitMath.scala 38:21]
    node _T_484 = cat(_T_442, _T_483) @[Cat.scala 30:58]
    node _T_485 = bits(_T_436, 15, 8) @[CircuitMath.scala 35:17]
    node _T_486 = bits(_T_436, 7, 0) @[CircuitMath.scala 36:17]
    node _T_488 = neq(_T_485, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_489 = bits(_T_485, 7, 4) @[CircuitMath.scala 35:17]
    node _T_490 = bits(_T_485, 3, 0) @[CircuitMath.scala 36:17]
    node _T_492 = neq(_T_489, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_493 = bits(_T_489, 3, 3) @[CircuitMath.scala 32:12]
    node _T_495 = bits(_T_489, 2, 2) @[CircuitMath.scala 32:12]
    node _T_497 = bits(_T_489, 1, 1) @[CircuitMath.scala 30:8]
    node _T_498 = mux(_T_495, UInt<2>("h2"), pad(_T_497, 2)) @[CircuitMath.scala 32:10]
    node _T_499 = mux(_T_493, UInt<2>("h3"), _T_498) @[CircuitMath.scala 32:10]
    node _T_500 = bits(_T_490, 3, 3) @[CircuitMath.scala 32:12]
    node _T_502 = bits(_T_490, 2, 2) @[CircuitMath.scala 32:12]
    node _T_504 = bits(_T_490, 1, 1) @[CircuitMath.scala 30:8]
    node _T_505 = mux(_T_502, UInt<2>("h2"), pad(_T_504, 2)) @[CircuitMath.scala 32:10]
    node _T_506 = mux(_T_500, UInt<2>("h3"), _T_505) @[CircuitMath.scala 32:10]
    node _T_507 = mux(_T_492, _T_499, _T_506) @[CircuitMath.scala 38:21]
    node _T_508 = cat(_T_492, _T_507) @[Cat.scala 30:58]
    node _T_509 = bits(_T_486, 7, 4) @[CircuitMath.scala 35:17]
    node _T_510 = bits(_T_486, 3, 0) @[CircuitMath.scala 36:17]
    node _T_512 = neq(_T_509, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_513 = bits(_T_509, 3, 3) @[CircuitMath.scala 32:12]
    node _T_515 = bits(_T_509, 2, 2) @[CircuitMath.scala 32:12]
    node _T_517 = bits(_T_509, 1, 1) @[CircuitMath.scala 30:8]
    node _T_518 = mux(_T_515, UInt<2>("h2"), pad(_T_517, 2)) @[CircuitMath.scala 32:10]
    node _T_519 = mux(_T_513, UInt<2>("h3"), _T_518) @[CircuitMath.scala 32:10]
    node _T_520 = bits(_T_510, 3, 3) @[CircuitMath.scala 32:12]
    node _T_522 = bits(_T_510, 2, 2) @[CircuitMath.scala 32:12]
    node _T_524 = bits(_T_510, 1, 1) @[CircuitMath.scala 30:8]
    node _T_525 = mux(_T_522, UInt<2>("h2"), pad(_T_524, 2)) @[CircuitMath.scala 32:10]
    node _T_526 = mux(_T_520, UInt<2>("h3"), _T_525) @[CircuitMath.scala 32:10]
    node _T_527 = mux(_T_512, _T_519, _T_526) @[CircuitMath.scala 38:21]
    node _T_528 = cat(_T_512, _T_527) @[Cat.scala 30:58]
    node _T_529 = mux(_T_488, _T_508, _T_528) @[CircuitMath.scala 38:21]
    node _T_530 = cat(_T_488, _T_529) @[Cat.scala 30:58]
    node _T_531 = mux(_T_438, _T_484, _T_530) @[CircuitMath.scala 38:21]
    node _T_532 = cat(_T_438, _T_531) @[Cat.scala 30:58]
    node _T_533 = bits(_T_432, 31, 16) @[CircuitMath.scala 35:17]
    node _T_534 = bits(_T_432, 15, 0) @[CircuitMath.scala 36:17]
    node _T_536 = neq(_T_533, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_537 = bits(_T_533, 15, 8) @[CircuitMath.scala 35:17]
    node _T_538 = bits(_T_533, 7, 0) @[CircuitMath.scala 36:17]
    node _T_540 = neq(_T_537, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_541 = bits(_T_537, 7, 4) @[CircuitMath.scala 35:17]
    node _T_542 = bits(_T_537, 3, 0) @[CircuitMath.scala 36:17]
    node _T_544 = neq(_T_541, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_545 = bits(_T_541, 3, 3) @[CircuitMath.scala 32:12]
    node _T_547 = bits(_T_541, 2, 2) @[CircuitMath.scala 32:12]
    node _T_549 = bits(_T_541, 1, 1) @[CircuitMath.scala 30:8]
    node _T_550 = mux(_T_547, UInt<2>("h2"), pad(_T_549, 2)) @[CircuitMath.scala 32:10]
    node _T_551 = mux(_T_545, UInt<2>("h3"), _T_550) @[CircuitMath.scala 32:10]
    node _T_552 = bits(_T_542, 3, 3) @[CircuitMath.scala 32:12]
    node _T_554 = bits(_T_542, 2, 2) @[CircuitMath.scala 32:12]
    node _T_556 = bits(_T_542, 1, 1) @[CircuitMath.scala 30:8]
    node _T_557 = mux(_T_554, UInt<2>("h2"), pad(_T_556, 2)) @[CircuitMath.scala 32:10]
    node _T_558 = mux(_T_552, UInt<2>("h3"), _T_557) @[CircuitMath.scala 32:10]
    node _T_559 = mux(_T_544, _T_551, _T_558) @[CircuitMath.scala 38:21]
    node _T_560 = cat(_T_544, _T_559) @[Cat.scala 30:58]
    node _T_561 = bits(_T_538, 7, 4) @[CircuitMath.scala 35:17]
    node _T_562 = bits(_T_538, 3, 0) @[CircuitMath.scala 36:17]
    node _T_564 = neq(_T_561, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_565 = bits(_T_561, 3, 3) @[CircuitMath.scala 32:12]
    node _T_567 = bits(_T_561, 2, 2) @[CircuitMath.scala 32:12]
    node _T_569 = bits(_T_561, 1, 1) @[CircuitMath.scala 30:8]
    node _T_570 = mux(_T_567, UInt<2>("h2"), pad(_T_569, 2)) @[CircuitMath.scala 32:10]
    node _T_571 = mux(_T_565, UInt<2>("h3"), _T_570) @[CircuitMath.scala 32:10]
    node _T_572 = bits(_T_562, 3, 3) @[CircuitMath.scala 32:12]
    node _T_574 = bits(_T_562, 2, 2) @[CircuitMath.scala 32:12]
    node _T_576 = bits(_T_562, 1, 1) @[CircuitMath.scala 30:8]
    node _T_577 = mux(_T_574, UInt<2>("h2"), pad(_T_576, 2)) @[CircuitMath.scala 32:10]
    node _T_578 = mux(_T_572, UInt<2>("h3"), _T_577) @[CircuitMath.scala 32:10]
    node _T_579 = mux(_T_564, _T_571, _T_578) @[CircuitMath.scala 38:21]
    node _T_580 = cat(_T_564, _T_579) @[Cat.scala 30:58]
    node _T_581 = mux(_T_540, _T_560, _T_580) @[CircuitMath.scala 38:21]
    node _T_582 = cat(_T_540, _T_581) @[Cat.scala 30:58]
    node _T_583 = bits(_T_534, 15, 8) @[CircuitMath.scala 35:17]
    node _T_584 = bits(_T_534, 7, 0) @[CircuitMath.scala 36:17]
    node _T_586 = neq(_T_583, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_587 = bits(_T_583, 7, 4) @[CircuitMath.scala 35:17]
    node _T_588 = bits(_T_583, 3, 0) @[CircuitMath.scala 36:17]
    node _T_590 = neq(_T_587, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_591 = bits(_T_587, 3, 3) @[CircuitMath.scala 32:12]
    node _T_593 = bits(_T_587, 2, 2) @[CircuitMath.scala 32:12]
    node _T_595 = bits(_T_587, 1, 1) @[CircuitMath.scala 30:8]
    node _T_596 = mux(_T_593, UInt<2>("h2"), pad(_T_595, 2)) @[CircuitMath.scala 32:10]
    node _T_597 = mux(_T_591, UInt<2>("h3"), _T_596) @[CircuitMath.scala 32:10]
    node _T_598 = bits(_T_588, 3, 3) @[CircuitMath.scala 32:12]
    node _T_600 = bits(_T_588, 2, 2) @[CircuitMath.scala 32:12]
    node _T_602 = bits(_T_588, 1, 1) @[CircuitMath.scala 30:8]
    node _T_603 = mux(_T_600, UInt<2>("h2"), pad(_T_602, 2)) @[CircuitMath.scala 32:10]
    node _T_604 = mux(_T_598, UInt<2>("h3"), _T_603) @[CircuitMath.scala 32:10]
    node _T_605 = mux(_T_590, _T_597, _T_604) @[CircuitMath.scala 38:21]
    node _T_606 = cat(_T_590, _T_605) @[Cat.scala 30:58]
    node _T_607 = bits(_T_584, 7, 4) @[CircuitMath.scala 35:17]
    node _T_608 = bits(_T_584, 3, 0) @[CircuitMath.scala 36:17]
    node _T_610 = neq(_T_607, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_611 = bits(_T_607, 3, 3) @[CircuitMath.scala 32:12]
    node _T_613 = bits(_T_607, 2, 2) @[CircuitMath.scala 32:12]
    node _T_615 = bits(_T_607, 1, 1) @[CircuitMath.scala 30:8]
    node _T_616 = mux(_T_613, UInt<2>("h2"), pad(_T_615, 2)) @[CircuitMath.scala 32:10]
    node _T_617 = mux(_T_611, UInt<2>("h3"), _T_616) @[CircuitMath.scala 32:10]
    node _T_618 = bits(_T_608, 3, 3) @[CircuitMath.scala 32:12]
    node _T_620 = bits(_T_608, 2, 2) @[CircuitMath.scala 32:12]
    node _T_622 = bits(_T_608, 1, 1) @[CircuitMath.scala 30:8]
    node _T_623 = mux(_T_620, UInt<2>("h2"), pad(_T_622, 2)) @[CircuitMath.scala 32:10]
    node _T_624 = mux(_T_618, UInt<2>("h3"), _T_623) @[CircuitMath.scala 32:10]
    node _T_625 = mux(_T_610, _T_617, _T_624) @[CircuitMath.scala 38:21]
    node _T_626 = cat(_T_610, _T_625) @[Cat.scala 30:58]
    node _T_627 = mux(_T_586, _T_606, _T_626) @[CircuitMath.scala 38:21]
    node _T_628 = cat(_T_586, _T_627) @[Cat.scala 30:58]
    node _T_629 = mux(_T_536, _T_582, _T_628) @[CircuitMath.scala 38:21]
    node _T_630 = cat(_T_536, _T_629) @[Cat.scala 30:58]
    node _T_631 = mux(_T_434, _T_532, _T_630) @[CircuitMath.scala 38:21]
    node _T_632 = cat(_T_434, _T_631) @[Cat.scala 30:58]
    node _T_633 = not(_T_632) @[recFNFromFN.scala 56:13]
    node _GEN_34 = pad(_T_424, 115) @[recFNFromFN.scala 58:25]
    node _T_634 = dshlw(_GEN_34, _T_633) @[recFNFromFN.scala 58:25]
    node _T_635 = bits(_T_634, 50, 0) @[recFNFromFN.scala 58:37]
    node _T_637 = cat(_T_635, UInt<1>("h0")) @[Cat.scala 30:58]
    skip
    node _GEN_35 = pad(_T_633, 12) @[recFNFromFN.scala 62:27]
    node _T_643 = xor(_GEN_35, UInt<12>("hfff")) @[recFNFromFN.scala 62:27]
    node _T_644 = mux(_T_426, _T_643, pad(_T_423, 12)) @[recFNFromFN.scala 61:16]
    node _T_648 = mux(_T_426, UInt<2>("h2"), UInt<2>("h1")) @[recFNFromFN.scala 64:47]
    node _GEN_36 = pad(_T_648, 11) @[recFNFromFN.scala 64:42]
    node _T_649 = or(UInt<11>("h400"), _GEN_36) @[recFNFromFN.scala 64:42]
    node _GEN_37 = pad(_T_649, 12) @[recFNFromFN.scala 64:15]
    node _T_650 = add(_T_644, _GEN_37) @[recFNFromFN.scala 64:15]
    node _T_651 = tail(_T_650, 1) @[recFNFromFN.scala 64:15]
    node _T_652 = bits(_T_651, 11, 10) @[recFNFromFN.scala 67:25]
    node _T_654 = eq(_T_652, UInt<2>("h3")) @[recFNFromFN.scala 67:50]
    node _T_656 = not(_T_428) @[recFNFromFN.scala 68:17]
    node _T_657 = and(_T_654, _T_656) @[recFNFromFN.scala 67:63]
    skip
    node _T_661 = mux(_T_429, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_662 = shl(_T_661, 9) @[recFNFromFN.scala 71:45]
    node _T_663 = not(_T_662) @[recFNFromFN.scala 71:28]
    node _T_664 = and(_T_651, _T_663) @[recFNFromFN.scala 71:26]
    node _T_665 = shl(_T_657, 9) @[recFNFromFN.scala 72:22]
    node _GEN_38 = pad(_T_665, 12) @[recFNFromFN.scala 71:64]
    node _T_666 = or(_T_664, _GEN_38) @[recFNFromFN.scala 71:64]
    node _T_667 = mux(_T_426, _T_637, _T_424) @[recFNFromFN.scala 73:27]
    skip
    node _T_669 = cat(cat(_T_422, _T_666), _T_667) @[Cat.scala 30:58]
    node _GEN_21 = mux(_T_421, _T_669, pad(_T_419, 65)) @[FPU.scala 363:41 FPU.scala 364:14 FPU.scala 362:12]
    node _T_670 = asSInt(in_bits_in1) @[FPU.scala 370:39]
    node _T_672 = bits(in_bits_in1, 31, 0) @[FPU.scala 372:33]
    skip
    node _T_673 = bits(in_bits_typ, 1, 1) @[Package.scala 44:13]
    node _T_675 = not(_T_673) @[FPU.scala 373:49]
    node _T_676 = bits(in_bits_typ, 0, 0) @[FPU.scala 374:31]
    node _T_677 = cvt(_T_672) @[FPU.scala 374:45]
    node _T_678 = asSInt(_T_672) @[FPU.scala 374:60]
    node _T_679 = mux(_T_676, _T_677, pad(_T_678, 33)) @[FPU.scala 374:19]
    node _GEN_22 = mux(_T_675, pad(_T_679, 65), _T_670) @[FPU.scala 373:56 FPU.scala 374:13]
    skip
    node intValue = asUInt(_GEN_22) @[FPU.scala 377:9]
    skip
    node _T_682 = and(in_bits_cmd, UInt<5>("h4")) @[FPU.scala 380:21]
    node _T_683 = eq(UInt<5>("h0"), _T_682) @[FPU.scala 380:21]
    skip
    skip
    skip
    skip
    node _T_688 = shr(INToRecFN_1.io_out, 33) @[FPU.scala 396:36]
    node _T_689 = cat(_T_688, INToRecFN.io_out) @[Cat.scala 30:58]
    skip
    node _GEN_23 = mux(_T_421, INToRecFN_1.io_out, _T_689) @[FPU.scala 398:32 FPU.scala 399:20 FPU.scala 396:18]
    node _GEN_24 = mux(_T_421, INToRecFN_1.io_exceptionFlags, INToRecFN.io_exceptionFlags) @[FPU.scala 398:32 FPU.scala 400:19 FPU.scala 397:17]
    node mux_data = mux(_T_683, _GEN_23, _GEN_21) @[FPU.scala 380:38]
    node mux_exc = mux(_T_683, _GEN_24, UInt<5>("h0")) @[FPU.scala 380:38 FPU.scala 361:11]
    skip
    reg _T_698_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_698_data) @[Reg.scala 34:16]
    reg _T_698_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_698_exc) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_out_bits_data <= _T_698_data @[Valid.scala 42:21 Valid.scala 44:16]
    io_out_bits_exc <= _T_698_exc @[Valid.scala 42:21 Valid.scala 44:16]
    in_valid <= mux(reset, UInt<1>("h0"), io_in_valid) @[Valid.scala 47:18 Valid.scala 47:18 Valid.scala 47:18]
    in_bits_cmd <= mux(io_in_valid, io_in_bits_cmd, in_bits_cmd) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_bits_single <= mux(io_in_valid, io_in_bits_single, in_bits_single) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_bits_rm <= mux(io_in_valid, io_in_bits_rm, in_bits_rm) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    in_bits_typ <= mux(io_in_valid, io_in_bits_typ, in_bits_typ) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    in_bits_in1 <= mux(io_in_valid, io_in_bits_in1, in_bits_in1) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    INToRecFN.io_signedIn <= not(_T_676) @[FPU.scala 382:24]
    INToRecFN.io_in <= bits(intValue, 63, 0) @[FPU.scala 383:15]
    INToRecFN.io_roundingMode <= bits(in_bits_rm, 1, 0) @[FPU.scala 384:25]
    skip
    skip
    INToRecFN_1.io_signedIn <= not(_T_676) @[FPU.scala 392:28]
    INToRecFN_1.io_in <= bits(intValue, 63, 0) @[FPU.scala 393:19]
    INToRecFN_1.io_roundingMode <= bits(in_bits_rm, 1, 0) @[FPU.scala 394:29]
    skip
    _T_698_data <= mux(in_valid, mux_data, _T_698_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_698_exc <= mux(in_valid, mux_exc, _T_698_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]

  module RoundRawFNToRecFN :
    input io_invalidExc : UInt<1>
    input io_in_sign : UInt<1>
    input io_in_isNaN : UInt<1>
    input io_in_isInf : UInt<1>
    input io_in_isZero : UInt<1>
    input io_in_sExp : SInt<10>
    input io_in_sig : UInt<27>
    input io_roundingMode : UInt<2>
    output io_out : UInt<33>
    output io_exceptionFlags : UInt<5>

    node roundingMode_nearest_even = eq(io_roundingMode, UInt<2>("h0")) @[RoundRawFNToRecFN.scala 88:54]
    skip
    node roundingMode_min = eq(io_roundingMode, UInt<2>("h2")) @[RoundRawFNToRecFN.scala 90:54]
    node roundingMode_max = eq(io_roundingMode, UInt<2>("h3")) @[RoundRawFNToRecFN.scala 91:54]
    node _T_26 = and(roundingMode_min, io_in_sign) @[RoundRawFNToRecFN.scala 94:27]
    node _T_28 = not(io_in_sign) @[RoundRawFNToRecFN.scala 94:66]
    node _T_29 = and(roundingMode_max, _T_28) @[RoundRawFNToRecFN.scala 94:63]
    node roundMagUp = or(_T_26, _T_29) @[RoundRawFNToRecFN.scala 94:42]
    node doShiftSigDown1 = bits(io_in_sig, 26, 26) @[RoundRawFNToRecFN.scala 98:36]
    node isNegExp = lt(io_in_sExp, SInt<10>("h0")) @[RoundRawFNToRecFN.scala 99:32]
    skip
    node _T_34 = mux(isNegExp, UInt<25>("h1ffffff"), UInt<25>("h0")) @[Bitwise.scala 71:12]
    node _T_35 = bits(io_in_sExp, 8, 0) @[RoundRawFNToRecFN.scala 103:31]
    node _T_36 = not(_T_35) @[primitives.scala 50:21]
    node _T_37 = bits(_T_36, 8, 8) @[primitives.scala 56:25]
    node _T_38 = bits(_T_36, 7, 0) @[primitives.scala 57:26]
    node _T_39 = bits(_T_38, 7, 7) @[primitives.scala 56:25]
    node _T_40 = bits(_T_38, 6, 0) @[primitives.scala 57:26]
    node _T_41 = bits(_T_40, 6, 6) @[primitives.scala 56:25]
    node _T_42 = bits(_T_40, 5, 0) @[primitives.scala 57:26]
    node _T_45 = dshr(SInt<65>("h-10000000000000000"), _T_42) @[primitives.scala 68:52]
    node _T_46 = bits(_T_45, 63, 42) @[primitives.scala 69:26]
    node _T_47 = bits(_T_46, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_52 = shr(_T_47, 8) @[Bitwise.scala 102:21]
    node _T_53 = pad(_T_52, 16) @[Bitwise.scala 102:31]
    node _T_54 = bits(_T_47, 7, 0) @[Bitwise.scala 102:46]
    node _T_55 = shl(_T_54, 8) @[Bitwise.scala 102:65]
    skip
    node _T_57 = and(_T_55, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_58 = or(_T_53, _T_57) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_62 = shr(_T_58, 4) @[Bitwise.scala 102:21]
    node _GEN_0 = pad(_T_62, 16) @[Bitwise.scala 102:31]
    node _T_63 = and(_GEN_0, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_64 = bits(_T_58, 11, 0) @[Bitwise.scala 102:46]
    node _T_65 = shl(_T_64, 4) @[Bitwise.scala 102:65]
    skip
    node _T_67 = and(_T_65, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_68 = or(_T_63, _T_67) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_72 = shr(_T_68, 2) @[Bitwise.scala 102:21]
    node _GEN_1 = pad(_T_72, 16) @[Bitwise.scala 102:31]
    node _T_73 = and(_GEN_1, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_74 = bits(_T_68, 13, 0) @[Bitwise.scala 102:46]
    node _T_75 = shl(_T_74, 2) @[Bitwise.scala 102:65]
    skip
    node _T_77 = and(_T_75, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_78 = or(_T_73, _T_77) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_82 = shr(_T_78, 1) @[Bitwise.scala 102:21]
    node _GEN_2 = pad(_T_82, 16) @[Bitwise.scala 102:31]
    node _T_83 = and(_GEN_2, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_84 = bits(_T_78, 14, 0) @[Bitwise.scala 102:46]
    node _T_85 = shl(_T_84, 1) @[Bitwise.scala 102:65]
    skip
    node _T_87 = and(_T_85, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_88 = or(_T_83, _T_87) @[Bitwise.scala 102:39]
    node _T_89 = bits(_T_46, 21, 16) @[Bitwise.scala 108:44]
    node _T_90 = bits(_T_89, 3, 0) @[Bitwise.scala 108:18]
    node _T_91 = bits(_T_90, 1, 0) @[Bitwise.scala 108:18]
    node _T_92 = bits(_T_91, 0, 0) @[Bitwise.scala 108:18]
    node _T_93 = bits(_T_91, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_95 = bits(_T_90, 3, 2) @[Bitwise.scala 108:44]
    node _T_96 = bits(_T_95, 0, 0) @[Bitwise.scala 108:18]
    node _T_97 = bits(_T_95, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_100 = bits(_T_89, 5, 4) @[Bitwise.scala 108:44]
    node _T_101 = bits(_T_100, 0, 0) @[Bitwise.scala 108:18]
    node _T_102 = bits(_T_100, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_105 = cat(_T_88, cat(cat(cat(_T_92, _T_93), cat(_T_96, _T_97)), cat(_T_101, _T_102))) @[Cat.scala 30:58]
    node _T_106 = not(_T_105) @[primitives.scala 65:36]
    node _T_107 = mux(_T_41, UInt<22>("h0"), _T_106) @[primitives.scala 65:21]
    node _T_108 = not(_T_107) @[primitives.scala 65:17]
    node _T_110 = cat(_T_108, UInt<3>("h7")) @[Cat.scala 30:58]
    skip
    skip
    skip
    node _T_115 = bits(_T_45, 2, 0) @[primitives.scala 69:26]
    node _T_116 = bits(_T_115, 1, 0) @[Bitwise.scala 108:18]
    node _T_117 = bits(_T_116, 0, 0) @[Bitwise.scala 108:18]
    node _T_118 = bits(_T_116, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_120 = bits(_T_115, 2, 2) @[Bitwise.scala 108:44]
    node _T_121 = cat(cat(_T_117, _T_118), _T_120) @[Cat.scala 30:58]
    node _T_123 = mux(_T_41, _T_121, UInt<3>("h0")) @[primitives.scala 59:20]
    node _T_124 = mux(_T_39, _T_110, pad(_T_123, 25)) @[primitives.scala 61:20]
    node _T_126 = mux(_T_37, _T_124, UInt<25>("h0")) @[primitives.scala 59:20]
    node _T_127 = or(_T_34, _T_126) @[RoundRawFNToRecFN.scala 101:42]
    node _GEN_3 = pad(doShiftSigDown1, 25) @[RoundRawFNToRecFN.scala 106:19]
    node _T_128 = or(_T_127, _GEN_3) @[RoundRawFNToRecFN.scala 106:19]
    node roundMask = cat(_T_128, UInt<2>("h3")) @[Cat.scala 30:58]
    node _T_130 = cat(isNegExp, cat(_T_128, UInt<2>("h3"))) @[Cat.scala 30:58]
    node shiftedRoundMask = shr(_T_130, 1) @[RoundRawFNToRecFN.scala 109:52]
    node _T_131 = not(shiftedRoundMask) @[RoundRawFNToRecFN.scala 110:24]
    node roundPosMask = and(_T_131, roundMask) @[RoundRawFNToRecFN.scala 110:42]
    node _T_132 = and(io_in_sig, roundPosMask) @[RoundRawFNToRecFN.scala 111:34]
    node roundPosBit = neq(_T_132, UInt<27>("h0")) @[RoundRawFNToRecFN.scala 111:50]
    node _T_134 = and(io_in_sig, shiftedRoundMask) @[RoundRawFNToRecFN.scala 112:36]
    node anyRoundExtra = neq(_T_134, UInt<27>("h0")) @[RoundRawFNToRecFN.scala 112:56]
    node anyRound = or(roundPosBit, anyRoundExtra) @[RoundRawFNToRecFN.scala 113:32]
    node _T_136 = and(roundingMode_nearest_even, roundPosBit) @[RoundRawFNToRecFN.scala 116:40]
    node _T_137 = and(roundMagUp, anyRound) @[RoundRawFNToRecFN.scala 117:29]
    node _T_138 = or(_T_136, _T_137) @[RoundRawFNToRecFN.scala 116:56]
    node _T_139 = or(io_in_sig, roundMask) @[RoundRawFNToRecFN.scala 118:26]
    node _T_140 = shr(_T_139, 2) @[RoundRawFNToRecFN.scala 118:38]
    node _T_142 = add(_T_140, UInt<25>("h1")) @[RoundRawFNToRecFN.scala 118:43]
    skip
    node _T_145 = not(anyRoundExtra) @[RoundRawFNToRecFN.scala 120:26]
    node _T_146 = and(_T_136, _T_145) @[RoundRawFNToRecFN.scala 119:63]
    node _T_147 = shr(roundMask, 1) @[RoundRawFNToRecFN.scala 121:31]
    node _T_149 = mux(_T_146, _T_147, UInt<26>("h0")) @[RoundRawFNToRecFN.scala 119:21]
    node _T_150 = not(_T_149) @[RoundRawFNToRecFN.scala 119:17]
    node _T_151 = and(_T_142, _T_150) @[RoundRawFNToRecFN.scala 118:55]
    node _T_152 = not(roundMask) @[RoundRawFNToRecFN.scala 124:26]
    node _T_153 = and(io_in_sig, _T_152) @[RoundRawFNToRecFN.scala 124:24]
    node _T_154 = shr(_T_153, 2) @[RoundRawFNToRecFN.scala 124:37]
    node roundedSig = mux(_T_138, _T_151, pad(_T_154, 26)) @[RoundRawFNToRecFN.scala 116:12]
    node _T_155 = shr(roundedSig, 24) @[RoundRawFNToRecFN.scala 127:48]
    node _T_156 = cvt(_T_155) @[RoundRawFNToRecFN.scala 127:60]
    node _GEN_4 = pad(_T_156, 10) @[RoundRawFNToRecFN.scala 127:34]
    node sRoundedExp = add(io_in_sExp, _GEN_4) @[RoundRawFNToRecFN.scala 127:34]
    node common_expOut = bits(sRoundedExp, 8, 0) @[RoundRawFNToRecFN.scala 129:36]
    node _T_157 = bits(roundedSig, 23, 1) @[RoundRawFNToRecFN.scala 132:23]
    node _T_158 = bits(roundedSig, 22, 0) @[RoundRawFNToRecFN.scala 133:23]
    node common_fractOut = mux(doShiftSigDown1, _T_157, _T_158) @[RoundRawFNToRecFN.scala 131:12]
    node _T_159 = shr(sRoundedExp, 7) @[RoundRawFNToRecFN.scala 136:39]
    node common_overflow = geq(_T_159, SInt<4>("h3")) @[RoundRawFNToRecFN.scala 136:56]
    node common_totalUnderflow = lt(sRoundedExp, SInt<11>("h6b")) @[RoundRawFNToRecFN.scala 138:46]
    node _T_164 = mux(doShiftSigDown1, SInt<9>("h81"), SInt<9>("h82")) @[RoundRawFNToRecFN.scala 142:21]
    node _GEN_5 = pad(_T_164, 10) @[RoundRawFNToRecFN.scala 141:25]
    node _T_165 = lt(io_in_sExp, _GEN_5) @[RoundRawFNToRecFN.scala 141:25]
    node common_underflow = and(anyRound, _T_165) @[RoundRawFNToRecFN.scala 140:18]
    node isNaNOut = or(io_invalidExc, io_in_isNaN) @[RoundRawFNToRecFN.scala 147:34]
    skip
    node _T_167 = not(isNaNOut) @[RoundRawFNToRecFN.scala 149:22]
    node _T_169 = not(io_in_isInf) @[RoundRawFNToRecFN.scala 149:36]
    node _T_170 = and(_T_167, _T_169) @[RoundRawFNToRecFN.scala 149:33]
    node _T_172 = not(io_in_isZero) @[RoundRawFNToRecFN.scala 149:64]
    node commonCase = and(_T_170, _T_172) @[RoundRawFNToRecFN.scala 149:61]
    node overflow = and(commonCase, common_overflow) @[RoundRawFNToRecFN.scala 150:32]
    node underflow = and(commonCase, common_underflow) @[RoundRawFNToRecFN.scala 151:32]
    node _T_173 = and(commonCase, anyRound) @[RoundRawFNToRecFN.scala 152:43]
    node inexact = or(overflow, _T_173) @[RoundRawFNToRecFN.scala 152:28]
    node overflow_roundMagUp = or(roundingMode_nearest_even, roundMagUp) @[RoundRawFNToRecFN.scala 154:57]
    node _T_174 = and(commonCase, common_totalUnderflow) @[RoundRawFNToRecFN.scala 155:42]
    node pegMinNonzeroMagOut = and(_T_174, roundMagUp) @[RoundRawFNToRecFN.scala 155:67]
    node _T_175 = and(commonCase, overflow) @[RoundRawFNToRecFN.scala 156:41]
    node _T_177 = not(overflow_roundMagUp) @[RoundRawFNToRecFN.scala 156:56]
    node pegMaxFiniteMagOut = and(_T_175, _T_177) @[RoundRawFNToRecFN.scala 156:53]
    node _T_178 = and(overflow, overflow_roundMagUp) @[RoundRawFNToRecFN.scala 158:45]
    node notNaN_isInfOut = or(io_in_isInf, _T_178) @[RoundRawFNToRecFN.scala 158:32]
    node signOut = mux(isNaNOut, UInt<1>("h0"), io_in_sign) @[RoundRawFNToRecFN.scala 160:22]
    node _T_180 = or(io_in_isZero, common_totalUnderflow) @[RoundRawFNToRecFN.scala 163:32]
    node _T_183 = mux(_T_180, UInt<9>("h1c0"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 163:18]
    node _T_184 = not(_T_183) @[RoundRawFNToRecFN.scala 163:14]
    node _T_185 = and(common_expOut, _T_184) @[RoundRawFNToRecFN.scala 162:24]
    skip
    node _T_189 = mux(pegMinNonzeroMagOut, UInt<9>("h194"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 167:18]
    node _T_190 = not(_T_189) @[RoundRawFNToRecFN.scala 167:14]
    node _T_191 = and(_T_185, _T_190) @[RoundRawFNToRecFN.scala 166:17]
    node _T_194 = mux(pegMaxFiniteMagOut, UInt<9>("h80"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 171:18]
    node _T_195 = not(_T_194) @[RoundRawFNToRecFN.scala 171:14]
    node _T_196 = and(_T_191, _T_195) @[RoundRawFNToRecFN.scala 170:17]
    node _T_199 = mux(notNaN_isInfOut, UInt<9>("h40"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 175:18]
    node _T_200 = not(_T_199) @[RoundRawFNToRecFN.scala 175:14]
    node _T_201 = and(_T_196, _T_200) @[RoundRawFNToRecFN.scala 174:17]
    node _T_204 = mux(pegMinNonzeroMagOut, UInt<9>("h6b"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 179:16]
    node _T_205 = or(_T_201, _T_204) @[RoundRawFNToRecFN.scala 178:18]
    node _T_208 = mux(pegMaxFiniteMagOut, UInt<9>("h17f"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 183:16]
    node _T_209 = or(_T_205, _T_208) @[RoundRawFNToRecFN.scala 182:15]
    node _T_212 = mux(notNaN_isInfOut, UInt<9>("h180"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 187:16]
    node _T_213 = or(_T_209, _T_212) @[RoundRawFNToRecFN.scala 186:15]
    node _T_216 = mux(isNaNOut, UInt<9>("h1c0"), UInt<9>("h0")) @[RoundRawFNToRecFN.scala 188:16]
    node expOut = or(_T_213, _T_216) @[RoundRawFNToRecFN.scala 187:71]
    node _T_217 = or(common_totalUnderflow, isNaNOut) @[RoundRawFNToRecFN.scala 190:35]
    skip
    node _T_221 = mux(isNaNOut, UInt<23>("h400000"), UInt<23>("h0")) @[RoundRawFNToRecFN.scala 191:16]
    node _T_222 = mux(_T_217, _T_221, common_fractOut) @[RoundRawFNToRecFN.scala 190:12]
    skip
    node _T_226 = mux(pegMaxFiniteMagOut, UInt<23>("h7fffff"), UInt<23>("h0")) @[Bitwise.scala 71:12]
    node fractOut = or(_T_222, _T_226) @[RoundRawFNToRecFN.scala 193:11]
    node _T_227 = cat(signOut, expOut) @[Cat.scala 30:58]
    skip
    node _T_229 = cat(underflow, inexact) @[Cat.scala 30:58]
    skip
    node _T_231 = cat(cat(io_invalidExc, UInt<1>("h0")), overflow) @[Cat.scala 30:58]
    skip
    io_out <= cat(_T_227, fractOut) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(_T_231, _T_229) @[Cat.scala 30:58]

  module RecFNToRecFN :
    input io_in : UInt<65>
    input io_roundingMode : UInt<2>
    output io_out : UInt<33>
    output io_exceptionFlags : UInt<5>

    inst RoundRawFNToRecFN of RoundRawFNToRecFN @[RecFNToRecFN.scala 102:19]
    node _T_10 = bits(io_in, 63, 52) @[rawFNFromRecFN.scala 50:21]
    node _T_11 = bits(_T_10, 11, 9) @[rawFNFromRecFN.scala 51:29]
    node outRawFloat_isZero = eq(_T_11, UInt<3>("h0")) @[rawFNFromRecFN.scala 51:54]
    node _T_14 = bits(_T_10, 11, 10) @[rawFNFromRecFN.scala 52:29]
    node _T_16 = eq(_T_14, UInt<2>("h3")) @[rawFNFromRecFN.scala 52:54]
    skip
    node _T_32 = bits(_T_10, 9, 9) @[rawFNFromRecFN.scala 56:40]
    node outRawFloat_isNaN = and(_T_16, _T_32) @[rawFNFromRecFN.scala 56:32]
    skip
    node _T_36 = not(_T_32) @[rawFNFromRecFN.scala 57:35]
    skip
    node _T_38 = cvt(_T_10) @[rawFNFromRecFN.scala 59:25]
    node _T_41 = not(outRawFloat_isZero) @[rawFNFromRecFN.scala 60:36]
    node _T_42 = bits(io_in, 51, 0) @[rawFNFromRecFN.scala 60:48]
    skip
    skip
    node _T_46 = cat(cat(UInt<1>("h0"), _T_41), cat(_T_42, UInt<2>("h0"))) @[Cat.scala 30:58]
    skip
    node _T_48 = add(_T_38, SInt<13>("h-700")) @[resizeRawFN.scala 49:31]
    node _T_63 = lt(_T_48, SInt<14>("h0")) @[resizeRawFN.scala 60:31]
    node _T_64 = bits(_T_48, 12, 9) @[resizeRawFN.scala 61:33]
    node _T_66 = neq(_T_64, UInt<4>("h0")) @[resizeRawFN.scala 61:65]
    skip
    skip
    node _T_74 = bits(_T_48, 8, 0) @[resizeRawFN.scala 63:33]
    node _T_75 = mux(_T_66, UInt<9>("h1fc"), _T_74) @[resizeRawFN.scala 61:25]
    node _T_76 = cat(_T_63, _T_75) @[Cat.scala 30:58]
    skip
    skip
    node _T_78 = bits(_T_46, 55, 30) @[resizeRawFN.scala 71:28]
    node _T_79 = bits(_T_46, 29, 0) @[resizeRawFN.scala 72:28]
    node _T_81 = neq(_T_79, UInt<30>("h0")) @[resizeRawFN.scala 72:56]
    node outRawFloat_sig = cat(_T_78, _T_81) @[Cat.scala 30:58]
    skip
    node _T_83 = bits(outRawFloat_sig, 24, 24) @[RoundRawFNToRecFN.scala 61:57]
    node _T_85 = not(_T_83) @[RoundRawFNToRecFN.scala 61:49]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_out <= RoundRawFNToRecFN.io_out @[RecFNToRecFN.scala 107:16]
    io_exceptionFlags <= RoundRawFNToRecFN.io_exceptionFlags @[RecFNToRecFN.scala 108:27]
    skip
    skip
    RoundRawFNToRecFN.io_invalidExc <= and(outRawFloat_isNaN, _T_85) @[RoundRawFNToRecFN.scala 61:46]
    skip
    RoundRawFNToRecFN.io_in_sign <= bits(io_in, 64, 64) @[rawFNFromRecFN.scala 55:23]
    RoundRawFNToRecFN.io_in_isNaN <= and(_T_16, _T_32) @[rawFNFromRecFN.scala 56:32]
    RoundRawFNToRecFN.io_in_isInf <= and(_T_16, _T_36) @[rawFNFromRecFN.scala 57:32]
    RoundRawFNToRecFN.io_in_isZero <= eq(_T_11, UInt<3>("h0")) @[rawFNFromRecFN.scala 51:54]
    RoundRawFNToRecFN.io_in_sExp <= asSInt(_T_76) @[resizeRawFN.scala 65:20]
    RoundRawFNToRecFN.io_in_sig <= cat(_T_78, _T_81) @[Cat.scala 30:58]
    RoundRawFNToRecFN.io_roundingMode <= io_roundingMode @[RecFNToRecFN.scala 106:43]

  module RecFNToRecFN_1 :
    input io_in : UInt<33>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>

    node _T_10 = bits(io_in, 31, 23) @[rawFNFromRecFN.scala 50:21]
    node _T_11 = bits(_T_10, 8, 6) @[rawFNFromRecFN.scala 51:29]
    node outRawFloat_isZero = eq(_T_11, UInt<3>("h0")) @[rawFNFromRecFN.scala 51:54]
    node _T_14 = bits(_T_10, 8, 7) @[rawFNFromRecFN.scala 52:29]
    node _T_16 = eq(_T_14, UInt<2>("h3")) @[rawFNFromRecFN.scala 52:54]
    node outRawFloat_sign = bits(io_in, 32, 32) @[rawFNFromRecFN.scala 55:23]
    node _T_32 = bits(_T_10, 6, 6) @[rawFNFromRecFN.scala 56:40]
    node outRawFloat_isNaN = and(_T_16, _T_32) @[rawFNFromRecFN.scala 56:32]
    skip
    node _T_36 = not(_T_32) @[rawFNFromRecFN.scala 57:35]
    node outRawFloat_isInf = and(_T_16, _T_36) @[rawFNFromRecFN.scala 57:32]
    node _T_38 = cvt(_T_10) @[rawFNFromRecFN.scala 59:25]
    node _T_41 = not(outRawFloat_isZero) @[rawFNFromRecFN.scala 60:36]
    node _T_42 = bits(io_in, 22, 0) @[rawFNFromRecFN.scala 60:48]
    skip
    skip
    node _T_46 = cat(cat(UInt<1>("h0"), _T_41), cat(_T_42, UInt<2>("h0"))) @[Cat.scala 30:58]
    skip
    node _GEN_0 = pad(_T_38, 12) @[resizeRawFN.scala 49:31]
    node outRawFloat_sExp = add(_GEN_0, SInt<12>("h700")) @[resizeRawFN.scala 49:31]
    skip
    node outRawFloat_sig = shl(_T_46, 29) @[resizeRawFN.scala 69:24]
    skip
    node _T_63 = bits(outRawFloat_sig, 53, 53) @[RoundRawFNToRecFN.scala 61:57]
    node _T_65 = not(_T_63) @[RoundRawFNToRecFN.scala 61:49]
    skip
    skip
    node invalidExc = and(outRawFloat_isNaN, _T_65) @[RoundRawFNToRecFN.scala 61:46]
    node _T_67 = not(outRawFloat_isNaN) @[RecFNToRecFN.scala 69:40]
    skip
    skip
    node _T_68 = and(outRawFloat_sign, _T_67) @[RecFNToRecFN.scala 69:37]
    skip
    node _T_69 = bits(outRawFloat_sExp, 11, 0) @[RecFNToRecFN.scala 71:30]
    skip
    skip
    node _T_72 = mux(outRawFloat_isZero, UInt<12>("hc00"), UInt<12>("h0")) @[RecFNToRecFN.scala 72:22]
    node _T_73 = not(_T_72) @[RecFNToRecFN.scala 72:18]
    node _T_74 = and(_T_69, _T_73) @[RecFNToRecFN.scala 71:47]
    skip
    skip
    node _T_75 = or(outRawFloat_isZero, outRawFloat_isInf) @[RecFNToRecFN.scala 76:42]
    node _T_78 = mux(_T_75, UInt<12>("h200"), UInt<12>("h0")) @[RecFNToRecFN.scala 76:22]
    node _T_79 = not(_T_78) @[RecFNToRecFN.scala 76:18]
    node _T_80 = and(_T_74, _T_79) @[RecFNToRecFN.scala 75:21]
    node _T_83 = mux(outRawFloat_isInf, UInt<12>("hc00"), UInt<12>("h0")) @[RecFNToRecFN.scala 80:20]
    node _T_84 = or(_T_80, _T_83) @[RecFNToRecFN.scala 79:22]
    node _T_87 = mux(outRawFloat_isNaN, UInt<12>("he00"), UInt<12>("h0")) @[RecFNToRecFN.scala 84:20]
    node _T_88 = or(_T_84, _T_87) @[RecFNToRecFN.scala 83:19]
    skip
    node _T_91 = bits(outRawFloat_sig, 53, 2) @[RecFNToRecFN.scala 91:32]
    node _T_92 = mux(outRawFloat_isNaN, UInt<52>("h8000000000000"), _T_91) @[RecFNToRecFN.scala 89:16]
    node _T_93 = cat(_T_68, _T_88) @[Cat.scala 30:58]
    skip
    skip
    io_out <= cat(_T_93, _T_92) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(invalidExc, UInt<4>("h0")) @[Cat.scala 30:58]

  module FPToFP :
    input clock : Clock
    input reset : UInt<1>
    input io_in_valid : UInt<1>
    input io_in_bits_cmd : UInt<5>
    input io_in_bits_single : UInt<1>
    input io_in_bits_rm : UInt<3>
    input io_in_bits_in1 : UInt<65>
    input io_in_bits_in2 : UInt<65>
    output io_out_bits_data : UInt<65>
    output io_out_bits_exc : UInt<5>
    input io_lt : UInt<1>

    inst RecFNToRecFN of RecFNToRecFN @[FPU.scala 451:25]
    inst RecFNToRecFN_1 of RecFNToRecFN_1 @[FPU.scala 455:25]
    reg in_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), in_valid) @[Valid.scala 47:18]
    reg in_bits_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), in_bits_cmd) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_bits_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), in_bits_single) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_bits_rm : UInt<3>, clock with :
      reset => (UInt<1>("h0"), in_bits_rm) @[Reg.scala 34:16]
    skip
    reg in_bits_in1 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_bits_in1) @[Reg.scala 34:16]
    reg in_bits_in2 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_bits_in2) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_272 = bits(in_bits_rm, 1, 1) @[FPU.scala 417:33]
    skip
    skip
    node _T_273 = xor(in_bits_in1, in_bits_in2) @[FPU.scala 417:50]
    node _T_274 = bits(in_bits_rm, 0, 0) @[FPU.scala 417:79]
    node _T_275 = not(in_bits_in2) @[FPU.scala 417:84]
    node _T_276 = mux(_T_274, _T_275, in_bits_in2) @[FPU.scala 417:68]
    node signNum = mux(_T_272, _T_273, _T_276) @[FPU.scala 417:22]
    node _T_277 = bits(signNum, 32, 32) @[FPU.scala 418:30]
    node _T_278 = bits(in_bits_in1, 31, 0) @[FPU.scala 418:47]
    skip
    node _T_279 = shr(in_bits_in1, 33) @[FPU.scala 421:54]
    node _T_280 = cat(_T_279, cat(_T_277, _T_278)) @[Cat.scala 30:58]
    node _T_281 = bits(signNum, 64, 64) @[FPU.scala 422:49]
    node _T_282 = bits(in_bits_in1, 63, 0) @[FPU.scala 422:66]
    node _T_283 = cat(_T_281, _T_282) @[Cat.scala 30:58]
    skip
    node fsgnj = mux(in_bits_single, _T_280, _T_283) @[FPU.scala 421:21]
    skip
    node _T_292 = and(in_bits_cmd, UInt<5>("hd")) @[FPU.scala 428:23]
    node _T_293 = eq(UInt<5>("h5"), _T_292) @[FPU.scala 428:23]
    node _T_294 = bits(in_bits_in1, 31, 29) @[FPU.scala 226:7]
    node _T_295 = not(_T_294) @[FPU.scala 226:58]
    node _T_297 = eq(_T_295, UInt<3>("h0")) @[FPU.scala 226:58]
    node _T_298 = bits(in_bits_in2, 31, 29) @[FPU.scala 226:7]
    node _T_299 = not(_T_298) @[FPU.scala 226:58]
    node _T_301 = eq(_T_299, UInt<3>("h0")) @[FPU.scala 226:58]
    skip
    skip
    skip
    node _T_306 = bits(in_bits_in1, 22, 22) @[FPU.scala 231:46]
    node _T_308 = not(_T_306) @[FPU.scala 231:43]
    node _T_309 = and(_T_297, _T_308) @[FPU.scala 231:40]
    skip
    skip
    skip
    node _T_314 = bits(in_bits_in2, 22, 22) @[FPU.scala 231:46]
    node _T_316 = not(_T_314) @[FPU.scala 231:43]
    node _T_317 = and(_T_301, _T_316) @[FPU.scala 231:40]
    node _T_318 = or(_T_309, _T_317) @[FPU.scala 434:31]
    node _T_319 = and(_T_297, _T_301) @[FPU.scala 435:43]
    node _T_320 = or(_T_318, _T_319) @[FPU.scala 435:32]
    skip
    skip
    skip
    node _T_326 = neq(_T_274, io_lt) @[FPU.scala 437:34]
    node _T_328 = not(_T_297) @[FPU.scala 437:47]
    node _T_329 = and(_T_326, _T_328) @[FPU.scala 437:44]
    node _T_330 = or(_T_301, _T_329) @[FPU.scala 437:17]
    node _T_331 = bits(in_bits_in1, 63, 61) @[FPU.scala 226:7]
    node _T_332 = not(_T_331) @[FPU.scala 226:58]
    node _T_334 = eq(_T_332, UInt<3>("h0")) @[FPU.scala 226:58]
    node _T_335 = bits(in_bits_in2, 63, 61) @[FPU.scala 226:7]
    node _T_336 = not(_T_335) @[FPU.scala 226:58]
    node _T_338 = eq(_T_336, UInt<3>("h0")) @[FPU.scala 226:58]
    skip
    skip
    skip
    node _T_343 = bits(in_bits_in1, 51, 51) @[FPU.scala 231:46]
    node _T_345 = not(_T_343) @[FPU.scala 231:43]
    node _T_346 = and(_T_334, _T_345) @[FPU.scala 231:40]
    skip
    skip
    skip
    node _T_351 = bits(in_bits_in2, 51, 51) @[FPU.scala 231:46]
    node _T_353 = not(_T_351) @[FPU.scala 231:43]
    node _T_354 = and(_T_338, _T_353) @[FPU.scala 231:40]
    node _T_355 = or(_T_346, _T_354) @[FPU.scala 434:31]
    node _T_356 = and(_T_334, _T_338) @[FPU.scala 435:43]
    node _T_357 = or(_T_355, _T_356) @[FPU.scala 435:32]
    skip
    skip
    node _T_362 = not(_T_334) @[FPU.scala 437:47]
    node _T_363 = and(_T_326, _T_362) @[FPU.scala 437:44]
    node _T_364 = or(_T_338, _T_363) @[FPU.scala 437:17]
    node _T_365 = mux(in_bits_single, _T_330, _T_364) @[Misc.scala 42:9]
    node _T_366 = mux(in_bits_single, _T_318, _T_355) @[Misc.scala 42:36]
    node _T_367 = mux(in_bits_single, _T_320, _T_357) @[Misc.scala 42:63]
    node _T_368 = mux(in_bits_single, UInt<65>("he0080000e0400000"), UInt<65>("he008000000000000")) @[Misc.scala 42:90]
    node _T_369 = shl(_T_366, 4) @[FPU.scala 443:28]
    node _T_370 = mux(_T_365, in_bits_in1, in_bits_in2) @[FPU.scala 444:42]
    node _T_371 = mux(_T_367, _T_368, _T_370) @[FPU.scala 444:22]
    node _GEN_21 = mux(_T_293, _T_369, UInt<5>("h0")) @[FPU.scala 428:40 FPU.scala 443:15 FPU.scala 425:13]
    node _GEN_22 = mux(_T_293, _T_371, fsgnj) @[FPU.scala 428:40 FPU.scala 444:16 FPU.scala 426:14]
    node _T_374 = and(in_bits_cmd, UInt<5>("h4")) @[FPU.scala 450:25]
    node _T_375 = eq(UInt<5>("h0"), _T_374) @[FPU.scala 450:25]
    node _T_376 = shr(RecFNToRecFN_1.io_out, 33) @[FPU.scala 460:38]
    node _T_377 = cat(_T_376, RecFNToRecFN.io_out) @[Cat.scala 30:58]
    node _GEN_23 = mux(in_bits_single, _T_377, _GEN_22) @[FPU.scala 459:31 FPU.scala 460:20]
    node _GEN_24 = mux(in_bits_single, RecFNToRecFN.io_exceptionFlags, _GEN_21) @[FPU.scala 459:31 FPU.scala 461:19]
    node _T_379 = not(in_bits_single) @[FPU.scala 459:31]
    node _GEN_25 = mux(_T_379, RecFNToRecFN_1.io_out, _GEN_23) @[FPU.scala 462:21 FPU.scala 463:20]
    node _GEN_26 = mux(_T_379, RecFNToRecFN_1.io_exceptionFlags, _GEN_24) @[FPU.scala 462:21 FPU.scala 464:19]
    node mux_data = mux(_T_375, _GEN_25, _GEN_22) @[FPU.scala 450:42]
    node mux_exc = mux(_T_375, _GEN_26, _GEN_21) @[FPU.scala 450:42]
    skip
    reg _T_386_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_386_data) @[Reg.scala 34:16]
    reg _T_386_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_386_exc) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_out_bits_data <= _T_386_data @[Valid.scala 42:21 Valid.scala 44:16]
    io_out_bits_exc <= _T_386_exc @[Valid.scala 42:21 Valid.scala 44:16]
    in_valid <= mux(reset, UInt<1>("h0"), io_in_valid) @[Valid.scala 47:18 Valid.scala 47:18 Valid.scala 47:18]
    in_bits_cmd <= mux(io_in_valid, io_in_bits_cmd, in_bits_cmd) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_bits_single <= mux(io_in_valid, io_in_bits_single, in_bits_single) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_bits_rm <= mux(io_in_valid, io_in_bits_rm, in_bits_rm) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    in_bits_in1 <= mux(io_in_valid, io_in_bits_in1, in_bits_in1) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    in_bits_in2 <= mux(io_in_valid, io_in_bits_in2, in_bits_in2) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    RecFNToRecFN.io_in <= in_bits_in1 @[Valid.scala 42:21 Valid.scala 44:16]
    RecFNToRecFN.io_roundingMode <= bits(in_bits_rm, 1, 0) @[FPU.scala 453:29]
    skip
    skip
    RecFNToRecFN_1.io_in <= bits(in_bits_in1, 32, 0) @[FPU.scala 456:19]
    skip
    skip
    _T_386_data <= mux(in_valid, mux_data, _T_386_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_386_exc <= mux(in_valid, mux_exc, _T_386_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]

  module MulAddRecFN_preMul_1 :
    input io_op : UInt<2>
    input io_a : UInt<65>
    input io_b : UInt<65>
    input io_c : UInt<65>
    input io_roundingMode : UInt<2>
    output io_mulAddA : UInt<53>
    output io_mulAddB : UInt<53>
    output io_mulAddC : UInt<106>
    output io_toPostMul_highExpA : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNA : UInt<1>
    output io_toPostMul_highExpB : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNB : UInt<1>
    output io_toPostMul_signProd : UInt<1>
    output io_toPostMul_isZeroProd : UInt<1>
    output io_toPostMul_opSignC : UInt<1>
    output io_toPostMul_highExpC : UInt<3>
    output io_toPostMul_isNaN_isQuietNaNC : UInt<1>
    output io_toPostMul_isCDominant : UInt<1>
    output io_toPostMul_CAlignDist_0 : UInt<1>
    output io_toPostMul_CAlignDist : UInt<8>
    output io_toPostMul_bit0AlignedNegSigC : UInt<1>
    output io_toPostMul_highAlignedNegSigC : UInt<55>
    output io_toPostMul_sExpSum : UInt<14>
    output io_toPostMul_roundingMode : UInt<2>

    node signA = bits(io_a, 64, 64) @[MulAddRecFN.scala 102:22]
    node expA = bits(io_a, 63, 52) @[MulAddRecFN.scala 103:22]
    node fractA = bits(io_a, 51, 0) @[MulAddRecFN.scala 104:22]
    node _T_52 = bits(expA, 11, 9) @[MulAddRecFN.scala 105:24]
    node isZeroA = eq(_T_52, UInt<3>("h0")) @[MulAddRecFN.scala 105:49]
    node _T_55 = not(isZeroA) @[MulAddRecFN.scala 106:20]
    skip
    node signB = bits(io_b, 64, 64) @[MulAddRecFN.scala 108:22]
    node expB = bits(io_b, 63, 52) @[MulAddRecFN.scala 109:22]
    node fractB = bits(io_b, 51, 0) @[MulAddRecFN.scala 110:22]
    node _T_56 = bits(expB, 11, 9) @[MulAddRecFN.scala 111:24]
    node isZeroB = eq(_T_56, UInt<3>("h0")) @[MulAddRecFN.scala 111:49]
    node _T_59 = not(isZeroB) @[MulAddRecFN.scala 112:20]
    skip
    node _T_60 = bits(io_c, 64, 64) @[MulAddRecFN.scala 114:23]
    node _T_61 = bits(io_op, 0, 0) @[MulAddRecFN.scala 114:52]
    node opSignC = xor(_T_60, _T_61) @[MulAddRecFN.scala 114:45]
    node expC = bits(io_c, 63, 52) @[MulAddRecFN.scala 115:22]
    node fractC = bits(io_c, 51, 0) @[MulAddRecFN.scala 116:22]
    node _T_62 = bits(expC, 11, 9) @[MulAddRecFN.scala 117:24]
    node isZeroC = eq(_T_62, UInt<3>("h0")) @[MulAddRecFN.scala 117:49]
    node _T_65 = not(isZeroC) @[MulAddRecFN.scala 118:20]
    node sigC = cat(_T_65, fractC) @[Cat.scala 30:58]
    node _T_66 = xor(signA, signB) @[MulAddRecFN.scala 122:26]
    node _T_67 = bits(io_op, 1, 1) @[MulAddRecFN.scala 122:41]
    node signProd = xor(_T_66, _T_67) @[MulAddRecFN.scala 122:34]
    node isZeroProd = or(isZeroA, isZeroB) @[MulAddRecFN.scala 123:30]
    node _T_68 = bits(expB, 11, 11) @[MulAddRecFN.scala 125:34]
    node _T_70 = not(_T_68) @[MulAddRecFN.scala 125:28]
    skip
    node _T_74 = mux(_T_70, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_75 = bits(expB, 10, 0) @[MulAddRecFN.scala 125:51]
    node _T_76 = cat(_T_74, _T_75) @[Cat.scala 30:58]
    node _GEN_0 = pad(expA, 14) @[MulAddRecFN.scala 125:14]
    node _T_77 = add(_GEN_0, _T_76) @[MulAddRecFN.scala 125:14]
    node _T_78 = tail(_T_77, 1) @[MulAddRecFN.scala 125:14]
    node _T_80 = add(_T_78, UInt<14>("h38")) @[MulAddRecFN.scala 125:70]
    node sExpAlignedProd = tail(_T_80, 1) @[MulAddRecFN.scala 125:70]
    node doSubMags = xor(signProd, opSignC) @[MulAddRecFN.scala 130:30]
    node _GEN_1 = pad(expC, 14) @[MulAddRecFN.scala 132:42]
    node _T_81 = sub(sExpAlignedProd, _GEN_1) @[MulAddRecFN.scala 132:42]
    skip
    node sNatCAlignDist = tail(_T_81, 1) @[MulAddRecFN.scala 132:42]
    node _T_83 = bits(sNatCAlignDist, 13, 13) @[MulAddRecFN.scala 133:56]
    node CAlignDist_floor = or(isZeroProd, _T_83) @[MulAddRecFN.scala 133:39]
    node _T_84 = bits(sNatCAlignDist, 12, 0) @[MulAddRecFN.scala 135:44]
    node _T_86 = eq(_T_84, UInt<13>("h0")) @[MulAddRecFN.scala 135:62]
    skip
    skip
    skip
    node _T_91 = lt(_T_84, UInt<13>("h36")) @[MulAddRecFN.scala 139:51]
    node _T_92 = or(CAlignDist_floor, _T_91) @[MulAddRecFN.scala 138:31]
    skip
    skip
    node _T_96 = lt(_T_84, UInt<13>("ha1")) @[MulAddRecFN.scala 143:49]
    node _T_97 = bits(sNatCAlignDist, 7, 0) @[MulAddRecFN.scala 144:31]
    node _T_99 = mux(_T_96, _T_97, UInt<8>("ha1")) @[MulAddRecFN.scala 143:16]
    node CAlignDist = mux(CAlignDist_floor, UInt<8>("h0"), _T_99) @[MulAddRecFN.scala 141:12]
    skip
    node _T_100 = bits(CAlignDist, 7, 7) @[primitives.scala 56:25]
    node _T_101 = bits(CAlignDist, 6, 0) @[primitives.scala 57:26]
    node _T_102 = bits(_T_101, 6, 6) @[primitives.scala 56:25]
    node _T_103 = bits(_T_101, 5, 0) @[primitives.scala 57:26]
    node _T_106 = dshr(SInt<65>("h-10000000000000000"), _T_103) @[primitives.scala 68:52]
    node _T_107 = bits(_T_106, 63, 31) @[primitives.scala 69:26]
    node _T_108 = bits(_T_107, 31, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_113 = shr(_T_108, 16) @[Bitwise.scala 102:21]
    node _T_114 = pad(_T_113, 32) @[Bitwise.scala 102:31]
    node _T_115 = bits(_T_108, 15, 0) @[Bitwise.scala 102:46]
    node _T_116 = shl(_T_115, 16) @[Bitwise.scala 102:65]
    skip
    node _T_118 = and(_T_116, UInt<32>("hffff0000")) @[Bitwise.scala 102:75]
    node _T_119 = or(_T_114, _T_118) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_123 = shr(_T_119, 8) @[Bitwise.scala 102:21]
    node _GEN_2 = pad(_T_123, 32) @[Bitwise.scala 102:31]
    node _T_124 = and(_GEN_2, UInt<32>("hff00ff")) @[Bitwise.scala 102:31]
    node _T_125 = bits(_T_119, 23, 0) @[Bitwise.scala 102:46]
    node _T_126 = shl(_T_125, 8) @[Bitwise.scala 102:65]
    skip
    node _T_128 = and(_T_126, UInt<32>("hff00ff00")) @[Bitwise.scala 102:75]
    node _T_129 = or(_T_124, _T_128) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_133 = shr(_T_129, 4) @[Bitwise.scala 102:21]
    node _GEN_3 = pad(_T_133, 32) @[Bitwise.scala 102:31]
    node _T_134 = and(_GEN_3, UInt<32>("hf0f0f0f")) @[Bitwise.scala 102:31]
    node _T_135 = bits(_T_129, 27, 0) @[Bitwise.scala 102:46]
    node _T_136 = shl(_T_135, 4) @[Bitwise.scala 102:65]
    skip
    node _T_138 = and(_T_136, UInt<32>("hf0f0f0f0")) @[Bitwise.scala 102:75]
    node _T_139 = or(_T_134, _T_138) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_143 = shr(_T_139, 2) @[Bitwise.scala 102:21]
    node _GEN_4 = pad(_T_143, 32) @[Bitwise.scala 102:31]
    node _T_144 = and(_GEN_4, UInt<32>("h33333333")) @[Bitwise.scala 102:31]
    node _T_145 = bits(_T_139, 29, 0) @[Bitwise.scala 102:46]
    node _T_146 = shl(_T_145, 2) @[Bitwise.scala 102:65]
    skip
    node _T_148 = and(_T_146, UInt<32>("hcccccccc")) @[Bitwise.scala 102:75]
    node _T_149 = or(_T_144, _T_148) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_153 = shr(_T_149, 1) @[Bitwise.scala 102:21]
    node _GEN_5 = pad(_T_153, 32) @[Bitwise.scala 102:31]
    node _T_154 = and(_GEN_5, UInt<32>("h55555555")) @[Bitwise.scala 102:31]
    node _T_155 = bits(_T_149, 30, 0) @[Bitwise.scala 102:46]
    node _T_156 = shl(_T_155, 1) @[Bitwise.scala 102:65]
    skip
    node _T_158 = and(_T_156, UInt<32>("haaaaaaaa")) @[Bitwise.scala 102:75]
    node _T_159 = or(_T_154, _T_158) @[Bitwise.scala 102:39]
    node _T_160 = bits(_T_107, 32, 32) @[Bitwise.scala 108:44]
    node _T_161 = cat(_T_159, _T_160) @[Cat.scala 30:58]
    node _T_162 = not(_T_161) @[primitives.scala 65:36]
    node _T_163 = mux(_T_102, UInt<33>("h0"), _T_162) @[primitives.scala 65:21]
    node _T_164 = not(_T_163) @[primitives.scala 65:17]
    node _T_166 = cat(_T_164, UInt<20>("hfffff")) @[Cat.scala 30:58]
    skip
    skip
    skip
    node _T_171 = bits(_T_106, 19, 0) @[primitives.scala 69:26]
    node _T_172 = bits(_T_171, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_177 = shr(_T_172, 8) @[Bitwise.scala 102:21]
    node _T_178 = pad(_T_177, 16) @[Bitwise.scala 102:31]
    node _T_179 = bits(_T_172, 7, 0) @[Bitwise.scala 102:46]
    node _T_180 = shl(_T_179, 8) @[Bitwise.scala 102:65]
    skip
    node _T_182 = and(_T_180, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_183 = or(_T_178, _T_182) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_187 = shr(_T_183, 4) @[Bitwise.scala 102:21]
    node _GEN_6 = pad(_T_187, 16) @[Bitwise.scala 102:31]
    node _T_188 = and(_GEN_6, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_189 = bits(_T_183, 11, 0) @[Bitwise.scala 102:46]
    node _T_190 = shl(_T_189, 4) @[Bitwise.scala 102:65]
    skip
    node _T_192 = and(_T_190, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_193 = or(_T_188, _T_192) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_197 = shr(_T_193, 2) @[Bitwise.scala 102:21]
    node _GEN_7 = pad(_T_197, 16) @[Bitwise.scala 102:31]
    node _T_198 = and(_GEN_7, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_199 = bits(_T_193, 13, 0) @[Bitwise.scala 102:46]
    node _T_200 = shl(_T_199, 2) @[Bitwise.scala 102:65]
    skip
    node _T_202 = and(_T_200, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_203 = or(_T_198, _T_202) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_207 = shr(_T_203, 1) @[Bitwise.scala 102:21]
    node _GEN_8 = pad(_T_207, 16) @[Bitwise.scala 102:31]
    node _T_208 = and(_GEN_8, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_209 = bits(_T_203, 14, 0) @[Bitwise.scala 102:46]
    node _T_210 = shl(_T_209, 1) @[Bitwise.scala 102:65]
    skip
    node _T_212 = and(_T_210, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_213 = or(_T_208, _T_212) @[Bitwise.scala 102:39]
    node _T_214 = bits(_T_171, 19, 16) @[Bitwise.scala 108:44]
    node _T_215 = bits(_T_214, 1, 0) @[Bitwise.scala 108:18]
    node _T_216 = bits(_T_215, 0, 0) @[Bitwise.scala 108:18]
    node _T_217 = bits(_T_215, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_219 = bits(_T_214, 3, 2) @[Bitwise.scala 108:44]
    node _T_220 = bits(_T_219, 0, 0) @[Bitwise.scala 108:18]
    node _T_221 = bits(_T_219, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_224 = cat(_T_213, cat(cat(_T_216, _T_217), cat(_T_220, _T_221))) @[Cat.scala 30:58]
    node _T_226 = mux(_T_102, _T_224, UInt<20>("h0")) @[primitives.scala 59:20]
    node CExtraMask = mux(_T_100, _T_166, pad(_T_226, 53)) @[primitives.scala 61:20]
    node _T_227 = not(sigC) @[MulAddRecFN.scala 151:34]
    node negSigC = mux(doSubMags, _T_227, sigC) @[MulAddRecFN.scala 151:22]
    skip
    node _T_231 = mux(doSubMags, UInt<108>("hfffffffffffffffffffffffffff"), UInt<108>("h0")) @[Bitwise.scala 71:12]
    skip
    node _T_233 = cat(cat(doSubMags, negSigC), _T_231) @[Cat.scala 30:58]
    node _T_234 = asSInt(_T_233) @[MulAddRecFN.scala 154:64]
    node _T_235 = dshr(_T_234, CAlignDist) @[MulAddRecFN.scala 154:70]
    node _T_236 = and(sigC, CExtraMask) @[MulAddRecFN.scala 156:19]
    node _T_238 = neq(_T_236, UInt<53>("h0")) @[MulAddRecFN.scala 156:33]
    node _T_239 = xor(_T_238, doSubMags) @[MulAddRecFN.scala 156:37]
    node _T_240 = asUInt(_T_235) @[Cat.scala 30:58]
    node _T_241 = cat(_T_240, _T_239) @[Cat.scala 30:58]
    node alignedNegSigC = bits(_T_241, 161, 0) @[MulAddRecFN.scala 157:10]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_mulAddA <= cat(_T_55, fractA) @[Cat.scala 30:58]
    io_mulAddB <= cat(_T_59, fractB) @[Cat.scala 30:58]
    io_mulAddC <= bits(alignedNegSigC, 106, 1) @[MulAddRecFN.scala 161:33]
    io_toPostMul_highExpA <= bits(expA, 11, 9) @[MulAddRecFN.scala 163:44]
    io_toPostMul_isNaN_isQuietNaNA <= bits(fractA, 51, 51) @[MulAddRecFN.scala 164:46]
    io_toPostMul_highExpB <= bits(expB, 11, 9) @[MulAddRecFN.scala 165:44]
    io_toPostMul_isNaN_isQuietNaNB <= bits(fractB, 51, 51) @[MulAddRecFN.scala 166:46]
    io_toPostMul_signProd <= xor(_T_66, _T_67) @[MulAddRecFN.scala 122:34]
    io_toPostMul_isZeroProd <= or(isZeroA, isZeroB) @[MulAddRecFN.scala 123:30]
    io_toPostMul_opSignC <= xor(_T_60, _T_61) @[MulAddRecFN.scala 114:45]
    io_toPostMul_highExpC <= bits(expC, 11, 9) @[MulAddRecFN.scala 170:44]
    io_toPostMul_isNaN_isQuietNaNC <= bits(fractC, 51, 51) @[MulAddRecFN.scala 171:46]
    io_toPostMul_isCDominant <= and(_T_65, _T_92) @[MulAddRecFN.scala 137:19]
    io_toPostMul_CAlignDist_0 <= or(CAlignDist_floor, _T_86) @[MulAddRecFN.scala 135:26]
    io_toPostMul_CAlignDist <= mux(CAlignDist_floor, UInt<8>("h0"), _T_99) @[MulAddRecFN.scala 141:12]
    io_toPostMul_bit0AlignedNegSigC <= bits(alignedNegSigC, 0, 0) @[MulAddRecFN.scala 175:54]
    io_toPostMul_highAlignedNegSigC <= bits(alignedNegSigC, 161, 107) @[MulAddRecFN.scala 177:23]
    io_toPostMul_sExpSum <= mux(CAlignDist_floor, pad(expC, 14), sExpAlignedProd) @[MulAddRecFN.scala 148:22]
    io_toPostMul_roundingMode <= io_roundingMode @[MulAddRecFN.scala 179:37]

  module MulAddRecFN_postMul_1 :
    input io_fromPreMul_highExpA : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNA : UInt<1>
    input io_fromPreMul_highExpB : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNB : UInt<1>
    input io_fromPreMul_signProd : UInt<1>
    input io_fromPreMul_isZeroProd : UInt<1>
    input io_fromPreMul_opSignC : UInt<1>
    input io_fromPreMul_highExpC : UInt<3>
    input io_fromPreMul_isNaN_isQuietNaNC : UInt<1>
    input io_fromPreMul_isCDominant : UInt<1>
    input io_fromPreMul_CAlignDist_0 : UInt<1>
    input io_fromPreMul_CAlignDist : UInt<8>
    input io_fromPreMul_bit0AlignedNegSigC : UInt<1>
    input io_fromPreMul_highAlignedNegSigC : UInt<55>
    input io_fromPreMul_sExpSum : UInt<14>
    input io_fromPreMul_roundingMode : UInt<2>
    input io_mulAddResult : UInt<107>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>

    node isZeroA = eq(io_fromPreMul_highExpA, UInt<3>("h0")) @[MulAddRecFN.scala 207:46]
    node _T_43 = bits(io_fromPreMul_highExpA, 2, 1) @[MulAddRecFN.scala 208:45]
    node isSpecialA = eq(_T_43, UInt<2>("h3")) @[MulAddRecFN.scala 208:52]
    node _T_45 = bits(io_fromPreMul_highExpA, 0, 0) @[MulAddRecFN.scala 209:56]
    node _T_47 = not(_T_45) @[MulAddRecFN.scala 209:32]
    node isInfA = and(isSpecialA, _T_47) @[MulAddRecFN.scala 209:29]
    skip
    node isNaNA = and(isSpecialA, _T_45) @[MulAddRecFN.scala 210:29]
    node _T_50 = not(io_fromPreMul_isNaN_isQuietNaNA) @[MulAddRecFN.scala 211:31]
    node isSigNaNA = and(isNaNA, _T_50) @[MulAddRecFN.scala 211:28]
    node isZeroB = eq(io_fromPreMul_highExpB, UInt<3>("h0")) @[MulAddRecFN.scala 213:46]
    node _T_52 = bits(io_fromPreMul_highExpB, 2, 1) @[MulAddRecFN.scala 214:45]
    node isSpecialB = eq(_T_52, UInt<2>("h3")) @[MulAddRecFN.scala 214:52]
    node _T_54 = bits(io_fromPreMul_highExpB, 0, 0) @[MulAddRecFN.scala 215:56]
    node _T_56 = not(_T_54) @[MulAddRecFN.scala 215:32]
    node isInfB = and(isSpecialB, _T_56) @[MulAddRecFN.scala 215:29]
    skip
    node isNaNB = and(isSpecialB, _T_54) @[MulAddRecFN.scala 216:29]
    node _T_59 = not(io_fromPreMul_isNaN_isQuietNaNB) @[MulAddRecFN.scala 217:31]
    node isSigNaNB = and(isNaNB, _T_59) @[MulAddRecFN.scala 217:28]
    node isZeroC = eq(io_fromPreMul_highExpC, UInt<3>("h0")) @[MulAddRecFN.scala 219:46]
    node _T_61 = bits(io_fromPreMul_highExpC, 2, 1) @[MulAddRecFN.scala 220:45]
    node isSpecialC = eq(_T_61, UInt<2>("h3")) @[MulAddRecFN.scala 220:52]
    node _T_63 = bits(io_fromPreMul_highExpC, 0, 0) @[MulAddRecFN.scala 221:56]
    node _T_65 = not(_T_63) @[MulAddRecFN.scala 221:32]
    node isInfC = and(isSpecialC, _T_65) @[MulAddRecFN.scala 221:29]
    skip
    node isNaNC = and(isSpecialC, _T_63) @[MulAddRecFN.scala 222:29]
    node _T_68 = not(io_fromPreMul_isNaN_isQuietNaNC) @[MulAddRecFN.scala 223:31]
    node isSigNaNC = and(isNaNC, _T_68) @[MulAddRecFN.scala 223:28]
    node roundingMode_nearest_even = eq(io_fromPreMul_roundingMode, UInt<2>("h0")) @[MulAddRecFN.scala 226:37]
    skip
    node roundingMode_min = eq(io_fromPreMul_roundingMode, UInt<2>("h2")) @[MulAddRecFN.scala 228:59]
    node roundingMode_max = eq(io_fromPreMul_roundingMode, UInt<2>("h3")) @[MulAddRecFN.scala 229:59]
    skip
    node doSubMags = xor(io_fromPreMul_signProd, io_fromPreMul_opSignC) @[MulAddRecFN.scala 232:44]
    node _T_71 = bits(io_mulAddResult, 106, 106) @[MulAddRecFN.scala 237:32]
    node _T_73 = add(io_fromPreMul_highAlignedNegSigC, UInt<55>("h1")) @[MulAddRecFN.scala 238:50]
    node _T_74 = tail(_T_73, 1) @[MulAddRecFN.scala 238:50]
    node _T_75 = mux(_T_71, _T_74, io_fromPreMul_highAlignedNegSigC) @[MulAddRecFN.scala 237:16]
    node _T_76 = bits(io_mulAddResult, 105, 0) @[MulAddRecFN.scala 241:28]
    skip
    node sigSum = cat(cat(_T_75, _T_76), io_fromPreMul_bit0AlignedNegSigC) @[Cat.scala 30:58]
    node _T_79 = bits(sigSum, 108, 1) @[MulAddRecFN.scala 248:38]
    skip
    skip
    node _T_82 = shl(_T_79, 1) @[MulAddRecFN.scala 191:41]
    node _GEN_0 = pad(_T_79, 109) @[MulAddRecFN.scala 191:32]
    node _T_83 = xor(_GEN_0, _T_82) @[MulAddRecFN.scala 191:32]
    node _T_85 = bits(_T_83, 107, 0) @[primitives.scala 79:35]
    node _T_86 = bits(_T_85, 107, 64) @[CircuitMath.scala 35:17]
    node _T_87 = bits(_T_85, 63, 0) @[CircuitMath.scala 36:17]
    node _T_89 = neq(_T_86, UInt<44>("h0")) @[CircuitMath.scala 37:22]
    node _T_90 = bits(_T_86, 43, 32) @[CircuitMath.scala 35:17]
    node _T_91 = bits(_T_86, 31, 0) @[CircuitMath.scala 36:17]
    node _T_93 = neq(_T_90, UInt<12>("h0")) @[CircuitMath.scala 37:22]
    node _T_94 = bits(_T_90, 11, 8) @[CircuitMath.scala 35:17]
    node _T_95 = bits(_T_90, 7, 0) @[CircuitMath.scala 36:17]
    node _T_97 = neq(_T_94, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_98 = bits(_T_94, 3, 3) @[CircuitMath.scala 32:12]
    node _T_100 = bits(_T_94, 2, 2) @[CircuitMath.scala 32:12]
    node _T_102 = bits(_T_94, 1, 1) @[CircuitMath.scala 30:8]
    node _T_103 = mux(_T_100, UInt<2>("h2"), pad(_T_102, 2)) @[CircuitMath.scala 32:10]
    node _T_104 = mux(_T_98, UInt<2>("h3"), _T_103) @[CircuitMath.scala 32:10]
    node _T_105 = bits(_T_95, 7, 4) @[CircuitMath.scala 35:17]
    node _T_106 = bits(_T_95, 3, 0) @[CircuitMath.scala 36:17]
    node _T_108 = neq(_T_105, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_109 = bits(_T_105, 3, 3) @[CircuitMath.scala 32:12]
    node _T_111 = bits(_T_105, 2, 2) @[CircuitMath.scala 32:12]
    node _T_113 = bits(_T_105, 1, 1) @[CircuitMath.scala 30:8]
    node _T_114 = mux(_T_111, UInt<2>("h2"), pad(_T_113, 2)) @[CircuitMath.scala 32:10]
    node _T_115 = mux(_T_109, UInt<2>("h3"), _T_114) @[CircuitMath.scala 32:10]
    node _T_116 = bits(_T_106, 3, 3) @[CircuitMath.scala 32:12]
    node _T_118 = bits(_T_106, 2, 2) @[CircuitMath.scala 32:12]
    node _T_120 = bits(_T_106, 1, 1) @[CircuitMath.scala 30:8]
    node _T_121 = mux(_T_118, UInt<2>("h2"), pad(_T_120, 2)) @[CircuitMath.scala 32:10]
    node _T_122 = mux(_T_116, UInt<2>("h3"), _T_121) @[CircuitMath.scala 32:10]
    node _T_123 = mux(_T_108, _T_115, _T_122) @[CircuitMath.scala 38:21]
    node _T_124 = cat(_T_108, _T_123) @[Cat.scala 30:58]
    node _T_125 = mux(_T_97, pad(_T_104, 3), _T_124) @[CircuitMath.scala 38:21]
    node _T_126 = cat(_T_97, _T_125) @[Cat.scala 30:58]
    node _T_127 = bits(_T_91, 31, 16) @[CircuitMath.scala 35:17]
    node _T_128 = bits(_T_91, 15, 0) @[CircuitMath.scala 36:17]
    node _T_130 = neq(_T_127, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_131 = bits(_T_127, 15, 8) @[CircuitMath.scala 35:17]
    node _T_132 = bits(_T_127, 7, 0) @[CircuitMath.scala 36:17]
    node _T_134 = neq(_T_131, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_135 = bits(_T_131, 7, 4) @[CircuitMath.scala 35:17]
    node _T_136 = bits(_T_131, 3, 0) @[CircuitMath.scala 36:17]
    node _T_138 = neq(_T_135, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_139 = bits(_T_135, 3, 3) @[CircuitMath.scala 32:12]
    node _T_141 = bits(_T_135, 2, 2) @[CircuitMath.scala 32:12]
    node _T_143 = bits(_T_135, 1, 1) @[CircuitMath.scala 30:8]
    node _T_144 = mux(_T_141, UInt<2>("h2"), pad(_T_143, 2)) @[CircuitMath.scala 32:10]
    node _T_145 = mux(_T_139, UInt<2>("h3"), _T_144) @[CircuitMath.scala 32:10]
    node _T_146 = bits(_T_136, 3, 3) @[CircuitMath.scala 32:12]
    node _T_148 = bits(_T_136, 2, 2) @[CircuitMath.scala 32:12]
    node _T_150 = bits(_T_136, 1, 1) @[CircuitMath.scala 30:8]
    node _T_151 = mux(_T_148, UInt<2>("h2"), pad(_T_150, 2)) @[CircuitMath.scala 32:10]
    node _T_152 = mux(_T_146, UInt<2>("h3"), _T_151) @[CircuitMath.scala 32:10]
    node _T_153 = mux(_T_138, _T_145, _T_152) @[CircuitMath.scala 38:21]
    node _T_154 = cat(_T_138, _T_153) @[Cat.scala 30:58]
    node _T_155 = bits(_T_132, 7, 4) @[CircuitMath.scala 35:17]
    node _T_156 = bits(_T_132, 3, 0) @[CircuitMath.scala 36:17]
    node _T_158 = neq(_T_155, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_159 = bits(_T_155, 3, 3) @[CircuitMath.scala 32:12]
    node _T_161 = bits(_T_155, 2, 2) @[CircuitMath.scala 32:12]
    node _T_163 = bits(_T_155, 1, 1) @[CircuitMath.scala 30:8]
    node _T_164 = mux(_T_161, UInt<2>("h2"), pad(_T_163, 2)) @[CircuitMath.scala 32:10]
    node _T_165 = mux(_T_159, UInt<2>("h3"), _T_164) @[CircuitMath.scala 32:10]
    node _T_166 = bits(_T_156, 3, 3) @[CircuitMath.scala 32:12]
    node _T_168 = bits(_T_156, 2, 2) @[CircuitMath.scala 32:12]
    node _T_170 = bits(_T_156, 1, 1) @[CircuitMath.scala 30:8]
    node _T_171 = mux(_T_168, UInt<2>("h2"), pad(_T_170, 2)) @[CircuitMath.scala 32:10]
    node _T_172 = mux(_T_166, UInt<2>("h3"), _T_171) @[CircuitMath.scala 32:10]
    node _T_173 = mux(_T_158, _T_165, _T_172) @[CircuitMath.scala 38:21]
    node _T_174 = cat(_T_158, _T_173) @[Cat.scala 30:58]
    node _T_175 = mux(_T_134, _T_154, _T_174) @[CircuitMath.scala 38:21]
    node _T_176 = cat(_T_134, _T_175) @[Cat.scala 30:58]
    node _T_177 = bits(_T_128, 15, 8) @[CircuitMath.scala 35:17]
    node _T_178 = bits(_T_128, 7, 0) @[CircuitMath.scala 36:17]
    node _T_180 = neq(_T_177, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_181 = bits(_T_177, 7, 4) @[CircuitMath.scala 35:17]
    node _T_182 = bits(_T_177, 3, 0) @[CircuitMath.scala 36:17]
    node _T_184 = neq(_T_181, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_185 = bits(_T_181, 3, 3) @[CircuitMath.scala 32:12]
    node _T_187 = bits(_T_181, 2, 2) @[CircuitMath.scala 32:12]
    node _T_189 = bits(_T_181, 1, 1) @[CircuitMath.scala 30:8]
    node _T_190 = mux(_T_187, UInt<2>("h2"), pad(_T_189, 2)) @[CircuitMath.scala 32:10]
    node _T_191 = mux(_T_185, UInt<2>("h3"), _T_190) @[CircuitMath.scala 32:10]
    node _T_192 = bits(_T_182, 3, 3) @[CircuitMath.scala 32:12]
    node _T_194 = bits(_T_182, 2, 2) @[CircuitMath.scala 32:12]
    node _T_196 = bits(_T_182, 1, 1) @[CircuitMath.scala 30:8]
    node _T_197 = mux(_T_194, UInt<2>("h2"), pad(_T_196, 2)) @[CircuitMath.scala 32:10]
    node _T_198 = mux(_T_192, UInt<2>("h3"), _T_197) @[CircuitMath.scala 32:10]
    node _T_199 = mux(_T_184, _T_191, _T_198) @[CircuitMath.scala 38:21]
    node _T_200 = cat(_T_184, _T_199) @[Cat.scala 30:58]
    node _T_201 = bits(_T_178, 7, 4) @[CircuitMath.scala 35:17]
    node _T_202 = bits(_T_178, 3, 0) @[CircuitMath.scala 36:17]
    node _T_204 = neq(_T_201, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_205 = bits(_T_201, 3, 3) @[CircuitMath.scala 32:12]
    node _T_207 = bits(_T_201, 2, 2) @[CircuitMath.scala 32:12]
    node _T_209 = bits(_T_201, 1, 1) @[CircuitMath.scala 30:8]
    node _T_210 = mux(_T_207, UInt<2>("h2"), pad(_T_209, 2)) @[CircuitMath.scala 32:10]
    node _T_211 = mux(_T_205, UInt<2>("h3"), _T_210) @[CircuitMath.scala 32:10]
    node _T_212 = bits(_T_202, 3, 3) @[CircuitMath.scala 32:12]
    node _T_214 = bits(_T_202, 2, 2) @[CircuitMath.scala 32:12]
    node _T_216 = bits(_T_202, 1, 1) @[CircuitMath.scala 30:8]
    node _T_217 = mux(_T_214, UInt<2>("h2"), pad(_T_216, 2)) @[CircuitMath.scala 32:10]
    node _T_218 = mux(_T_212, UInt<2>("h3"), _T_217) @[CircuitMath.scala 32:10]
    node _T_219 = mux(_T_204, _T_211, _T_218) @[CircuitMath.scala 38:21]
    node _T_220 = cat(_T_204, _T_219) @[Cat.scala 30:58]
    node _T_221 = mux(_T_180, _T_200, _T_220) @[CircuitMath.scala 38:21]
    node _T_222 = cat(_T_180, _T_221) @[Cat.scala 30:58]
    node _T_223 = mux(_T_130, _T_176, _T_222) @[CircuitMath.scala 38:21]
    node _T_224 = cat(_T_130, _T_223) @[Cat.scala 30:58]
    node _T_225 = mux(_T_93, pad(_T_126, 5), _T_224) @[CircuitMath.scala 38:21]
    node _T_226 = cat(_T_93, _T_225) @[Cat.scala 30:58]
    node _T_227 = bits(_T_87, 63, 32) @[CircuitMath.scala 35:17]
    node _T_228 = bits(_T_87, 31, 0) @[CircuitMath.scala 36:17]
    node _T_230 = neq(_T_227, UInt<32>("h0")) @[CircuitMath.scala 37:22]
    node _T_231 = bits(_T_227, 31, 16) @[CircuitMath.scala 35:17]
    node _T_232 = bits(_T_227, 15, 0) @[CircuitMath.scala 36:17]
    node _T_234 = neq(_T_231, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_235 = bits(_T_231, 15, 8) @[CircuitMath.scala 35:17]
    node _T_236 = bits(_T_231, 7, 0) @[CircuitMath.scala 36:17]
    node _T_238 = neq(_T_235, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_239 = bits(_T_235, 7, 4) @[CircuitMath.scala 35:17]
    node _T_240 = bits(_T_235, 3, 0) @[CircuitMath.scala 36:17]
    node _T_242 = neq(_T_239, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_243 = bits(_T_239, 3, 3) @[CircuitMath.scala 32:12]
    node _T_245 = bits(_T_239, 2, 2) @[CircuitMath.scala 32:12]
    node _T_247 = bits(_T_239, 1, 1) @[CircuitMath.scala 30:8]
    node _T_248 = mux(_T_245, UInt<2>("h2"), pad(_T_247, 2)) @[CircuitMath.scala 32:10]
    node _T_249 = mux(_T_243, UInt<2>("h3"), _T_248) @[CircuitMath.scala 32:10]
    node _T_250 = bits(_T_240, 3, 3) @[CircuitMath.scala 32:12]
    node _T_252 = bits(_T_240, 2, 2) @[CircuitMath.scala 32:12]
    node _T_254 = bits(_T_240, 1, 1) @[CircuitMath.scala 30:8]
    node _T_255 = mux(_T_252, UInt<2>("h2"), pad(_T_254, 2)) @[CircuitMath.scala 32:10]
    node _T_256 = mux(_T_250, UInt<2>("h3"), _T_255) @[CircuitMath.scala 32:10]
    node _T_257 = mux(_T_242, _T_249, _T_256) @[CircuitMath.scala 38:21]
    node _T_258 = cat(_T_242, _T_257) @[Cat.scala 30:58]
    node _T_259 = bits(_T_236, 7, 4) @[CircuitMath.scala 35:17]
    node _T_260 = bits(_T_236, 3, 0) @[CircuitMath.scala 36:17]
    node _T_262 = neq(_T_259, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_263 = bits(_T_259, 3, 3) @[CircuitMath.scala 32:12]
    node _T_265 = bits(_T_259, 2, 2) @[CircuitMath.scala 32:12]
    node _T_267 = bits(_T_259, 1, 1) @[CircuitMath.scala 30:8]
    node _T_268 = mux(_T_265, UInt<2>("h2"), pad(_T_267, 2)) @[CircuitMath.scala 32:10]
    node _T_269 = mux(_T_263, UInt<2>("h3"), _T_268) @[CircuitMath.scala 32:10]
    node _T_270 = bits(_T_260, 3, 3) @[CircuitMath.scala 32:12]
    node _T_272 = bits(_T_260, 2, 2) @[CircuitMath.scala 32:12]
    node _T_274 = bits(_T_260, 1, 1) @[CircuitMath.scala 30:8]
    node _T_275 = mux(_T_272, UInt<2>("h2"), pad(_T_274, 2)) @[CircuitMath.scala 32:10]
    node _T_276 = mux(_T_270, UInt<2>("h3"), _T_275) @[CircuitMath.scala 32:10]
    node _T_277 = mux(_T_262, _T_269, _T_276) @[CircuitMath.scala 38:21]
    node _T_278 = cat(_T_262, _T_277) @[Cat.scala 30:58]
    node _T_279 = mux(_T_238, _T_258, _T_278) @[CircuitMath.scala 38:21]
    node _T_280 = cat(_T_238, _T_279) @[Cat.scala 30:58]
    node _T_281 = bits(_T_232, 15, 8) @[CircuitMath.scala 35:17]
    node _T_282 = bits(_T_232, 7, 0) @[CircuitMath.scala 36:17]
    node _T_284 = neq(_T_281, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_285 = bits(_T_281, 7, 4) @[CircuitMath.scala 35:17]
    node _T_286 = bits(_T_281, 3, 0) @[CircuitMath.scala 36:17]
    node _T_288 = neq(_T_285, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_289 = bits(_T_285, 3, 3) @[CircuitMath.scala 32:12]
    node _T_291 = bits(_T_285, 2, 2) @[CircuitMath.scala 32:12]
    node _T_293 = bits(_T_285, 1, 1) @[CircuitMath.scala 30:8]
    node _T_294 = mux(_T_291, UInt<2>("h2"), pad(_T_293, 2)) @[CircuitMath.scala 32:10]
    node _T_295 = mux(_T_289, UInt<2>("h3"), _T_294) @[CircuitMath.scala 32:10]
    node _T_296 = bits(_T_286, 3, 3) @[CircuitMath.scala 32:12]
    node _T_298 = bits(_T_286, 2, 2) @[CircuitMath.scala 32:12]
    node _T_300 = bits(_T_286, 1, 1) @[CircuitMath.scala 30:8]
    node _T_301 = mux(_T_298, UInt<2>("h2"), pad(_T_300, 2)) @[CircuitMath.scala 32:10]
    node _T_302 = mux(_T_296, UInt<2>("h3"), _T_301) @[CircuitMath.scala 32:10]
    node _T_303 = mux(_T_288, _T_295, _T_302) @[CircuitMath.scala 38:21]
    node _T_304 = cat(_T_288, _T_303) @[Cat.scala 30:58]
    node _T_305 = bits(_T_282, 7, 4) @[CircuitMath.scala 35:17]
    node _T_306 = bits(_T_282, 3, 0) @[CircuitMath.scala 36:17]
    node _T_308 = neq(_T_305, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_309 = bits(_T_305, 3, 3) @[CircuitMath.scala 32:12]
    node _T_311 = bits(_T_305, 2, 2) @[CircuitMath.scala 32:12]
    node _T_313 = bits(_T_305, 1, 1) @[CircuitMath.scala 30:8]
    node _T_314 = mux(_T_311, UInt<2>("h2"), pad(_T_313, 2)) @[CircuitMath.scala 32:10]
    node _T_315 = mux(_T_309, UInt<2>("h3"), _T_314) @[CircuitMath.scala 32:10]
    node _T_316 = bits(_T_306, 3, 3) @[CircuitMath.scala 32:12]
    node _T_318 = bits(_T_306, 2, 2) @[CircuitMath.scala 32:12]
    node _T_320 = bits(_T_306, 1, 1) @[CircuitMath.scala 30:8]
    node _T_321 = mux(_T_318, UInt<2>("h2"), pad(_T_320, 2)) @[CircuitMath.scala 32:10]
    node _T_322 = mux(_T_316, UInt<2>("h3"), _T_321) @[CircuitMath.scala 32:10]
    node _T_323 = mux(_T_308, _T_315, _T_322) @[CircuitMath.scala 38:21]
    node _T_324 = cat(_T_308, _T_323) @[Cat.scala 30:58]
    node _T_325 = mux(_T_284, _T_304, _T_324) @[CircuitMath.scala 38:21]
    node _T_326 = cat(_T_284, _T_325) @[Cat.scala 30:58]
    node _T_327 = mux(_T_234, _T_280, _T_326) @[CircuitMath.scala 38:21]
    node _T_328 = cat(_T_234, _T_327) @[Cat.scala 30:58]
    node _T_329 = bits(_T_228, 31, 16) @[CircuitMath.scala 35:17]
    node _T_330 = bits(_T_228, 15, 0) @[CircuitMath.scala 36:17]
    node _T_332 = neq(_T_329, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_333 = bits(_T_329, 15, 8) @[CircuitMath.scala 35:17]
    node _T_334 = bits(_T_329, 7, 0) @[CircuitMath.scala 36:17]
    node _T_336 = neq(_T_333, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_337 = bits(_T_333, 7, 4) @[CircuitMath.scala 35:17]
    node _T_338 = bits(_T_333, 3, 0) @[CircuitMath.scala 36:17]
    node _T_340 = neq(_T_337, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_341 = bits(_T_337, 3, 3) @[CircuitMath.scala 32:12]
    node _T_343 = bits(_T_337, 2, 2) @[CircuitMath.scala 32:12]
    node _T_345 = bits(_T_337, 1, 1) @[CircuitMath.scala 30:8]
    node _T_346 = mux(_T_343, UInt<2>("h2"), pad(_T_345, 2)) @[CircuitMath.scala 32:10]
    node _T_347 = mux(_T_341, UInt<2>("h3"), _T_346) @[CircuitMath.scala 32:10]
    node _T_348 = bits(_T_338, 3, 3) @[CircuitMath.scala 32:12]
    node _T_350 = bits(_T_338, 2, 2) @[CircuitMath.scala 32:12]
    node _T_352 = bits(_T_338, 1, 1) @[CircuitMath.scala 30:8]
    node _T_353 = mux(_T_350, UInt<2>("h2"), pad(_T_352, 2)) @[CircuitMath.scala 32:10]
    node _T_354 = mux(_T_348, UInt<2>("h3"), _T_353) @[CircuitMath.scala 32:10]
    node _T_355 = mux(_T_340, _T_347, _T_354) @[CircuitMath.scala 38:21]
    node _T_356 = cat(_T_340, _T_355) @[Cat.scala 30:58]
    node _T_357 = bits(_T_334, 7, 4) @[CircuitMath.scala 35:17]
    node _T_358 = bits(_T_334, 3, 0) @[CircuitMath.scala 36:17]
    node _T_360 = neq(_T_357, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_361 = bits(_T_357, 3, 3) @[CircuitMath.scala 32:12]
    node _T_363 = bits(_T_357, 2, 2) @[CircuitMath.scala 32:12]
    node _T_365 = bits(_T_357, 1, 1) @[CircuitMath.scala 30:8]
    node _T_366 = mux(_T_363, UInt<2>("h2"), pad(_T_365, 2)) @[CircuitMath.scala 32:10]
    node _T_367 = mux(_T_361, UInt<2>("h3"), _T_366) @[CircuitMath.scala 32:10]
    node _T_368 = bits(_T_358, 3, 3) @[CircuitMath.scala 32:12]
    node _T_370 = bits(_T_358, 2, 2) @[CircuitMath.scala 32:12]
    node _T_372 = bits(_T_358, 1, 1) @[CircuitMath.scala 30:8]
    node _T_373 = mux(_T_370, UInt<2>("h2"), pad(_T_372, 2)) @[CircuitMath.scala 32:10]
    node _T_374 = mux(_T_368, UInt<2>("h3"), _T_373) @[CircuitMath.scala 32:10]
    node _T_375 = mux(_T_360, _T_367, _T_374) @[CircuitMath.scala 38:21]
    node _T_376 = cat(_T_360, _T_375) @[Cat.scala 30:58]
    node _T_377 = mux(_T_336, _T_356, _T_376) @[CircuitMath.scala 38:21]
    node _T_378 = cat(_T_336, _T_377) @[Cat.scala 30:58]
    node _T_379 = bits(_T_330, 15, 8) @[CircuitMath.scala 35:17]
    node _T_380 = bits(_T_330, 7, 0) @[CircuitMath.scala 36:17]
    node _T_382 = neq(_T_379, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_383 = bits(_T_379, 7, 4) @[CircuitMath.scala 35:17]
    node _T_384 = bits(_T_379, 3, 0) @[CircuitMath.scala 36:17]
    node _T_386 = neq(_T_383, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_387 = bits(_T_383, 3, 3) @[CircuitMath.scala 32:12]
    node _T_389 = bits(_T_383, 2, 2) @[CircuitMath.scala 32:12]
    node _T_391 = bits(_T_383, 1, 1) @[CircuitMath.scala 30:8]
    node _T_392 = mux(_T_389, UInt<2>("h2"), pad(_T_391, 2)) @[CircuitMath.scala 32:10]
    node _T_393 = mux(_T_387, UInt<2>("h3"), _T_392) @[CircuitMath.scala 32:10]
    node _T_394 = bits(_T_384, 3, 3) @[CircuitMath.scala 32:12]
    node _T_396 = bits(_T_384, 2, 2) @[CircuitMath.scala 32:12]
    node _T_398 = bits(_T_384, 1, 1) @[CircuitMath.scala 30:8]
    node _T_399 = mux(_T_396, UInt<2>("h2"), pad(_T_398, 2)) @[CircuitMath.scala 32:10]
    node _T_400 = mux(_T_394, UInt<2>("h3"), _T_399) @[CircuitMath.scala 32:10]
    node _T_401 = mux(_T_386, _T_393, _T_400) @[CircuitMath.scala 38:21]
    node _T_402 = cat(_T_386, _T_401) @[Cat.scala 30:58]
    node _T_403 = bits(_T_380, 7, 4) @[CircuitMath.scala 35:17]
    node _T_404 = bits(_T_380, 3, 0) @[CircuitMath.scala 36:17]
    node _T_406 = neq(_T_403, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_407 = bits(_T_403, 3, 3) @[CircuitMath.scala 32:12]
    node _T_409 = bits(_T_403, 2, 2) @[CircuitMath.scala 32:12]
    node _T_411 = bits(_T_403, 1, 1) @[CircuitMath.scala 30:8]
    node _T_412 = mux(_T_409, UInt<2>("h2"), pad(_T_411, 2)) @[CircuitMath.scala 32:10]
    node _T_413 = mux(_T_407, UInt<2>("h3"), _T_412) @[CircuitMath.scala 32:10]
    node _T_414 = bits(_T_404, 3, 3) @[CircuitMath.scala 32:12]
    node _T_416 = bits(_T_404, 2, 2) @[CircuitMath.scala 32:12]
    node _T_418 = bits(_T_404, 1, 1) @[CircuitMath.scala 30:8]
    node _T_419 = mux(_T_416, UInt<2>("h2"), pad(_T_418, 2)) @[CircuitMath.scala 32:10]
    node _T_420 = mux(_T_414, UInt<2>("h3"), _T_419) @[CircuitMath.scala 32:10]
    node _T_421 = mux(_T_406, _T_413, _T_420) @[CircuitMath.scala 38:21]
    node _T_422 = cat(_T_406, _T_421) @[Cat.scala 30:58]
    node _T_423 = mux(_T_382, _T_402, _T_422) @[CircuitMath.scala 38:21]
    node _T_424 = cat(_T_382, _T_423) @[Cat.scala 30:58]
    node _T_425 = mux(_T_332, _T_378, _T_424) @[CircuitMath.scala 38:21]
    node _T_426 = cat(_T_332, _T_425) @[Cat.scala 30:58]
    node _T_427 = mux(_T_230, _T_328, _T_426) @[CircuitMath.scala 38:21]
    node _T_428 = cat(_T_230, _T_427) @[Cat.scala 30:58]
    node _T_429 = mux(_T_89, _T_226, _T_428) @[CircuitMath.scala 38:21]
    node _T_430 = cat(_T_89, _T_429) @[Cat.scala 30:58]
    node _GEN_1 = pad(_T_430, 8) @[primitives.scala 79:25]
    node _T_431 = sub(UInt<8>("ha0"), _GEN_1) @[primitives.scala 79:25]
    skip
    node estNormNeg_dist = tail(_T_431, 1) @[primitives.scala 79:25]
    node _T_433 = bits(sigSum, 75, 44) @[MulAddRecFN.scala 252:19]
    node _T_435 = neq(_T_433, UInt<32>("h0")) @[MulAddRecFN.scala 254:15]
    node _T_436 = bits(sigSum, 43, 0) @[MulAddRecFN.scala 255:19]
    node _T_438 = neq(_T_436, UInt<44>("h0")) @[MulAddRecFN.scala 255:57]
    node firstReduceSigSum = cat(_T_435, _T_438) @[Cat.scala 30:58]
    node complSigSum = not(sigSum) @[MulAddRecFN.scala 257:23]
    node _T_439 = bits(complSigSum, 75, 44) @[MulAddRecFN.scala 259:24]
    node _T_441 = neq(_T_439, UInt<32>("h0")) @[MulAddRecFN.scala 261:15]
    node _T_442 = bits(complSigSum, 43, 0) @[MulAddRecFN.scala 262:24]
    node _T_444 = neq(_T_442, UInt<44>("h0")) @[MulAddRecFN.scala 262:62]
    node firstReduceComplSigSum = cat(_T_441, _T_444) @[Cat.scala 30:58]
    node _T_445 = or(io_fromPreMul_CAlignDist_0, doSubMags) @[MulAddRecFN.scala 266:40]
    node _T_447 = sub(io_fromPreMul_CAlignDist, UInt<8>("h1")) @[MulAddRecFN.scala 268:39]
    skip
    node _T_449 = tail(_T_447, 1) @[MulAddRecFN.scala 268:39]
    node _T_450 = bits(_T_449, 5, 0) @[MulAddRecFN.scala 268:49]
    node CDom_estNormDist = mux(_T_445, io_fromPreMul_CAlignDist, pad(_T_450, 8)) @[MulAddRecFN.scala 266:12]
    node _T_452 = not(doSubMags) @[MulAddRecFN.scala 271:13]
    node _T_453 = bits(CDom_estNormDist, 5, 5) @[MulAddRecFN.scala 271:46]
    node _T_455 = not(_T_453) @[MulAddRecFN.scala 271:28]
    node _T_456 = and(_T_452, _T_455) @[MulAddRecFN.scala 271:25]
    node _T_457 = bits(sigSum, 161, 76) @[MulAddRecFN.scala 272:23]
    node _T_459 = neq(firstReduceSigSum, UInt<2>("h0")) @[MulAddRecFN.scala 273:35]
    node _T_460 = cat(_T_457, _T_459) @[Cat.scala 30:58]
    node _T_462 = mux(_T_456, _T_460, UInt<87>("h0")) @[MulAddRecFN.scala 271:12]
    skip
    skip
    node _T_466 = and(_T_452, _T_453) @[MulAddRecFN.scala 277:25]
    node _T_467 = bits(sigSum, 129, 44) @[MulAddRecFN.scala 278:23]
    node _T_468 = bits(firstReduceSigSum, 0, 0) @[MulAddRecFN.scala 282:34]
    node _T_469 = cat(_T_467, _T_468) @[Cat.scala 30:58]
    node _T_471 = mux(_T_466, _T_469, UInt<87>("h0")) @[MulAddRecFN.scala 277:12]
    node _T_472 = or(_T_462, _T_471) @[MulAddRecFN.scala 276:11]
    skip
    skip
    node _T_476 = and(doSubMags, _T_455) @[MulAddRecFN.scala 286:23]
    node _T_477 = bits(complSigSum, 161, 76) @[MulAddRecFN.scala 287:28]
    node _T_479 = neq(firstReduceComplSigSum, UInt<2>("h0")) @[MulAddRecFN.scala 288:40]
    node _T_480 = cat(_T_477, _T_479) @[Cat.scala 30:58]
    node _T_482 = mux(_T_476, _T_480, UInt<87>("h0")) @[MulAddRecFN.scala 286:12]
    node _T_483 = or(_T_472, _T_482) @[MulAddRecFN.scala 285:11]
    skip
    node _T_485 = and(doSubMags, _T_453) @[MulAddRecFN.scala 292:23]
    node _T_486 = bits(complSigSum, 129, 44) @[MulAddRecFN.scala 293:28]
    node _T_487 = bits(firstReduceComplSigSum, 0, 0) @[MulAddRecFN.scala 297:39]
    node _T_488 = cat(_T_486, _T_487) @[Cat.scala 30:58]
    node _T_490 = mux(_T_485, _T_488, UInt<87>("h0")) @[MulAddRecFN.scala 292:12]
    node CDom_firstNormAbsSigSum = or(_T_483, _T_490) @[MulAddRecFN.scala 291:11]
    node _T_491 = bits(sigSum, 108, 44) @[MulAddRecFN.scala 308:23]
    skip
    node _T_494 = not(_T_487) @[MulAddRecFN.scala 310:21]
    skip
    node _T_496 = mux(doSubMags, _T_494, _T_468) @[MulAddRecFN.scala 309:20]
    node _T_497 = cat(_T_491, _T_496) @[Cat.scala 30:58]
    skip
    node _T_499 = bits(estNormNeg_dist, 4, 4) @[MulAddRecFN.scala 316:37]
    node _T_500 = bits(sigSum, 1, 1) @[MulAddRecFN.scala 318:32]
    skip
    node _T_504 = mux(doSubMags, UInt<86>("h3fffffffffffffffffffff"), UInt<86>("h0")) @[Bitwise.scala 71:12]
    node _T_505 = cat(_T_500, _T_504) @[Cat.scala 30:58]
    node _T_506 = mux(_T_499, pad(_T_497, 87), _T_505) @[MulAddRecFN.scala 316:21]
    node _T_507 = bits(sigSum, 97, 12) @[MulAddRecFN.scala 324:28]
    node _T_508 = bits(complSigSum, 11, 1) @[MulAddRecFN.scala 329:39]
    node _T_510 = eq(_T_508, UInt<11>("h0")) @[MulAddRecFN.scala 329:77]
    node _T_511 = bits(sigSum, 11, 1) @[MulAddRecFN.scala 331:34]
    node _T_513 = neq(_T_511, UInt<11>("h0")) @[MulAddRecFN.scala 331:72]
    node _T_514 = mux(doSubMags, _T_510, _T_513) @[MulAddRecFN.scala 328:26]
    node _T_515 = cat(_T_507, _T_514) @[Cat.scala 30:58]
    node _T_516 = bits(estNormNeg_dist, 6, 6) @[MulAddRecFN.scala 338:28]
    node _T_517 = bits(estNormNeg_dist, 5, 5) @[MulAddRecFN.scala 339:33]
    node _T_518 = bits(sigSum, 65, 1) @[MulAddRecFN.scala 340:28]
    skip
    node _T_522 = mux(doSubMags, UInt<22>("h3fffff"), UInt<22>("h0")) @[Bitwise.scala 71:12]
    node _T_523 = cat(_T_518, _T_522) @[Cat.scala 30:58]
    node _T_524 = mux(_T_517, _T_523, _T_515) @[MulAddRecFN.scala 339:17]
    skip
    node _T_526 = bits(sigSum, 33, 1) @[MulAddRecFN.scala 347:28]
    skip
    node _T_530 = mux(doSubMags, UInt<54>("h3fffffffffffff"), UInt<54>("h0")) @[Bitwise.scala 71:12]
    node _T_531 = cat(_T_526, _T_530) @[Cat.scala 30:58]
    node _T_532 = mux(_T_517, _T_506, _T_531) @[MulAddRecFN.scala 345:17]
    node notCDom_pos_firstNormAbsSigSum = mux(_T_516, _T_524, _T_532) @[MulAddRecFN.scala 338:12]
    node _T_533 = bits(complSigSum, 107, 44) @[MulAddRecFN.scala 360:28]
    skip
    node _T_535 = cat(_T_533, _T_487) @[Cat.scala 30:58]
    skip
    skip
    node _T_538 = bits(complSigSum, 2, 1) @[MulAddRecFN.scala 367:33]
    node _T_539 = shl(_T_538, 86) @[MulAddRecFN.scala 367:68]
    node _T_540 = mux(_T_499, pad(_T_535, 88), _T_539) @[MulAddRecFN.scala 365:21]
    node _T_541 = bits(complSigSum, 98, 12) @[MulAddRecFN.scala 372:33]
    skip
    node _T_544 = neq(_T_508, UInt<11>("h0")) @[MulAddRecFN.scala 376:71]
    node _T_545 = cat(_T_541, _T_544) @[Cat.scala 30:58]
    skip
    skip
    node _T_548 = bits(complSigSum, 66, 1) @[MulAddRecFN.scala 381:29]
    node _T_549 = shl(_T_548, 22) @[MulAddRecFN.scala 381:64]
    node _T_550 = mux(_T_517, _T_549, _T_545) @[MulAddRecFN.scala 380:17]
    skip
    node _T_552 = bits(complSigSum, 34, 1) @[MulAddRecFN.scala 387:29]
    node _T_553 = shl(_T_552, 54) @[MulAddRecFN.scala 387:64]
    node _T_554 = mux(_T_517, _T_540, _T_553) @[MulAddRecFN.scala 385:17]
    node notCDom_neg_cFirstNormAbsSigSum = mux(_T_516, _T_550, _T_554) @[MulAddRecFN.scala 379:12]
    node notCDom_signSigSum = bits(sigSum, 109, 109) @[MulAddRecFN.scala 392:36]
    node _T_556 = not(isZeroC) @[MulAddRecFN.scala 395:26]
    node _T_557 = and(doSubMags, _T_556) @[MulAddRecFN.scala 395:23]
    node doNegSignSum = mux(io_fromPreMul_isCDominant, _T_557, notCDom_signSigSum) @[MulAddRecFN.scala 394:12]
    skip
    node estNormDist = mux(io_fromPreMul_isCDominant, CDom_estNormDist, estNormNeg_dist) @[MulAddRecFN.scala 399:12]
    node _T_559 = mux(io_fromPreMul_isCDominant, pad(CDom_firstNormAbsSigSum, 88), notCDom_neg_cFirstNormAbsSigSum) @[MulAddRecFN.scala 408:16]
    node _T_560 = mux(io_fromPreMul_isCDominant, CDom_firstNormAbsSigSum, notCDom_pos_firstNormAbsSigSum) @[MulAddRecFN.scala 412:16]
    node cFirstNormAbsSigSum = mux(notCDom_signSigSum, _T_559, pad(_T_560, 88)) @[MulAddRecFN.scala 407:12]
    node _T_562 = not(io_fromPreMul_isCDominant) @[MulAddRecFN.scala 418:9]
    node _T_564 = not(notCDom_signSigSum) @[MulAddRecFN.scala 418:40]
    node _T_565 = and(_T_562, _T_564) @[MulAddRecFN.scala 418:37]
    node doIncrSig = and(_T_565, doSubMags) @[MulAddRecFN.scala 418:61]
    node estNormDist_5 = bits(estNormDist, 4, 0) @[MulAddRecFN.scala 419:36]
    node normTo2ShiftDist = not(estNormDist_5) @[MulAddRecFN.scala 420:28]
    node _T_567 = dshr(SInt<33>("h-100000000"), normTo2ShiftDist) @[primitives.scala 68:52]
    node _T_568 = bits(_T_567, 31, 1) @[primitives.scala 69:26]
    node _T_569 = bits(_T_568, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_574 = shr(_T_569, 8) @[Bitwise.scala 102:21]
    node _T_575 = pad(_T_574, 16) @[Bitwise.scala 102:31]
    node _T_576 = bits(_T_569, 7, 0) @[Bitwise.scala 102:46]
    node _T_577 = shl(_T_576, 8) @[Bitwise.scala 102:65]
    skip
    node _T_579 = and(_T_577, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_580 = or(_T_575, _T_579) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_584 = shr(_T_580, 4) @[Bitwise.scala 102:21]
    node _GEN_2 = pad(_T_584, 16) @[Bitwise.scala 102:31]
    node _T_585 = and(_GEN_2, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_586 = bits(_T_580, 11, 0) @[Bitwise.scala 102:46]
    node _T_587 = shl(_T_586, 4) @[Bitwise.scala 102:65]
    skip
    node _T_589 = and(_T_587, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_590 = or(_T_585, _T_589) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_594 = shr(_T_590, 2) @[Bitwise.scala 102:21]
    node _GEN_3 = pad(_T_594, 16) @[Bitwise.scala 102:31]
    node _T_595 = and(_GEN_3, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_596 = bits(_T_590, 13, 0) @[Bitwise.scala 102:46]
    node _T_597 = shl(_T_596, 2) @[Bitwise.scala 102:65]
    skip
    node _T_599 = and(_T_597, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_600 = or(_T_595, _T_599) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_604 = shr(_T_600, 1) @[Bitwise.scala 102:21]
    node _GEN_4 = pad(_T_604, 16) @[Bitwise.scala 102:31]
    node _T_605 = and(_GEN_4, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_606 = bits(_T_600, 14, 0) @[Bitwise.scala 102:46]
    node _T_607 = shl(_T_606, 1) @[Bitwise.scala 102:65]
    skip
    node _T_609 = and(_T_607, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_610 = or(_T_605, _T_609) @[Bitwise.scala 102:39]
    node _T_611 = bits(_T_568, 30, 16) @[Bitwise.scala 108:44]
    node _T_612 = bits(_T_611, 7, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_617 = shr(_T_612, 4) @[Bitwise.scala 102:21]
    node _T_618 = pad(_T_617, 8) @[Bitwise.scala 102:31]
    node _T_619 = bits(_T_612, 3, 0) @[Bitwise.scala 102:46]
    node _T_620 = shl(_T_619, 4) @[Bitwise.scala 102:65]
    skip
    node _T_622 = and(_T_620, UInt<8>("hf0")) @[Bitwise.scala 102:75]
    node _T_623 = or(_T_618, _T_622) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_627 = shr(_T_623, 2) @[Bitwise.scala 102:21]
    node _GEN_5 = pad(_T_627, 8) @[Bitwise.scala 102:31]
    node _T_628 = and(_GEN_5, UInt<8>("h33")) @[Bitwise.scala 102:31]
    node _T_629 = bits(_T_623, 5, 0) @[Bitwise.scala 102:46]
    node _T_630 = shl(_T_629, 2) @[Bitwise.scala 102:65]
    skip
    node _T_632 = and(_T_630, UInt<8>("hcc")) @[Bitwise.scala 102:75]
    node _T_633 = or(_T_628, _T_632) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_637 = shr(_T_633, 1) @[Bitwise.scala 102:21]
    node _GEN_6 = pad(_T_637, 8) @[Bitwise.scala 102:31]
    node _T_638 = and(_GEN_6, UInt<8>("h55")) @[Bitwise.scala 102:31]
    node _T_639 = bits(_T_633, 6, 0) @[Bitwise.scala 102:46]
    node _T_640 = shl(_T_639, 1) @[Bitwise.scala 102:65]
    skip
    node _T_642 = and(_T_640, UInt<8>("haa")) @[Bitwise.scala 102:75]
    node _T_643 = or(_T_638, _T_642) @[Bitwise.scala 102:39]
    node _T_644 = bits(_T_611, 14, 8) @[Bitwise.scala 108:44]
    node _T_645 = bits(_T_644, 3, 0) @[Bitwise.scala 108:18]
    node _T_646 = bits(_T_645, 1, 0) @[Bitwise.scala 108:18]
    node _T_647 = bits(_T_646, 0, 0) @[Bitwise.scala 108:18]
    node _T_648 = bits(_T_646, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_650 = bits(_T_645, 3, 2) @[Bitwise.scala 108:44]
    node _T_651 = bits(_T_650, 0, 0) @[Bitwise.scala 108:18]
    node _T_652 = bits(_T_650, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_655 = bits(_T_644, 6, 4) @[Bitwise.scala 108:44]
    node _T_656 = bits(_T_655, 1, 0) @[Bitwise.scala 108:18]
    node _T_657 = bits(_T_656, 0, 0) @[Bitwise.scala 108:18]
    node _T_658 = bits(_T_656, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_660 = bits(_T_655, 2, 2) @[Bitwise.scala 108:44]
    skip
    skip
    skip
    skip
    node absSigSumExtraMask = cat(cat(_T_610, cat(_T_643, cat(cat(cat(_T_647, _T_648), cat(_T_651, _T_652)), cat(cat(_T_657, _T_658), _T_660)))), UInt<1>("h1")) @[Cat.scala 30:58]
    node _T_666 = bits(cFirstNormAbsSigSum, 87, 1) @[MulAddRecFN.scala 424:32]
    node _T_667 = dshr(_T_666, normTo2ShiftDist) @[MulAddRecFN.scala 424:65]
    node _T_668 = bits(cFirstNormAbsSigSum, 31, 0) @[MulAddRecFN.scala 427:39]
    node _T_669 = not(_T_668) @[MulAddRecFN.scala 427:19]
    node _T_670 = and(_T_669, absSigSumExtraMask) @[MulAddRecFN.scala 427:62]
    node _T_672 = eq(_T_670, UInt<32>("h0")) @[MulAddRecFN.scala 428:43]
    skip
    node _T_674 = and(_T_668, absSigSumExtraMask) @[MulAddRecFN.scala 430:61]
    node _T_676 = neq(_T_674, UInt<32>("h0")) @[MulAddRecFN.scala 431:43]
    node _T_677 = mux(doIncrSig, _T_672, _T_676) @[MulAddRecFN.scala 426:16]
    node _T_678 = cat(_T_667, _T_677) @[Cat.scala 30:58]
    node sigX3 = bits(_T_678, 56, 0) @[MulAddRecFN.scala 434:10]
    node _T_679 = bits(sigX3, 56, 55) @[MulAddRecFN.scala 436:29]
    node sigX3Shift1 = eq(_T_679, UInt<2>("h0")) @[MulAddRecFN.scala 436:58]
    node _GEN_7 = pad(estNormDist, 14) @[MulAddRecFN.scala 437:40]
    node _T_681 = sub(io_fromPreMul_sExpSum, _GEN_7) @[MulAddRecFN.scala 437:40]
    skip
    node sExpX3 = tail(_T_681, 1) @[MulAddRecFN.scala 437:40]
    node _T_683 = bits(sigX3, 56, 54) @[MulAddRecFN.scala 439:25]
    node isZeroY = eq(_T_683, UInt<3>("h0")) @[MulAddRecFN.scala 439:54]
    node _T_685 = xor(io_fromPreMul_signProd, doNegSignSum) @[MulAddRecFN.scala 444:36]
    node signY = mux(isZeroY, roundingMode_min, _T_685) @[MulAddRecFN.scala 442:12]
    node sExpX3_13 = bits(sExpX3, 12, 0) @[MulAddRecFN.scala 446:27]
    node _T_686 = bits(sExpX3, 13, 13) @[MulAddRecFN.scala 448:34]
    skip
    node _T_690 = mux(_T_686, UInt<56>("hffffffffffffff"), UInt<56>("h0")) @[Bitwise.scala 71:12]
    node _T_691 = not(sExpX3_13) @[primitives.scala 50:21]
    node _T_692 = bits(_T_691, 12, 12) @[primitives.scala 56:25]
    node _T_693 = bits(_T_691, 11, 0) @[primitives.scala 57:26]
    node _T_694 = bits(_T_693, 11, 11) @[primitives.scala 56:25]
    node _T_695 = bits(_T_693, 10, 0) @[primitives.scala 57:26]
    node _T_696 = bits(_T_695, 10, 10) @[primitives.scala 56:25]
    node _T_697 = bits(_T_695, 9, 0) @[primitives.scala 57:26]
    node _T_698 = bits(_T_697, 9, 9) @[primitives.scala 56:25]
    node _T_699 = bits(_T_697, 8, 0) @[primitives.scala 57:26]
    node _T_701 = bits(_T_699, 8, 8) @[primitives.scala 56:25]
    node _T_702 = bits(_T_699, 7, 0) @[primitives.scala 57:26]
    node _T_704 = bits(_T_702, 7, 7) @[primitives.scala 56:25]
    node _T_705 = bits(_T_702, 6, 0) @[primitives.scala 57:26]
    node _T_707 = bits(_T_705, 6, 6) @[primitives.scala 56:25]
    node _T_708 = bits(_T_705, 5, 0) @[primitives.scala 57:26]
    node _T_711 = dshr(SInt<65>("h-10000000000000000"), _T_708) @[primitives.scala 68:52]
    node _T_712 = bits(_T_711, 63, 14) @[primitives.scala 69:26]
    node _T_713 = bits(_T_712, 31, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_718 = shr(_T_713, 16) @[Bitwise.scala 102:21]
    node _T_719 = pad(_T_718, 32) @[Bitwise.scala 102:31]
    node _T_720 = bits(_T_713, 15, 0) @[Bitwise.scala 102:46]
    node _T_721 = shl(_T_720, 16) @[Bitwise.scala 102:65]
    skip
    node _T_723 = and(_T_721, UInt<32>("hffff0000")) @[Bitwise.scala 102:75]
    node _T_724 = or(_T_719, _T_723) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_728 = shr(_T_724, 8) @[Bitwise.scala 102:21]
    node _GEN_8 = pad(_T_728, 32) @[Bitwise.scala 102:31]
    node _T_729 = and(_GEN_8, UInt<32>("hff00ff")) @[Bitwise.scala 102:31]
    node _T_730 = bits(_T_724, 23, 0) @[Bitwise.scala 102:46]
    node _T_731 = shl(_T_730, 8) @[Bitwise.scala 102:65]
    skip
    node _T_733 = and(_T_731, UInt<32>("hff00ff00")) @[Bitwise.scala 102:75]
    node _T_734 = or(_T_729, _T_733) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_738 = shr(_T_734, 4) @[Bitwise.scala 102:21]
    node _GEN_9 = pad(_T_738, 32) @[Bitwise.scala 102:31]
    node _T_739 = and(_GEN_9, UInt<32>("hf0f0f0f")) @[Bitwise.scala 102:31]
    node _T_740 = bits(_T_734, 27, 0) @[Bitwise.scala 102:46]
    node _T_741 = shl(_T_740, 4) @[Bitwise.scala 102:65]
    skip
    node _T_743 = and(_T_741, UInt<32>("hf0f0f0f0")) @[Bitwise.scala 102:75]
    node _T_744 = or(_T_739, _T_743) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_748 = shr(_T_744, 2) @[Bitwise.scala 102:21]
    node _GEN_10 = pad(_T_748, 32) @[Bitwise.scala 102:31]
    node _T_749 = and(_GEN_10, UInt<32>("h33333333")) @[Bitwise.scala 102:31]
    node _T_750 = bits(_T_744, 29, 0) @[Bitwise.scala 102:46]
    node _T_751 = shl(_T_750, 2) @[Bitwise.scala 102:65]
    skip
    node _T_753 = and(_T_751, UInt<32>("hcccccccc")) @[Bitwise.scala 102:75]
    node _T_754 = or(_T_749, _T_753) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_758 = shr(_T_754, 1) @[Bitwise.scala 102:21]
    node _GEN_11 = pad(_T_758, 32) @[Bitwise.scala 102:31]
    node _T_759 = and(_GEN_11, UInt<32>("h55555555")) @[Bitwise.scala 102:31]
    node _T_760 = bits(_T_754, 30, 0) @[Bitwise.scala 102:46]
    node _T_761 = shl(_T_760, 1) @[Bitwise.scala 102:65]
    skip
    node _T_763 = and(_T_761, UInt<32>("haaaaaaaa")) @[Bitwise.scala 102:75]
    node _T_764 = or(_T_759, _T_763) @[Bitwise.scala 102:39]
    node _T_765 = bits(_T_712, 49, 32) @[Bitwise.scala 108:44]
    node _T_766 = bits(_T_765, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_771 = shr(_T_766, 8) @[Bitwise.scala 102:21]
    node _T_772 = pad(_T_771, 16) @[Bitwise.scala 102:31]
    node _T_773 = bits(_T_766, 7, 0) @[Bitwise.scala 102:46]
    node _T_774 = shl(_T_773, 8) @[Bitwise.scala 102:65]
    skip
    node _T_776 = and(_T_774, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_777 = or(_T_772, _T_776) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_781 = shr(_T_777, 4) @[Bitwise.scala 102:21]
    node _GEN_12 = pad(_T_781, 16) @[Bitwise.scala 102:31]
    node _T_782 = and(_GEN_12, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_783 = bits(_T_777, 11, 0) @[Bitwise.scala 102:46]
    node _T_784 = shl(_T_783, 4) @[Bitwise.scala 102:65]
    skip
    node _T_786 = and(_T_784, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_787 = or(_T_782, _T_786) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_791 = shr(_T_787, 2) @[Bitwise.scala 102:21]
    node _GEN_13 = pad(_T_791, 16) @[Bitwise.scala 102:31]
    node _T_792 = and(_GEN_13, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_793 = bits(_T_787, 13, 0) @[Bitwise.scala 102:46]
    node _T_794 = shl(_T_793, 2) @[Bitwise.scala 102:65]
    skip
    node _T_796 = and(_T_794, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_797 = or(_T_792, _T_796) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_801 = shr(_T_797, 1) @[Bitwise.scala 102:21]
    node _GEN_14 = pad(_T_801, 16) @[Bitwise.scala 102:31]
    node _T_802 = and(_GEN_14, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_803 = bits(_T_797, 14, 0) @[Bitwise.scala 102:46]
    node _T_804 = shl(_T_803, 1) @[Bitwise.scala 102:65]
    skip
    node _T_806 = and(_T_804, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_807 = or(_T_802, _T_806) @[Bitwise.scala 102:39]
    node _T_808 = bits(_T_765, 17, 16) @[Bitwise.scala 108:44]
    node _T_809 = bits(_T_808, 0, 0) @[Bitwise.scala 108:18]
    node _T_810 = bits(_T_808, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_813 = cat(_T_764, cat(_T_807, cat(_T_809, _T_810))) @[Cat.scala 30:58]
    node _T_814 = not(_T_813) @[primitives.scala 65:36]
    node _T_815 = mux(_T_707, UInt<50>("h0"), _T_814) @[primitives.scala 65:21]
    node _T_816 = not(_T_815) @[primitives.scala 65:17]
    node _T_817 = not(_T_816) @[primitives.scala 65:36]
    node _T_818 = mux(_T_704, UInt<50>("h0"), _T_817) @[primitives.scala 65:21]
    node _T_819 = not(_T_818) @[primitives.scala 65:17]
    node _T_820 = not(_T_819) @[primitives.scala 65:36]
    node _T_821 = mux(_T_701, UInt<50>("h0"), _T_820) @[primitives.scala 65:21]
    node _T_822 = not(_T_821) @[primitives.scala 65:17]
    node _T_823 = not(_T_822) @[primitives.scala 65:36]
    node _T_824 = mux(_T_698, UInt<50>("h0"), _T_823) @[primitives.scala 65:21]
    node _T_825 = not(_T_824) @[primitives.scala 65:17]
    node _T_827 = cat(_T_825, UInt<4>("hf")) @[Cat.scala 30:58]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_838 = bits(_T_711, 3, 0) @[primitives.scala 69:26]
    node _T_839 = bits(_T_838, 1, 0) @[Bitwise.scala 108:18]
    node _T_840 = bits(_T_839, 0, 0) @[Bitwise.scala 108:18]
    node _T_841 = bits(_T_839, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_843 = bits(_T_838, 3, 2) @[Bitwise.scala 108:44]
    node _T_844 = bits(_T_843, 0, 0) @[Bitwise.scala 108:18]
    node _T_845 = bits(_T_843, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_847 = cat(cat(_T_840, _T_841), cat(_T_844, _T_845)) @[Cat.scala 30:58]
    node _T_849 = mux(_T_707, _T_847, UInt<4>("h0")) @[primitives.scala 59:20]
    node _T_851 = mux(_T_704, _T_849, UInt<4>("h0")) @[primitives.scala 59:20]
    node _T_853 = mux(_T_701, _T_851, UInt<4>("h0")) @[primitives.scala 59:20]
    node _T_855 = mux(_T_698, _T_853, UInt<4>("h0")) @[primitives.scala 59:20]
    node _T_856 = mux(_T_696, _T_827, pad(_T_855, 54)) @[primitives.scala 61:20]
    node _T_858 = mux(_T_694, _T_856, UInt<54>("h0")) @[primitives.scala 59:20]
    node _T_860 = mux(_T_692, _T_858, UInt<54>("h0")) @[primitives.scala 59:20]
    node _T_861 = bits(sigX3, 55, 55) @[MulAddRecFN.scala 450:26]
    node _GEN_15 = pad(_T_861, 54) @[MulAddRecFN.scala 449:75]
    node _T_862 = or(_T_860, _GEN_15) @[MulAddRecFN.scala 449:75]
    node _T_864 = cat(_T_862, UInt<2>("h3")) @[Cat.scala 30:58]
    node roundMask = or(_T_690, _T_864) @[MulAddRecFN.scala 448:50]
    node _T_865 = shr(roundMask, 1) @[MulAddRecFN.scala 454:35]
    node _T_866 = not(_T_865) @[MulAddRecFN.scala 454:24]
    node _GEN_16 = pad(_T_866, 56) @[MulAddRecFN.scala 454:40]
    node roundPosMask = and(_GEN_16, roundMask) @[MulAddRecFN.scala 454:40]
    node _GEN_17 = pad(roundPosMask, 57) @[MulAddRecFN.scala 455:30]
    node _T_867 = and(sigX3, _GEN_17) @[MulAddRecFN.scala 455:30]
    node roundPosBit = neq(_T_867, UInt<57>("h0")) @[MulAddRecFN.scala 455:46]
    skip
    node _GEN_18 = pad(_T_865, 57) @[MulAddRecFN.scala 456:34]
    node _T_870 = and(sigX3, _GEN_18) @[MulAddRecFN.scala 456:34]
    node anyRoundExtra = neq(_T_870, UInt<57>("h0")) @[MulAddRecFN.scala 456:50]
    node _T_872 = not(sigX3) @[MulAddRecFN.scala 457:27]
    skip
    skip
    node _T_874 = and(_T_872, _GEN_18) @[MulAddRecFN.scala 457:34]
    node allRoundExtra = eq(_T_874, UInt<57>("h0")) @[MulAddRecFN.scala 457:50]
    node anyRound = or(roundPosBit, anyRoundExtra) @[MulAddRecFN.scala 458:32]
    node allRound = and(roundPosBit, allRoundExtra) @[MulAddRecFN.scala 459:32]
    node roundDirectUp = mux(signY, roundingMode_min, roundingMode_max) @[MulAddRecFN.scala 460:28]
    node _T_877 = not(doIncrSig) @[MulAddRecFN.scala 462:10]
    node _T_878 = and(_T_877, roundingMode_nearest_even) @[MulAddRecFN.scala 462:22]
    node _T_879 = and(_T_878, roundPosBit) @[MulAddRecFN.scala 462:51]
    node _T_880 = and(_T_879, anyRoundExtra) @[MulAddRecFN.scala 463:60]
    skip
    node _T_883 = and(_T_877, roundDirectUp) @[MulAddRecFN.scala 464:22]
    node _T_884 = and(_T_883, anyRound) @[MulAddRecFN.scala 464:49]
    node _T_885 = or(_T_880, _T_884) @[MulAddRecFN.scala 463:78]
    node _T_886 = and(doIncrSig, allRound) @[MulAddRecFN.scala 465:49]
    node _T_887 = or(_T_885, _T_886) @[MulAddRecFN.scala 464:65]
    node _T_888 = and(doIncrSig, roundingMode_nearest_even) @[MulAddRecFN.scala 466:20]
    node _T_889 = and(_T_888, roundPosBit) @[MulAddRecFN.scala 466:49]
    node _T_890 = or(_T_887, _T_889) @[MulAddRecFN.scala 465:65]
    node _T_891 = and(doIncrSig, roundDirectUp) @[MulAddRecFN.scala 467:20]
    skip
    node roundUp = or(_T_890, _T_891) @[MulAddRecFN.scala 466:65]
    node _T_895 = not(roundPosBit) @[MulAddRecFN.scala 470:42]
    node _T_896 = and(roundingMode_nearest_even, _T_895) @[MulAddRecFN.scala 470:39]
    node _T_897 = and(_T_896, allRoundExtra) @[MulAddRecFN.scala 470:56]
    node _T_898 = and(roundingMode_nearest_even, roundPosBit) @[MulAddRecFN.scala 471:39]
    node _T_900 = not(anyRoundExtra) @[MulAddRecFN.scala 471:59]
    node _T_901 = and(_T_898, _T_900) @[MulAddRecFN.scala 471:56]
    node roundEven = mux(doIncrSig, _T_897, _T_901) @[MulAddRecFN.scala 469:12]
    node _T_903 = not(allRound) @[MulAddRecFN.scala 473:39]
    node inexactY = mux(doIncrSig, _T_903, anyRound) @[MulAddRecFN.scala 473:27]
    node _GEN_20 = pad(roundMask, 57) @[MulAddRecFN.scala 475:18]
    node _T_904 = or(sigX3, _GEN_20) @[MulAddRecFN.scala 475:18]
    node _T_905 = shr(_T_904, 2) @[MulAddRecFN.scala 475:30]
    node _T_907 = add(_T_905, UInt<55>("h1")) @[MulAddRecFN.scala 475:35]
    node roundUp_sigY3 = tail(_T_907, 1) @[MulAddRecFN.scala 475:35]
    skip
    node _T_910 = not(roundUp) @[MulAddRecFN.scala 477:13]
    node _T_912 = not(roundEven) @[MulAddRecFN.scala 477:26]
    node _T_913 = and(_T_910, _T_912) @[MulAddRecFN.scala 477:23]
    node _T_914 = not(roundMask) @[MulAddRecFN.scala 477:48]
    node _GEN_21 = pad(_T_914, 57) @[MulAddRecFN.scala 477:46]
    node _T_915 = and(sigX3, _GEN_21) @[MulAddRecFN.scala 477:46]
    node _T_916 = shr(_T_915, 2) @[MulAddRecFN.scala 477:59]
    node _T_918 = mux(_T_913, _T_916, UInt<55>("h0")) @[MulAddRecFN.scala 477:12]
    node _T_920 = mux(roundUp, roundUp_sigY3, UInt<55>("h0")) @[MulAddRecFN.scala 478:12]
    node _T_921 = or(_T_918, _T_920) @[MulAddRecFN.scala 477:79]
    skip
    skip
    node _T_924 = and(roundUp_sigY3, _T_866) @[MulAddRecFN.scala 479:51]
    node _T_926 = mux(roundEven, _T_924, UInt<55>("h0")) @[MulAddRecFN.scala 479:12]
    node sigY3 = or(_T_921, _T_926) @[MulAddRecFN.scala 478:79]
    node _T_927 = bits(sigY3, 54, 54) @[MulAddRecFN.scala 482:18]
    node _T_929 = add(sExpX3, UInt<14>("h1")) @[MulAddRecFN.scala 482:41]
    node _T_930 = tail(_T_929, 1) @[MulAddRecFN.scala 482:41]
    node _T_932 = mux(_T_927, _T_930, UInt<14>("h0")) @[MulAddRecFN.scala 482:12]
    node _T_933 = bits(sigY3, 53, 53) @[MulAddRecFN.scala 483:18]
    node _T_935 = mux(_T_933, sExpX3, UInt<14>("h0")) @[MulAddRecFN.scala 483:12]
    node _T_936 = or(_T_932, _T_935) @[MulAddRecFN.scala 482:61]
    node _T_937 = bits(sigY3, 54, 53) @[MulAddRecFN.scala 484:19]
    node _T_939 = eq(_T_937, UInt<2>("h0")) @[MulAddRecFN.scala 484:44]
    node _T_941 = sub(sExpX3, UInt<14>("h1")) @[MulAddRecFN.scala 485:20]
    skip
    node _T_943 = tail(_T_941, 1) @[MulAddRecFN.scala 485:20]
    node _T_945 = mux(_T_939, _T_943, UInt<14>("h0")) @[MulAddRecFN.scala 484:12]
    node sExpY = or(_T_936, _T_945) @[MulAddRecFN.scala 483:61]
    node expY = bits(sExpY, 11, 0) @[MulAddRecFN.scala 488:21]
    node _T_946 = bits(sigY3, 51, 0) @[MulAddRecFN.scala 490:31]
    node _T_947 = bits(sigY3, 52, 1) @[MulAddRecFN.scala 490:55]
    node fractY = mux(sigX3Shift1, _T_946, _T_947) @[MulAddRecFN.scala 490:12]
    node _T_948 = bits(sExpY, 12, 10) @[MulAddRecFN.scala 492:27]
    node overflowY = eq(_T_948, UInt<3>("h3")) @[MulAddRecFN.scala 492:56]
    node _T_951 = not(isZeroY) @[MulAddRecFN.scala 495:9]
    node _T_952 = bits(sExpY, 12, 12) @[MulAddRecFN.scala 496:19]
    skip
    node _T_955 = lt(expY, UInt<12>("h3ce")) @[MulAddRecFN.scala 496:57]
    node _T_956 = or(_T_952, _T_955) @[MulAddRecFN.scala 496:34]
    node totalUnderflowY = and(_T_951, _T_956) @[MulAddRecFN.scala 495:19]
    skip
    node _T_960 = mux(sigX3Shift1, UInt<11>("h402"), UInt<11>("h401")) @[MulAddRecFN.scala 501:26]
    node _GEN_22 = pad(_T_960, 13) @[MulAddRecFN.scala 500:29]
    node _T_961 = leq(sExpX3_13, _GEN_22) @[MulAddRecFN.scala 500:29]
    node _T_962 = or(_T_686, _T_961) @[MulAddRecFN.scala 499:35]
    node underflowY = and(inexactY, _T_962) @[MulAddRecFN.scala 498:22]
    node _T_963 = and(roundingMode_min, signY) @[MulAddRecFN.scala 506:27]
    node _T_965 = not(signY) @[MulAddRecFN.scala 506:61]
    node _T_966 = and(roundingMode_max, _T_965) @[MulAddRecFN.scala 506:58]
    node roundMagUp = or(_T_963, _T_966) @[MulAddRecFN.scala 506:37]
    node overflowY_roundMagUp = or(roundingMode_nearest_even, roundMagUp) @[MulAddRecFN.scala 507:58]
    node mulSpecial = or(isSpecialA, isSpecialB) @[MulAddRecFN.scala 511:33]
    node addSpecial = or(mulSpecial, isSpecialC) @[MulAddRecFN.scala 512:33]
    node notSpecial_addZeros = and(io_fromPreMul_isZeroProd, isZeroC) @[MulAddRecFN.scala 513:56]
    node _T_968 = not(addSpecial) @[MulAddRecFN.scala 514:22]
    node _T_970 = not(notSpecial_addZeros) @[MulAddRecFN.scala 514:38]
    node commonCase = and(_T_968, _T_970) @[MulAddRecFN.scala 514:35]
    node _T_971 = and(isInfA, isZeroB) @[MulAddRecFN.scala 517:17]
    node _T_972 = and(isZeroA, isInfB) @[MulAddRecFN.scala 517:41]
    node _T_973 = or(_T_971, _T_972) @[MulAddRecFN.scala 517:29]
    node _T_975 = not(isNaNA) @[MulAddRecFN.scala 518:14]
    node _T_977 = not(isNaNB) @[MulAddRecFN.scala 518:26]
    node _T_978 = and(_T_975, _T_977) @[MulAddRecFN.scala 518:23]
    node _T_979 = or(isInfA, isInfB) @[MulAddRecFN.scala 518:46]
    node _T_980 = and(_T_978, _T_979) @[MulAddRecFN.scala 518:35]
    node _T_981 = and(_T_980, isInfC) @[MulAddRecFN.scala 518:57]
    node _T_982 = and(_T_981, doSubMags) @[MulAddRecFN.scala 518:67]
    node notSigNaN_invalid = or(_T_973, _T_982) @[MulAddRecFN.scala 517:52]
    node _T_983 = or(isSigNaNA, isSigNaNB) @[MulAddRecFN.scala 519:29]
    node _T_984 = or(_T_983, isSigNaNC) @[MulAddRecFN.scala 519:42]
    node invalid = or(_T_984, notSigNaN_invalid) @[MulAddRecFN.scala 519:55]
    node overflow = and(commonCase, overflowY) @[MulAddRecFN.scala 520:32]
    node underflow = and(commonCase, underflowY) @[MulAddRecFN.scala 521:32]
    node _T_985 = and(commonCase, inexactY) @[MulAddRecFN.scala 522:43]
    node inexact = or(overflow, _T_985) @[MulAddRecFN.scala 522:28]
    node _T_986 = or(notSpecial_addZeros, isZeroY) @[MulAddRecFN.scala 525:29]
    node notSpecial_isZeroOut = or(_T_986, totalUnderflowY) @[MulAddRecFN.scala 525:40]
    node _T_987 = and(commonCase, totalUnderflowY) @[MulAddRecFN.scala 526:41]
    node pegMinFiniteMagOut = and(_T_987, roundMagUp) @[MulAddRecFN.scala 526:60]
    node _T_989 = not(overflowY_roundMagUp) @[MulAddRecFN.scala 527:42]
    node pegMaxFiniteMagOut = and(overflow, _T_989) @[MulAddRecFN.scala 527:39]
    skip
    node _T_991 = or(_T_979, isInfC) @[MulAddRecFN.scala 529:26]
    node _T_992 = and(overflow, overflowY_roundMagUp) @[MulAddRecFN.scala 529:49]
    node notNaN_isInfOut = or(_T_991, _T_992) @[MulAddRecFN.scala 529:36]
    node _T_993 = or(isNaNA, isNaNB) @[MulAddRecFN.scala 530:27]
    node _T_994 = or(_T_993, isNaNC) @[MulAddRecFN.scala 530:37]
    node isNaNOut = or(_T_994, notSigNaN_invalid) @[MulAddRecFN.scala 530:47]
    skip
    node _T_997 = and(_T_452, io_fromPreMul_opSignC) @[MulAddRecFN.scala 533:51]
    node _T_999 = not(isSpecialC) @[MulAddRecFN.scala 534:24]
    node _T_1000 = and(mulSpecial, _T_999) @[MulAddRecFN.scala 534:21]
    node _T_1001 = and(_T_1000, io_fromPreMul_signProd) @[MulAddRecFN.scala 534:51]
    node _T_1002 = or(_T_997, _T_1001) @[MulAddRecFN.scala 533:78]
    node _T_1004 = not(mulSpecial) @[MulAddRecFN.scala 535:10]
    node _T_1005 = and(_T_1004, isSpecialC) @[MulAddRecFN.scala 535:23]
    node _T_1006 = and(_T_1005, io_fromPreMul_opSignC) @[MulAddRecFN.scala 535:51]
    node _T_1007 = or(_T_1002, _T_1006) @[MulAddRecFN.scala 534:78]
    skip
    node _T_1010 = and(_T_1004, notSpecial_addZeros) @[MulAddRecFN.scala 536:23]
    node _T_1011 = and(_T_1010, doSubMags) @[MulAddRecFN.scala 536:46]
    node _T_1012 = and(_T_1011, roundingMode_min) @[MulAddRecFN.scala 536:59]
    node uncommonCaseSignOut = or(_T_1007, _T_1012) @[MulAddRecFN.scala 535:78]
    node _T_1014 = not(isNaNOut) @[MulAddRecFN.scala 538:20]
    node _T_1015 = and(_T_1014, uncommonCaseSignOut) @[MulAddRecFN.scala 538:31]
    node _T_1016 = and(commonCase, signY) @[MulAddRecFN.scala 538:70]
    node signOut = or(_T_1015, _T_1016) @[MulAddRecFN.scala 538:55]
    node _T_1019 = mux(notSpecial_isZeroOut, UInt<12>("he00"), UInt<12>("h0")) @[MulAddRecFN.scala 541:18]
    node _T_1020 = not(_T_1019) @[MulAddRecFN.scala 541:14]
    node _T_1021 = and(expY, _T_1020) @[MulAddRecFN.scala 540:15]
    skip
    node _T_1025 = mux(pegMinFiniteMagOut, UInt<12>("hc31"), UInt<12>("h0")) @[MulAddRecFN.scala 545:18]
    node _T_1026 = not(_T_1025) @[MulAddRecFN.scala 545:14]
    node _T_1027 = and(_T_1021, _T_1026) @[MulAddRecFN.scala 544:17]
    node _T_1030 = mux(pegMaxFiniteMagOut, UInt<12>("h400"), UInt<12>("h0")) @[MulAddRecFN.scala 549:18]
    node _T_1031 = not(_T_1030) @[MulAddRecFN.scala 549:14]
    node _T_1032 = and(_T_1027, _T_1031) @[MulAddRecFN.scala 548:17]
    node _T_1035 = mux(notNaN_isInfOut, UInt<12>("h200"), UInt<12>("h0")) @[MulAddRecFN.scala 553:18]
    node _T_1036 = not(_T_1035) @[MulAddRecFN.scala 553:14]
    node _T_1037 = and(_T_1032, _T_1036) @[MulAddRecFN.scala 552:17]
    node _T_1040 = mux(pegMinFiniteMagOut, UInt<12>("h3ce"), UInt<12>("h0")) @[MulAddRecFN.scala 557:16]
    node _T_1041 = or(_T_1037, _T_1040) @[MulAddRecFN.scala 556:18]
    node _T_1044 = mux(pegMaxFiniteMagOut, UInt<12>("hbff"), UInt<12>("h0")) @[MulAddRecFN.scala 558:16]
    node _T_1045 = or(_T_1041, _T_1044) @[MulAddRecFN.scala 557:74]
    node _T_1048 = mux(notNaN_isInfOut, UInt<12>("hc00"), UInt<12>("h0")) @[MulAddRecFN.scala 562:16]
    node _T_1049 = or(_T_1045, _T_1048) @[MulAddRecFN.scala 561:15]
    node _T_1052 = mux(isNaNOut, UInt<12>("he00"), UInt<12>("h0")) @[MulAddRecFN.scala 566:16]
    node expOut = or(_T_1049, _T_1052) @[MulAddRecFN.scala 565:15]
    node _T_1053 = and(totalUnderflowY, roundMagUp) @[MulAddRecFN.scala 568:30]
    node _T_1054 = or(_T_1053, isNaNOut) @[MulAddRecFN.scala 568:45]
    skip
    node _T_1058 = mux(isNaNOut, UInt<52>("h8000000000000"), UInt<52>("h0")) @[MulAddRecFN.scala 569:16]
    node _T_1059 = mux(_T_1054, _T_1058, fractY) @[MulAddRecFN.scala 568:12]
    skip
    node _T_1063 = mux(pegMaxFiniteMagOut, UInt<52>("hfffffffffffff"), UInt<52>("h0")) @[Bitwise.scala 71:12]
    node fractOut = or(_T_1059, _T_1063) @[MulAddRecFN.scala 571:11]
    node _T_1064 = cat(signOut, expOut) @[Cat.scala 30:58]
    skip
    node _T_1067 = cat(underflow, inexact) @[Cat.scala 30:58]
    skip
    node _T_1069 = cat(cat(invalid, UInt<1>("h0")), overflow) @[Cat.scala 30:58]
    skip
    io_out <= cat(_T_1064, fractOut) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(_T_1069, _T_1067) @[Cat.scala 30:58]

  module MulAddRecFN_1 :
    input io_op : UInt<2>
    input io_a : UInt<65>
    input io_b : UInt<65>
    input io_c : UInt<65>
    input io_roundingMode : UInt<2>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>

    inst mulAddRecFN_preMul of MulAddRecFN_preMul_1 @[MulAddRecFN.scala 598:15]
    inst mulAddRecFN_postMul of MulAddRecFN_postMul_1 @[MulAddRecFN.scala 600:15]
    node _T_16 = mul(mulAddRecFN_preMul.io_mulAddA, mulAddRecFN_preMul.io_mulAddB) @[MulAddRecFN.scala 610:39]
    node _T_18 = cat(UInt<1>("h0"), mulAddRecFN_preMul.io_mulAddC) @[Cat.scala 30:58]
    node _GEN_0 = pad(_T_16, 107) @[MulAddRecFN.scala 610:71]
    node _T_19 = add(_GEN_0, _T_18) @[MulAddRecFN.scala 610:71]
    skip
    io_out <= mulAddRecFN_postMul.io_out @[MulAddRecFN.scala 613:12]
    io_exceptionFlags <= mulAddRecFN_postMul.io_exceptionFlags @[MulAddRecFN.scala 614:23]
    skip
    skip
    mulAddRecFN_preMul.io_op <= io_op @[MulAddRecFN.scala 602:30]
    mulAddRecFN_preMul.io_a <= io_a @[MulAddRecFN.scala 603:30]
    mulAddRecFN_preMul.io_b <= io_b @[MulAddRecFN.scala 604:30]
    mulAddRecFN_preMul.io_c <= io_c @[MulAddRecFN.scala 605:30]
    mulAddRecFN_preMul.io_roundingMode <= io_roundingMode @[MulAddRecFN.scala 606:40]
    skip
    skip
    mulAddRecFN_postMul.io_fromPreMul_highExpA <= mulAddRecFN_preMul.io_toPostMul_highExpA @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNA <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNA @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highExpB <= mulAddRecFN_preMul.io_toPostMul_highExpB @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNB <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNB @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_signProd <= mulAddRecFN_preMul.io_toPostMul_signProd @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isZeroProd <= mulAddRecFN_preMul.io_toPostMul_isZeroProd @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_opSignC <= mulAddRecFN_preMul.io_toPostMul_opSignC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highExpC <= mulAddRecFN_preMul.io_toPostMul_highExpC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isNaN_isQuietNaNC <= mulAddRecFN_preMul.io_toPostMul_isNaN_isQuietNaNC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_isCDominant <= mulAddRecFN_preMul.io_toPostMul_isCDominant @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_CAlignDist_0 <= mulAddRecFN_preMul.io_toPostMul_CAlignDist_0 @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_CAlignDist <= mulAddRecFN_preMul.io_toPostMul_CAlignDist @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_bit0AlignedNegSigC <= mulAddRecFN_preMul.io_toPostMul_bit0AlignedNegSigC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_highAlignedNegSigC <= mulAddRecFN_preMul.io_toPostMul_highAlignedNegSigC @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_sExpSum <= mulAddRecFN_preMul.io_toPostMul_sExpSum @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_fromPreMul_roundingMode <= mulAddRecFN_preMul.io_toPostMul_roundingMode @[MulAddRecFN.scala 608:39]
    mulAddRecFN_postMul.io_mulAddResult <= tail(_T_19, 1) @[MulAddRecFN.scala 610:71]

  module FPUFMAPipe_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in_valid : UInt<1>
    input io_in_bits_cmd : UInt<5>
    input io_in_bits_ren3 : UInt<1>
    input io_in_bits_swap23 : UInt<1>
    input io_in_bits_rm : UInt<3>
    input io_in_bits_in1 : UInt<65>
    input io_in_bits_in2 : UInt<65>
    input io_in_bits_in3 : UInt<65>
    output io_out_bits_data : UInt<65>
    output io_out_bits_exc : UInt<5>

    inst fma of MulAddRecFN_1 @[FPU.scala 493:19]
    skip
    node _T_131 = bits(io_in_bits_in1, 64, 64) @[FPU.scala 480:29]
    node _T_132 = bits(io_in_bits_in2, 64, 64) @[FPU.scala 480:53]
    node _T_133 = xor(_T_131, _T_132) @[FPU.scala 480:37]
    node zero = shl(_T_133, 64) @[FPU.scala 480:62]
    reg valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid) @[FPU.scala 482:18]
    reg in_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), in_cmd) @[FPU.scala 483:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg in_rm : UInt<3>, clock with :
      reset => (UInt<1>("h0"), in_rm) @[FPU.scala 483:15]
    skip
    reg in_in1 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in1) @[FPU.scala 483:15]
    reg in_in2 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in2) @[FPU.scala 483:15]
    reg in_in3 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), in_in3) @[FPU.scala 483:15]
    node _T_177 = bits(io_in_bits_cmd, 1, 1) @[FPU.scala 488:33]
    node _T_178 = or(io_in_bits_ren3, io_in_bits_swap23) @[FPU.scala 488:48]
    node _T_179 = and(_T_177, _T_178) @[FPU.scala 488:37]
    node _T_180 = bits(io_in_bits_cmd, 0, 0) @[FPU.scala 488:78]
    node _T_181 = cat(_T_179, _T_180) @[Cat.scala 30:58]
    node _GEN_0 = mux(io_in_bits_swap23, UInt<65>("h8000000000000000"), io_in_bits_in2) @[FPU.scala 489:23 FPU.scala 489:32 FPU.scala 485:8]
    skip
    node _T_184 = not(_T_178) @[Conditional.scala 19:11]
    node _GEN_1 = mux(_T_184, zero, io_in_bits_in3) @[Conditional.scala 19:15 FPU.scala 490:45 FPU.scala 485:8]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg _T_192 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_192) @[Valid.scala 47:18]
    reg _T_196_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_196_data) @[Reg.scala 34:16]
    reg _T_196_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_196_exc) @[Reg.scala 34:16]
    node res_data = fma.io_out @[FPU.scala 500:17 FPU.scala 501:12]
    skip
    node res_exc = fma.io_exceptionFlags @[FPU.scala 500:17 FPU.scala 502:11]
    skip
    reg _T_201 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_201) @[Valid.scala 47:18]
    reg _T_205_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_205_data) @[Reg.scala 34:16]
    reg _T_205_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_205_exc) @[Reg.scala 34:16]
    skip
    skip
    skip
    reg _T_214_data : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_214_data) @[Reg.scala 34:16]
    reg _T_214_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_214_exc) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    io_out_bits_data <= _T_214_data @[Valid.scala 42:21 Valid.scala 44:16]
    io_out_bits_exc <= _T_214_exc @[Valid.scala 42:21 Valid.scala 44:16]
    valid <= io_in_valid @[FPU.scala 482:18]
    in_cmd <= mux(io_in_valid, pad(_T_181, 5), in_cmd) @[FPU.scala 484:22 FPU.scala 488:12 FPU.scala 483:15]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    in_rm <= mux(io_in_valid, io_in_bits_rm, in_rm) @[FPU.scala 484:22 FPU.scala 485:8 FPU.scala 483:15]
    skip
    in_in1 <= mux(io_in_valid, io_in_bits_in1, in_in1) @[FPU.scala 484:22 FPU.scala 485:8 FPU.scala 483:15]
    in_in2 <= mux(io_in_valid, _GEN_0, in_in2) @[FPU.scala 484:22 FPU.scala 483:15]
    in_in3 <= mux(io_in_valid, _GEN_1, in_in3) @[FPU.scala 484:22 FPU.scala 483:15]
    skip
    skip
    fma.io_op <= bits(in_cmd, 1, 0) @[FPU.scala 494:13]
    fma.io_a <= in_in1 @[FPU.scala 496:12]
    fma.io_b <= in_in2 @[FPU.scala 497:12]
    fma.io_c <= in_in3 @[FPU.scala 498:12]
    fma.io_roundingMode <= bits(in_rm, 1, 0) @[FPU.scala 495:23]
    _T_192 <= mux(reset, UInt<1>("h0"), valid) @[Valid.scala 47:18 Valid.scala 47:18 Valid.scala 47:18]
    _T_196_data <= mux(valid, res_data, _T_196_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_196_exc <= mux(valid, res_exc, _T_196_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_201 <= mux(reset, UInt<1>("h0"), _T_192) @[Valid.scala 47:18 Valid.scala 47:18 Valid.scala 47:18]
    _T_205_data <= mux(_T_192, _T_196_data, _T_205_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_205_exc <= mux(_T_192, _T_196_exc, _T_205_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    _T_214_data <= mux(_T_201, _T_205_data, _T_214_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_214_exc <= mux(_T_201, _T_205_exc, _T_214_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]

  module DivSqrtRecF64_mulAddZ31 :
    input clock : Clock
    input reset : UInt<1>
    output io_inReady_div : UInt<1>
    output io_inReady_sqrt : UInt<1>
    input io_inValid : UInt<1>
    input io_sqrtOp : UInt<1>
    input io_a : UInt<65>
    input io_b : UInt<65>
    input io_roundingMode : UInt<2>
    output io_outValid_div : UInt<1>
    output io_outValid_sqrt : UInt<1>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>
    output io_usingMulAdd : UInt<4>
    output io_latchMulAddA_0 : UInt<1>
    output io_mulAddA_0 : UInt<54>
    output io_latchMulAddB_0 : UInt<1>
    output io_mulAddB_0 : UInt<54>
    output io_mulAddC_2 : UInt<105>
    input io_mulAddResult_3 : UInt<105>

    reg valid_PA : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid_PA) @[DivSqrtRecF64_mulAddZ31.scala 78:30]
    reg sqrtOp_PA : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sqrtOp_PA) @[DivSqrtRecF64_mulAddZ31.scala 79:30]
    reg sign_PA : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_PA) @[DivSqrtRecF64_mulAddZ31.scala 80:30]
    reg specialCodeB_PA : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeB_PA) @[DivSqrtRecF64_mulAddZ31.scala 82:30]
    reg fractB_51_PA : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractB_51_PA) @[DivSqrtRecF64_mulAddZ31.scala 83:30]
    reg roundingMode_PA : UInt<2>, clock with :
      reset => (UInt<1>("h0"), roundingMode_PA) @[DivSqrtRecF64_mulAddZ31.scala 84:30]
    reg specialCodeA_PA : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeA_PA) @[DivSqrtRecF64_mulAddZ31.scala 85:30]
    reg fractA_51_PA : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractA_51_PA) @[DivSqrtRecF64_mulAddZ31.scala 86:30]
    reg exp_PA : UInt<14>, clock with :
      reset => (UInt<1>("h0"), exp_PA) @[DivSqrtRecF64_mulAddZ31.scala 87:30]
    reg fractB_other_PA : UInt<51>, clock with :
      reset => (UInt<1>("h0"), fractB_other_PA) @[DivSqrtRecF64_mulAddZ31.scala 88:30]
    reg fractA_other_PA : UInt<51>, clock with :
      reset => (UInt<1>("h0"), fractA_other_PA) @[DivSqrtRecF64_mulAddZ31.scala 89:30]
    reg valid_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 91:30]
    reg sqrtOp_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 92:30]
    reg sign_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_PB) @[DivSqrtRecF64_mulAddZ31.scala 93:30]
    reg specialCodeA_PB : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeA_PB) @[DivSqrtRecF64_mulAddZ31.scala 95:30]
    reg fractA_51_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractA_51_PB) @[DivSqrtRecF64_mulAddZ31.scala 96:30]
    reg specialCodeB_PB : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeB_PB) @[DivSqrtRecF64_mulAddZ31.scala 97:30]
    reg fractB_51_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractB_51_PB) @[DivSqrtRecF64_mulAddZ31.scala 98:30]
    reg roundingMode_PB : UInt<2>, clock with :
      reset => (UInt<1>("h0"), roundingMode_PB) @[DivSqrtRecF64_mulAddZ31.scala 99:30]
    reg exp_PB : UInt<14>, clock with :
      reset => (UInt<1>("h0"), exp_PB) @[DivSqrtRecF64_mulAddZ31.scala 100:30]
    reg fractA_0_PB : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractA_0_PB) @[DivSqrtRecF64_mulAddZ31.scala 101:30]
    reg fractB_other_PB : UInt<51>, clock with :
      reset => (UInt<1>("h0"), fractB_other_PB) @[DivSqrtRecF64_mulAddZ31.scala 102:30]
    reg valid_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid_PC) @[DivSqrtRecF64_mulAddZ31.scala 104:30]
    reg sqrtOp_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 105:30]
    reg sign_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 106:30]
    reg specialCodeA_PC : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeA_PC) @[DivSqrtRecF64_mulAddZ31.scala 108:30]
    reg fractA_51_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractA_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 109:30]
    reg specialCodeB_PC : UInt<3>, clock with :
      reset => (UInt<1>("h0"), specialCodeB_PC) @[DivSqrtRecF64_mulAddZ31.scala 110:30]
    reg fractB_51_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractB_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 111:30]
    reg roundingMode_PC : UInt<2>, clock with :
      reset => (UInt<1>("h0"), roundingMode_PC) @[DivSqrtRecF64_mulAddZ31.scala 112:30]
    reg exp_PC : UInt<14>, clock with :
      reset => (UInt<1>("h0"), exp_PC) @[DivSqrtRecF64_mulAddZ31.scala 113:30]
    reg fractA_0_PC : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fractA_0_PC) @[DivSqrtRecF64_mulAddZ31.scala 114:30]
    reg fractB_other_PC : UInt<51>, clock with :
      reset => (UInt<1>("h0"), fractB_other_PC) @[DivSqrtRecF64_mulAddZ31.scala 115:30]
    reg cycleNum_A : UInt<3>, clock with :
      reset => (UInt<1>("h0"), cycleNum_A) @[DivSqrtRecF64_mulAddZ31.scala 117:30]
    reg cycleNum_B : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cycleNum_B) @[DivSqrtRecF64_mulAddZ31.scala 118:30]
    reg cycleNum_C : UInt<3>, clock with :
      reset => (UInt<1>("h0"), cycleNum_C) @[DivSqrtRecF64_mulAddZ31.scala 119:30]
    reg cycleNum_E : UInt<3>, clock with :
      reset => (UInt<1>("h0"), cycleNum_E) @[DivSqrtRecF64_mulAddZ31.scala 120:30]
    reg fractR0_A : UInt<9>, clock with :
      reset => (UInt<1>("h0"), fractR0_A) @[DivSqrtRecF64_mulAddZ31.scala 122:30]
    reg hiSqrR0_A_sqrt : UInt<10>, clock with :
      reset => (UInt<1>("h0"), hiSqrR0_A_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 124:30]
    reg partNegSigma0_A : UInt<21>, clock with :
      reset => (UInt<1>("h0"), partNegSigma0_A) @[DivSqrtRecF64_mulAddZ31.scala 125:30]
    reg nextMulAdd9A_A : UInt<9>, clock with :
      reset => (UInt<1>("h0"), nextMulAdd9A_A) @[DivSqrtRecF64_mulAddZ31.scala 126:30]
    reg nextMulAdd9B_A : UInt<9>, clock with :
      reset => (UInt<1>("h0"), nextMulAdd9B_A) @[DivSqrtRecF64_mulAddZ31.scala 127:30]
    reg ER1_B_sqrt : UInt<17>, clock with :
      reset => (UInt<1>("h0"), ER1_B_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 128:30]
    reg ESqrR1_B_sqrt : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ESqrR1_B_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 130:30]
    reg sigX1_B : UInt<58>, clock with :
      reset => (UInt<1>("h0"), sigX1_B) @[DivSqrtRecF64_mulAddZ31.scala 131:30]
    reg sqrSigma1_C : UInt<33>, clock with :
      reset => (UInt<1>("h0"), sqrSigma1_C) @[DivSqrtRecF64_mulAddZ31.scala 132:30]
    reg sigXN_C : UInt<58>, clock with :
      reset => (UInt<1>("h0"), sigXN_C) @[DivSqrtRecF64_mulAddZ31.scala 133:30]
    reg u_C_sqrt : UInt<31>, clock with :
      reset => (UInt<1>("h0"), u_C_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 134:30]
    reg E_E_div : UInt<1>, clock with :
      reset => (UInt<1>("h0"), E_E_div) @[DivSqrtRecF64_mulAddZ31.scala 135:30]
    reg sigT_E : UInt<53>, clock with :
      reset => (UInt<1>("h0"), sigT_E) @[DivSqrtRecF64_mulAddZ31.scala 136:30]
    reg extraT_E : UInt<1>, clock with :
      reset => (UInt<1>("h0"), extraT_E) @[DivSqrtRecF64_mulAddZ31.scala 137:30]
    reg isNegRemT_E : UInt<1>, clock with :
      reset => (UInt<1>("h0"), isNegRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 138:30]
    reg isZeroRemT_E : UInt<1>, clock with :
      reset => (UInt<1>("h0"), isZeroRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 139:30]
    node cyc_B7_sqrt = eq(cycleNum_B, UInt<4>("h7")) @[DivSqrtRecF64_mulAddZ31.scala 426:33]
    skip
    node _T_133 = not(cyc_B7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 197:21]
    node _T_277 = not(valid_PA) @[DivSqrtRecF64_mulAddZ31.scala 284:17]
    node _T_252 = bits(specialCodeB_PA, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 271:41]
    node isSpecialB_PA = eq(_T_252, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 271:48]
    node _T_257 = not(isSpecialB_PA) @[DivSqrtRecF64_mulAddZ31.scala 276:13]
    node isZeroB_PA = eq(specialCodeB_PA, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 270:42]
    node _T_259 = not(isZeroB_PA) @[DivSqrtRecF64_mulAddZ31.scala 276:32]
    node _T_260 = and(_T_257, _T_259) @[DivSqrtRecF64_mulAddZ31.scala 276:29]
    node _T_262 = not(sign_PA) @[DivSqrtRecF64_mulAddZ31.scala 276:48]
    node _T_263 = and(_T_260, _T_262) @[DivSqrtRecF64_mulAddZ31.scala 276:45]
    node _T_247 = bits(specialCodeA_PA, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 267:41]
    node isSpecialA_PA = eq(_T_247, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 267:48]
    node _T_265 = not(isSpecialA_PA) @[DivSqrtRecF64_mulAddZ31.scala 277:13]
    skip
    node _T_268 = and(_T_265, _T_257) @[DivSqrtRecF64_mulAddZ31.scala 277:29]
    node isZeroA_PA = eq(specialCodeA_PA, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 266:42]
    node _T_270 = not(isZeroA_PA) @[DivSqrtRecF64_mulAddZ31.scala 277:51]
    node _T_271 = and(_T_268, _T_270) @[DivSqrtRecF64_mulAddZ31.scala 277:48]
    skip
    node _T_274 = and(_T_271, _T_259) @[DivSqrtRecF64_mulAddZ31.scala 277:64]
    node normalCase_PA = mux(sqrtOp_PA, _T_263, _T_274) @[DivSqrtRecF64_mulAddZ31.scala 275:12]
    node cyc_B4 = eq(cycleNum_B, UInt<4>("h4")) @[DivSqrtRecF64_mulAddZ31.scala 430:27]
    skip
    node _T_463 = and(cyc_B4, valid_PA) @[DivSqrtRecF64_mulAddZ31.scala 437:26]
    node _T_465 = not(sqrtOp_PA) @[DivSqrtRecF64_mulAddZ31.scala 437:41]
    node cyc_B4_div = and(_T_463, _T_465) @[DivSqrtRecF64_mulAddZ31.scala 437:38]
    skip
    node valid_normalCase_leaving_PA = or(cyc_B4_div, cyc_B7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 280:50]
    node _T_318 = not(valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 322:17]
    node _T_295 = bits(specialCodeB_PB, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 311:41]
    node isSpecialB_PB = eq(_T_295, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 311:48]
    node _T_298 = not(isSpecialB_PB) @[DivSqrtRecF64_mulAddZ31.scala 314:13]
    node isZeroB_PB = eq(specialCodeB_PB, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 310:42]
    node _T_300 = not(isZeroB_PB) @[DivSqrtRecF64_mulAddZ31.scala 314:32]
    node _T_301 = and(_T_298, _T_300) @[DivSqrtRecF64_mulAddZ31.scala 314:29]
    node _T_303 = not(sign_PB) @[DivSqrtRecF64_mulAddZ31.scala 314:48]
    node _T_304 = and(_T_301, _T_303) @[DivSqrtRecF64_mulAddZ31.scala 314:45]
    node _T_292 = bits(specialCodeA_PB, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 309:41]
    node isSpecialA_PB = eq(_T_292, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 309:48]
    node _T_306 = not(isSpecialA_PB) @[DivSqrtRecF64_mulAddZ31.scala 315:13]
    skip
    node _T_309 = and(_T_306, _T_298) @[DivSqrtRecF64_mulAddZ31.scala 315:29]
    node isZeroA_PB = eq(specialCodeA_PB, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 308:42]
    node _T_311 = not(isZeroA_PB) @[DivSqrtRecF64_mulAddZ31.scala 315:51]
    node _T_312 = and(_T_309, _T_311) @[DivSqrtRecF64_mulAddZ31.scala 315:48]
    skip
    node _T_315 = and(_T_312, _T_300) @[DivSqrtRecF64_mulAddZ31.scala 315:64]
    node normalCase_PB = mux(sqrtOp_PB, _T_304, _T_315) @[DivSqrtRecF64_mulAddZ31.scala 313:12]
    node cyc_C3 = eq(cycleNum_C, UInt<3>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 458:27]
    skip
    node _T_387 = not(valid_PC) @[DivSqrtRecF64_mulAddZ31.scala 382:17]
    node _T_341 = bits(specialCodeB_PC, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 353:41]
    node isSpecialB_PC = eq(_T_341, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 353:48]
    node _T_352 = not(isSpecialB_PC) @[DivSqrtRecF64_mulAddZ31.scala 360:24]
    node isZeroB_PC = eq(specialCodeB_PC, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 352:42]
    node _T_354 = not(isZeroB_PC) @[DivSqrtRecF64_mulAddZ31.scala 360:43]
    node _T_355 = and(_T_352, _T_354) @[DivSqrtRecF64_mulAddZ31.scala 360:40]
    node _T_357 = not(sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 360:59]
    node _T_358 = and(_T_355, _T_357) @[DivSqrtRecF64_mulAddZ31.scala 360:56]
    node _T_332 = bits(specialCodeA_PC, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 347:41]
    node isSpecialA_PC = eq(_T_332, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 347:48]
    node _T_360 = not(isSpecialA_PC) @[DivSqrtRecF64_mulAddZ31.scala 361:13]
    skip
    node _T_363 = and(_T_360, _T_352) @[DivSqrtRecF64_mulAddZ31.scala 361:29]
    node isZeroA_PC = eq(specialCodeA_PC, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 346:42]
    node _T_365 = not(isZeroA_PC) @[DivSqrtRecF64_mulAddZ31.scala 361:51]
    node _T_366 = and(_T_363, _T_365) @[DivSqrtRecF64_mulAddZ31.scala 361:48]
    skip
    node _T_369 = and(_T_366, _T_354) @[DivSqrtRecF64_mulAddZ31.scala 361:64]
    node normalCase_PC = mux(sqrtOp_PC, _T_358, _T_369) @[DivSqrtRecF64_mulAddZ31.scala 360:12]
    node _T_384 = not(normalCase_PC) @[DivSqrtRecF64_mulAddZ31.scala 380:28]
    node cyc_E1 = eq(cycleNum_E, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 481:27]
    skip
    node valid_leaving_PC = or(_T_384, cyc_E1) @[DivSqrtRecF64_mulAddZ31.scala 380:44]
    node ready_PC = or(_T_387, valid_leaving_PC) @[DivSqrtRecF64_mulAddZ31.scala 382:28]
    skip
    node valid_leaving_PB = mux(normalCase_PB, cyc_C3, ready_PC) @[DivSqrtRecF64_mulAddZ31.scala 320:12]
    node ready_PB = or(_T_318, valid_leaving_PB) @[DivSqrtRecF64_mulAddZ31.scala 322:28]
    skip
    node valid_leaving_PA = mux(normalCase_PA, valid_normalCase_leaving_PA, ready_PB) @[DivSqrtRecF64_mulAddZ31.scala 282:12]
    node ready_PA = or(_T_277, valid_leaving_PA) @[DivSqrtRecF64_mulAddZ31.scala 284:28]
    skip
    node _T_134 = and(ready_PA, _T_133) @[DivSqrtRecF64_mulAddZ31.scala 197:18]
    node cyc_B6 = eq(cycleNum_B, UInt<4>("h6")) @[DivSqrtRecF64_mulAddZ31.scala 428:27]
    skip
    node _T_476 = and(cyc_B6, valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 442:27]
    node cyc_B6_sqrt = and(_T_476, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 442:39]
    skip
    node _T_136 = not(cyc_B6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 197:38]
    node _T_137 = and(_T_134, _T_136) @[DivSqrtRecF64_mulAddZ31.scala 197:35]
    node cyc_B5 = eq(cycleNum_B, UInt<4>("h5")) @[DivSqrtRecF64_mulAddZ31.scala 429:27]
    skip
    node _T_478 = and(cyc_B5, valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 443:27]
    node cyc_B5_sqrt = and(_T_478, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 443:39]
    skip
    node _T_139 = not(cyc_B5_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 197:55]
    node _T_140 = and(_T_137, _T_139) @[DivSqrtRecF64_mulAddZ31.scala 197:52]
    node _T_480 = and(cyc_B4, valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 444:27]
    node cyc_B4_sqrt = and(_T_480, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 444:39]
    skip
    node _T_142 = not(cyc_B4_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 198:13]
    node _T_143 = and(_T_140, _T_142) @[DivSqrtRecF64_mulAddZ31.scala 197:69]
    node cyc_B3 = eq(cycleNum_B, UInt<4>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 431:27]
    skip
    node _T_145 = not(cyc_B3) @[DivSqrtRecF64_mulAddZ31.scala 198:30]
    node _T_146 = and(_T_143, _T_145) @[DivSqrtRecF64_mulAddZ31.scala 198:27]
    node cyc_B2 = eq(cycleNum_B, UInt<4>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 432:27]
    skip
    node _T_148 = not(cyc_B2) @[DivSqrtRecF64_mulAddZ31.scala 198:42]
    node _T_149 = and(_T_146, _T_148) @[DivSqrtRecF64_mulAddZ31.scala 198:39]
    node cyc_B1 = eq(cycleNum_B, UInt<4>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 433:27]
    skip
    node cyc_B1_sqrt = and(cyc_B1, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 447:27]
    skip
    node _T_151 = not(cyc_B1_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 198:54]
    node _T_152 = and(_T_149, _T_151) @[DivSqrtRecF64_mulAddZ31.scala 198:51]
    node cyc_C5 = eq(cycleNum_C, UInt<3>("h5")) @[DivSqrtRecF64_mulAddZ31.scala 456:27]
    skip
    node _T_154 = not(cyc_C5) @[DivSqrtRecF64_mulAddZ31.scala 199:13]
    node _T_155 = and(_T_152, _T_154) @[DivSqrtRecF64_mulAddZ31.scala 198:68]
    node cyc_C4 = eq(cycleNum_C, UInt<3>("h4")) @[DivSqrtRecF64_mulAddZ31.scala 457:27]
    skip
    node _T_157 = not(cyc_C4) @[DivSqrtRecF64_mulAddZ31.scala 199:25]
    skip
    skip
    node _T_161 = and(ready_PA, _T_136) @[DivSqrtRecF64_mulAddZ31.scala 201:18]
    skip
    node _T_164 = and(_T_161, _T_139) @[DivSqrtRecF64_mulAddZ31.scala 201:35]
    skip
    node _T_167 = and(_T_164, _T_142) @[DivSqrtRecF64_mulAddZ31.scala 201:52]
    node _T_471 = not(sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 439:29]
    node cyc_B2_div = and(cyc_B2, _T_471) @[DivSqrtRecF64_mulAddZ31.scala 439:26]
    skip
    node _T_169 = not(cyc_B2_div) @[DivSqrtRecF64_mulAddZ31.scala 202:13]
    node _T_170 = and(_T_167, _T_169) @[DivSqrtRecF64_mulAddZ31.scala 201:69]
    skip
    skip
    node _T_174 = and(io_inReady_div, io_inValid) @[DivSqrtRecF64_mulAddZ31.scala 203:38]
    node _T_176 = not(io_sqrtOp) @[DivSqrtRecF64_mulAddZ31.scala 203:55]
    node cyc_S_div = and(_T_174, _T_176) @[DivSqrtRecF64_mulAddZ31.scala 203:52]
    node _T_177 = and(io_inReady_sqrt, io_inValid) @[DivSqrtRecF64_mulAddZ31.scala 204:38]
    node cyc_S_sqrt = and(_T_177, io_sqrtOp) @[DivSqrtRecF64_mulAddZ31.scala 204:52]
    node cyc_S = or(cyc_S_div, cyc_S_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 205:27]
    node signA_S = bits(io_a, 64, 64) @[DivSqrtRecF64_mulAddZ31.scala 207:24]
    node expA_S = bits(io_a, 63, 52) @[DivSqrtRecF64_mulAddZ31.scala 208:24]
    node fractA_S = bits(io_a, 51, 0) @[DivSqrtRecF64_mulAddZ31.scala 209:24]
    node specialCodeA_S = bits(expA_S, 11, 9) @[DivSqrtRecF64_mulAddZ31.scala 210:32]
    node isZeroA_S = eq(specialCodeA_S, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 211:40]
    node _T_179 = bits(specialCodeA_S, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 212:39]
    node isSpecialA_S = eq(_T_179, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 212:46]
    node signB_S = bits(io_b, 64, 64) @[DivSqrtRecF64_mulAddZ31.scala 214:24]
    node expB_S = bits(io_b, 63, 52) @[DivSqrtRecF64_mulAddZ31.scala 215:24]
    node fractB_S = bits(io_b, 51, 0) @[DivSqrtRecF64_mulAddZ31.scala 216:24]
    node specialCodeB_S = bits(expB_S, 11, 9) @[DivSqrtRecF64_mulAddZ31.scala 217:32]
    node isZeroB_S = eq(specialCodeB_S, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 218:40]
    node _T_182 = bits(specialCodeB_S, 2, 1) @[DivSqrtRecF64_mulAddZ31.scala 219:39]
    node isSpecialB_S = eq(_T_182, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 219:46]
    node _T_184 = xor(signA_S, signB_S) @[DivSqrtRecF64_mulAddZ31.scala 221:50]
    node sign_S = mux(io_sqrtOp, signB_S, _T_184) @[DivSqrtRecF64_mulAddZ31.scala 221:21]
    node _T_186 = not(isSpecialA_S) @[DivSqrtRecF64_mulAddZ31.scala 224:9]
    node _T_188 = not(isSpecialB_S) @[DivSqrtRecF64_mulAddZ31.scala 224:27]
    node _T_189 = and(_T_186, _T_188) @[DivSqrtRecF64_mulAddZ31.scala 224:24]
    node _T_191 = not(isZeroA_S) @[DivSqrtRecF64_mulAddZ31.scala 224:45]
    node _T_192 = and(_T_189, _T_191) @[DivSqrtRecF64_mulAddZ31.scala 224:42]
    node _T_194 = not(isZeroB_S) @[DivSqrtRecF64_mulAddZ31.scala 224:60]
    node normalCase_S_div = and(_T_192, _T_194) @[DivSqrtRecF64_mulAddZ31.scala 224:57]
    skip
    skip
    node _T_199 = and(_T_188, _T_194) @[DivSqrtRecF64_mulAddZ31.scala 225:44]
    node _T_201 = not(signB_S) @[DivSqrtRecF64_mulAddZ31.scala 225:62]
    node normalCase_S_sqrt = and(_T_199, _T_201) @[DivSqrtRecF64_mulAddZ31.scala 225:59]
    node normalCase_S = mux(io_sqrtOp, normalCase_S_sqrt, normalCase_S_div) @[DivSqrtRecF64_mulAddZ31.scala 226:27]
    node cyc_A4_div = and(cyc_S_div, normalCase_S_div) @[DivSqrtRecF64_mulAddZ31.scala 228:50]
    node cyc_A7_sqrt = and(cyc_S_sqrt, normalCase_S_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 229:50]
    node entering_PA_normalCase = or(cyc_A4_div, cyc_A7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 231:36]
    node _T_203 = not(ready_PB) @[DivSqrtRecF64_mulAddZ31.scala 233:58]
    node _T_204 = or(valid_PA, _T_203) @[DivSqrtRecF64_mulAddZ31.scala 233:55]
    node _T_205 = and(cyc_S, _T_204) @[DivSqrtRecF64_mulAddZ31.scala 233:42]
    node entering_PA = or(entering_PA_normalCase, _T_205) @[DivSqrtRecF64_mulAddZ31.scala 233:32]
    node _T_207 = not(normalCase_S) @[DivSqrtRecF64_mulAddZ31.scala 235:18]
    node _T_208 = and(cyc_S, _T_207) @[DivSqrtRecF64_mulAddZ31.scala 235:15]
    skip
    node _T_211 = and(_T_208, _T_277) @[DivSqrtRecF64_mulAddZ31.scala 235:33]
    skip
    node _T_215 = not(ready_PC) @[DivSqrtRecF64_mulAddZ31.scala 236:43]
    node _T_216 = and(_T_318, _T_215) @[DivSqrtRecF64_mulAddZ31.scala 236:40]
    node leaving_PB = and(valid_PB, valid_leaving_PB) @[DivSqrtRecF64_mulAddZ31.scala 321:28]
    skip
    node _T_217 = or(leaving_PB, _T_216) @[DivSqrtRecF64_mulAddZ31.scala 236:25]
    node entering_PB_S = and(_T_211, _T_217) @[DivSqrtRecF64_mulAddZ31.scala 235:47]
    skip
    skip
    skip
    skip
    skip
    node _T_226 = and(_T_211, _T_318) @[DivSqrtRecF64_mulAddZ31.scala 238:47]
    node entering_PC_S = and(_T_226, ready_PC) @[DivSqrtRecF64_mulAddZ31.scala 238:61]
    node leaving_PA = and(valid_PA, valid_leaving_PA) @[DivSqrtRecF64_mulAddZ31.scala 283:28]
    skip
    node _T_227 = or(entering_PA, leaving_PA) @[DivSqrtRecF64_mulAddZ31.scala 240:23]
    node _GEN_0 = mux(_T_227, entering_PA, valid_PA) @[DivSqrtRecF64_mulAddZ31.scala 240:38 DivSqrtRecF64_mulAddZ31.scala 241:18 DivSqrtRecF64_mulAddZ31.scala 78:30]
    node _T_228 = bits(fractB_S, 51, 51) @[DivSqrtRecF64_mulAddZ31.scala 247:36]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_231 = and(entering_PA, _T_176) @[DivSqrtRecF64_mulAddZ31.scala 250:23]
    node _T_232 = bits(fractA_S, 51, 51) @[DivSqrtRecF64_mulAddZ31.scala 252:36]
    skip
    skip
    node _T_233 = bits(expB_S, 11, 11) @[DivSqrtRecF64_mulAddZ31.scala 258:44]
    skip
    node _T_237 = mux(_T_233, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_238 = bits(expB_S, 10, 0) @[DivSqrtRecF64_mulAddZ31.scala 258:58]
    node _T_239 = not(_T_238) @[DivSqrtRecF64_mulAddZ31.scala 258:51]
    node _T_240 = cat(_T_237, _T_239) @[Cat.scala 30:58]
    node _GEN_53 = pad(expA_S, 14) @[DivSqrtRecF64_mulAddZ31.scala 258:24]
    node _T_241 = add(_GEN_53, _T_240) @[DivSqrtRecF64_mulAddZ31.scala 258:24]
    node _T_242 = tail(_T_241, 1) @[DivSqrtRecF64_mulAddZ31.scala 258:24]
    node _T_243 = mux(io_sqrtOp, pad(expB_S, 14), _T_242) @[DivSqrtRecF64_mulAddZ31.scala 256:16]
    node _T_244 = bits(fractB_S, 50, 0) @[DivSqrtRecF64_mulAddZ31.scala 260:36]
    skip
    skip
    node _T_245 = bits(fractA_S, 50, 0) @[DivSqrtRecF64_mulAddZ31.scala 263:36]
    skip
    skip
    node sigA_PA = cat(cat(UInt<1>("h1"), fractA_51_PA), fractA_other_PA) @[Cat.scala 30:58]
    skip
    node sigB_PA = cat(cat(UInt<1>("h1"), fractB_51_PA), fractB_other_PA) @[Cat.scala 30:58]
    node _T_279 = and(valid_PA, normalCase_PA) @[DivSqrtRecF64_mulAddZ31.scala 287:18]
    node entering_PB_normalCase = and(_T_279, valid_normalCase_leaving_PA) @[DivSqrtRecF64_mulAddZ31.scala 287:35]
    node entering_PB = or(entering_PB_S, leaving_PA) @[DivSqrtRecF64_mulAddZ31.scala 288:37]
    node _T_280 = or(entering_PB, leaving_PB) @[DivSqrtRecF64_mulAddZ31.scala 290:23]
    node _GEN_11 = mux(_T_280, entering_PB, valid_PB) @[DivSqrtRecF64_mulAddZ31.scala 290:38 DivSqrtRecF64_mulAddZ31.scala 291:18 DivSqrtRecF64_mulAddZ31.scala 91:30]
    node _T_281 = mux(valid_PA, sqrtOp_PA, io_sqrtOp) @[DivSqrtRecF64_mulAddZ31.scala 294:31]
    node _T_282 = mux(valid_PA, sign_PA, sign_S) @[DivSqrtRecF64_mulAddZ31.scala 295:31]
    node _T_283 = mux(valid_PA, specialCodeA_PA, specialCodeA_S) @[DivSqrtRecF64_mulAddZ31.scala 296:31]
    skip
    node _T_285 = mux(valid_PA, fractA_51_PA, _T_232) @[DivSqrtRecF64_mulAddZ31.scala 297:31]
    node _T_286 = mux(valid_PA, specialCodeB_PA, specialCodeB_S) @[DivSqrtRecF64_mulAddZ31.scala 298:31]
    skip
    node _T_288 = mux(valid_PA, fractB_51_PA, _T_228) @[DivSqrtRecF64_mulAddZ31.scala 299:31]
    node _T_289 = mux(valid_PA, roundingMode_PA, io_roundingMode) @[DivSqrtRecF64_mulAddZ31.scala 300:31]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_290 = bits(fractA_other_PA, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 304:43]
    skip
    skip
    skip
    node _T_320 = and(valid_PB, normalCase_PB) @[DivSqrtRecF64_mulAddZ31.scala 325:18]
    node entering_PC_normalCase = and(_T_320, cyc_C3) @[DivSqrtRecF64_mulAddZ31.scala 325:35]
    node entering_PC = or(entering_PC_S, leaving_PB) @[DivSqrtRecF64_mulAddZ31.scala 326:37]
    node leaving_PC = and(valid_PC, valid_leaving_PC) @[DivSqrtRecF64_mulAddZ31.scala 381:28]
    skip
    node _T_321 = or(entering_PC, leaving_PC) @[DivSqrtRecF64_mulAddZ31.scala 328:23]
    node _GEN_22 = mux(_T_321, entering_PC, valid_PC) @[DivSqrtRecF64_mulAddZ31.scala 328:38 DivSqrtRecF64_mulAddZ31.scala 329:18 DivSqrtRecF64_mulAddZ31.scala 104:30]
    node _T_322 = mux(valid_PB, sqrtOp_PB, io_sqrtOp) @[DivSqrtRecF64_mulAddZ31.scala 332:31]
    node _T_323 = mux(valid_PB, sign_PB, sign_S) @[DivSqrtRecF64_mulAddZ31.scala 333:31]
    node _T_324 = mux(valid_PB, specialCodeA_PB, specialCodeA_S) @[DivSqrtRecF64_mulAddZ31.scala 334:31]
    skip
    node _T_326 = mux(valid_PB, fractA_51_PB, _T_232) @[DivSqrtRecF64_mulAddZ31.scala 335:31]
    node _T_327 = mux(valid_PB, specialCodeB_PB, specialCodeB_S) @[DivSqrtRecF64_mulAddZ31.scala 336:31]
    skip
    node _T_329 = mux(valid_PB, fractB_51_PB, _T_228) @[DivSqrtRecF64_mulAddZ31.scala 337:31]
    node _T_330 = mux(valid_PB, roundingMode_PB, io_roundingMode) @[DivSqrtRecF64_mulAddZ31.scala 338:31]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_334 = bits(specialCodeA_PC, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 348:59]
    node _T_336 = not(_T_334) @[DivSqrtRecF64_mulAddZ31.scala 348:42]
    node isInfA_PC = and(isSpecialA_PC, _T_336) @[DivSqrtRecF64_mulAddZ31.scala 348:39]
    skip
    node isNaNA_PC = and(isSpecialA_PC, _T_334) @[DivSqrtRecF64_mulAddZ31.scala 349:39]
    node _T_339 = not(fractA_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 350:38]
    node isSigNaNA_PC = and(isNaNA_PC, _T_339) @[DivSqrtRecF64_mulAddZ31.scala 350:35]
    node _T_343 = bits(specialCodeB_PC, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 354:59]
    node _T_345 = not(_T_343) @[DivSqrtRecF64_mulAddZ31.scala 354:42]
    node isInfB_PC = and(isSpecialB_PC, _T_345) @[DivSqrtRecF64_mulAddZ31.scala 354:39]
    skip
    node isNaNB_PC = and(isSpecialB_PC, _T_343) @[DivSqrtRecF64_mulAddZ31.scala 355:39]
    node _T_348 = not(fractB_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 356:38]
    node isSigNaNB_PC = and(isNaNB_PC, _T_348) @[DivSqrtRecF64_mulAddZ31.scala 356:35]
    skip
    node sigB_PC = cat(cat(UInt<1>("h1"), fractB_51_PC), fractB_other_PC) @[Cat.scala 30:58]
    node _T_371 = add(exp_PC, UInt<14>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 363:27]
    node expP2_PC = tail(_T_371, 1) @[DivSqrtRecF64_mulAddZ31.scala 363:27]
    node _T_372 = bits(exp_PC, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 365:19]
    node _T_373 = bits(expP2_PC, 13, 1) @[DivSqrtRecF64_mulAddZ31.scala 366:25]
    node _T_375 = cat(_T_373, UInt<1>("h0")) @[Cat.scala 30:58]
    node _T_376 = bits(exp_PC, 13, 1) @[DivSqrtRecF64_mulAddZ31.scala 367:23]
    node _T_378 = cat(_T_376, UInt<1>("h1")) @[Cat.scala 30:58]
    node expP1_PC = mux(_T_372, _T_375, _T_378) @[DivSqrtRecF64_mulAddZ31.scala 365:12]
    node roundingMode_near_even_PC = eq(roundingMode_PC, UInt<2>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 370:54]
    skip
    node roundingMode_min_PC = eq(roundingMode_PC, UInt<2>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 372:54]
    node roundingMode_max_PC = eq(roundingMode_PC, UInt<2>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 373:54]
    node roundMagUp_PC = mux(sign_PC, roundingMode_min_PC, roundingMode_max_PC) @[DivSqrtRecF64_mulAddZ31.scala 376:12]
    node overflowY_roundMagUp_PC = or(roundingMode_near_even_PC, roundMagUp_PC) @[DivSqrtRecF64_mulAddZ31.scala 377:61]
    node _T_380 = not(roundMagUp_PC) @[DivSqrtRecF64_mulAddZ31.scala 378:27]
    node _T_382 = not(roundingMode_near_even_PC) @[DivSqrtRecF64_mulAddZ31.scala 378:46]
    node roundMagDown_PC = and(_T_380, _T_382) @[DivSqrtRecF64_mulAddZ31.scala 378:43]
    node _T_390 = not(sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 383:39]
    skip
    skip
    node _T_394 = neq(cycleNum_A, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 388:49]
    node _T_395 = or(entering_PA_normalCase, _T_394) @[DivSqrtRecF64_mulAddZ31.scala 388:34]
    node _T_398 = mux(cyc_A4_div, UInt<2>("h3"), UInt<2>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 390:16]
    node _T_401 = mux(cyc_A7_sqrt, UInt<3>("h6"), UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 391:16]
    node _GEN_54 = pad(_T_398, 3) @[DivSqrtRecF64_mulAddZ31.scala 390:74]
    node _T_402 = or(_GEN_54, _T_401) @[DivSqrtRecF64_mulAddZ31.scala 390:74]
    node _T_404 = not(entering_PA_normalCase) @[DivSqrtRecF64_mulAddZ31.scala 392:17]
    node _T_406 = sub(cycleNum_A, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 392:54]
    skip
    node _T_408 = tail(_T_406, 1) @[DivSqrtRecF64_mulAddZ31.scala 392:54]
    node _T_410 = mux(_T_404, _T_408, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 392:16]
    node _T_411 = or(_T_402, _T_410) @[DivSqrtRecF64_mulAddZ31.scala 391:74]
    node _GEN_33 = mux(_T_395, _T_411, cycleNum_A) @[DivSqrtRecF64_mulAddZ31.scala 388:63 DivSqrtRecF64_mulAddZ31.scala 389:20 DivSqrtRecF64_mulAddZ31.scala 117:30]
    node cyc_A6_sqrt = eq(cycleNum_A, UInt<3>("h6")) @[DivSqrtRecF64_mulAddZ31.scala 396:35]
    node cyc_A5_sqrt = eq(cycleNum_A, UInt<3>("h5")) @[DivSqrtRecF64_mulAddZ31.scala 397:35]
    node cyc_A4_sqrt = eq(cycleNum_A, UInt<3>("h4")) @[DivSqrtRecF64_mulAddZ31.scala 398:35]
    node cyc_A4 = or(cyc_A4_sqrt, cyc_A4_div) @[DivSqrtRecF64_mulAddZ31.scala 402:30]
    node cyc_A3 = eq(cycleNum_A, UInt<3>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 403:30]
    node cyc_A2 = eq(cycleNum_A, UInt<3>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 404:30]
    node cyc_A1 = eq(cycleNum_A, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 405:30]
    skip
    node cyc_A3_div = and(cyc_A3, _T_465) @[DivSqrtRecF64_mulAddZ31.scala 407:29]
    skip
    node cyc_A2_div = and(cyc_A2, _T_465) @[DivSqrtRecF64_mulAddZ31.scala 408:29]
    skip
    node cyc_A1_div = and(cyc_A1, _T_465) @[DivSqrtRecF64_mulAddZ31.scala 409:29]
    node cyc_A3_sqrt = and(cyc_A3, sqrtOp_PA) @[DivSqrtRecF64_mulAddZ31.scala 411:30]
    skip
    node cyc_A1_sqrt = and(cyc_A1, sqrtOp_PA) @[DivSqrtRecF64_mulAddZ31.scala 413:30]
    node _T_425 = neq(cycleNum_B, UInt<4>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 415:33]
    node _T_426 = or(cyc_A1, _T_425) @[DivSqrtRecF64_mulAddZ31.scala 415:18]
    node _T_429 = mux(sqrtOp_PA, UInt<4>("ha"), UInt<4>("h6")) @[DivSqrtRecF64_mulAddZ31.scala 418:20]
    node _T_431 = sub(cycleNum_B, UInt<4>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 419:28]
    skip
    node _T_433 = tail(_T_431, 1) @[DivSqrtRecF64_mulAddZ31.scala 419:28]
    node _T_434 = mux(cyc_A1, _T_429, _T_433) @[DivSqrtRecF64_mulAddZ31.scala 417:16]
    node _GEN_34 = mux(_T_426, _T_434, cycleNum_B) @[DivSqrtRecF64_mulAddZ31.scala 415:47 DivSqrtRecF64_mulAddZ31.scala 416:20 DivSqrtRecF64_mulAddZ31.scala 118:30]
    node cyc_B10_sqrt = eq(cycleNum_B, UInt<4>("ha")) @[DivSqrtRecF64_mulAddZ31.scala 423:33]
    node cyc_B9_sqrt = eq(cycleNum_B, UInt<4>("h9")) @[DivSqrtRecF64_mulAddZ31.scala 424:33]
    node cyc_B8_sqrt = eq(cycleNum_B, UInt<4>("h8")) @[DivSqrtRecF64_mulAddZ31.scala 425:33]
    node _T_455 = and(cyc_B6, valid_PA) @[DivSqrtRecF64_mulAddZ31.scala 435:26]
    skip
    node cyc_B6_div = and(_T_455, _T_465) @[DivSqrtRecF64_mulAddZ31.scala 435:38]
    skip
    skip
    skip
    skip
    skip
    skip
    node cyc_B1_div = and(cyc_B1, _T_471) @[DivSqrtRecF64_mulAddZ31.scala 440:26]
    node cyc_B3_sqrt = and(cyc_B3, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 445:27]
    node cyc_B2_sqrt = and(cyc_B2, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 446:27]
    node _T_486 = neq(cycleNum_C, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 449:33]
    node _T_487 = or(cyc_B1, _T_486) @[DivSqrtRecF64_mulAddZ31.scala 449:18]
    node _T_490 = mux(sqrtOp_PB, UInt<3>("h6"), UInt<3>("h5")) @[DivSqrtRecF64_mulAddZ31.scala 451:28]
    node _T_492 = sub(cycleNum_C, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 451:70]
    skip
    node _T_494 = tail(_T_492, 1) @[DivSqrtRecF64_mulAddZ31.scala 451:70]
    node _T_495 = mux(cyc_B1, _T_490, _T_494) @[DivSqrtRecF64_mulAddZ31.scala 451:16]
    node _GEN_35 = mux(_T_487, _T_495, cycleNum_C) @[DivSqrtRecF64_mulAddZ31.scala 449:47 DivSqrtRecF64_mulAddZ31.scala 450:20 DivSqrtRecF64_mulAddZ31.scala 119:30]
    node cyc_C6_sqrt = eq(cycleNum_C, UInt<3>("h6")) @[DivSqrtRecF64_mulAddZ31.scala 454:35]
    node cyc_C2 = eq(cycleNum_C, UInt<3>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 459:27]
    node cyc_C1 = eq(cycleNum_C, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 460:27]
    skip
    node cyc_C5_div = and(cyc_C5, _T_471) @[DivSqrtRecF64_mulAddZ31.scala 462:29]
    skip
    node cyc_C4_div = and(cyc_C4, _T_471) @[DivSqrtRecF64_mulAddZ31.scala 463:29]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node cyc_C1_div = and(cyc_C1, _T_390) @[DivSqrtRecF64_mulAddZ31.scala 466:29]
    node cyc_C5_sqrt = and(cyc_C5, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 468:30]
    node cyc_C4_sqrt = and(cyc_C4, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 469:30]
    node cyc_C3_sqrt = and(cyc_C3, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 470:30]
    skip
    node cyc_C1_sqrt = and(cyc_C1, sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 472:30]
    node _T_518 = neq(cycleNum_E, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 474:33]
    node _T_519 = or(cyc_C1, _T_518) @[DivSqrtRecF64_mulAddZ31.scala 474:18]
    node _T_522 = sub(cycleNum_E, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 475:55]
    skip
    node _T_524 = tail(_T_522, 1) @[DivSqrtRecF64_mulAddZ31.scala 475:55]
    node _T_525 = mux(cyc_C1, UInt<3>("h4"), _T_524) @[DivSqrtRecF64_mulAddZ31.scala 475:26]
    node _GEN_36 = mux(_T_519, _T_525, cycleNum_E) @[DivSqrtRecF64_mulAddZ31.scala 474:47 DivSqrtRecF64_mulAddZ31.scala 475:20 DivSqrtRecF64_mulAddZ31.scala 120:30]
    skip
    node cyc_E3 = eq(cycleNum_E, UInt<3>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 479:27]
    node cyc_E2 = eq(cycleNum_E, UInt<3>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 480:27]
    skip
    skip
    skip
    skip
    skip
    node cyc_E3_div = and(cyc_E3, _T_390) @[DivSqrtRecF64_mulAddZ31.scala 484:29]
    skip
    skip
    skip
    skip
    skip
    skip
    node cyc_E3_sqrt = and(cyc_E3, sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 489:30]
    skip
    skip
    node zFractB_A4_div = mux(cyc_A4_div, fractB_S, UInt<52>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 496:29]
    node _T_543 = bits(fractB_S, 51, 49) @[DivSqrtRecF64_mulAddZ31.scala 498:53]
    node _T_545 = eq(_T_543, UInt<3>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 498:62]
    node zLinPiece_0_A4_div = and(cyc_A4_div, _T_545) @[DivSqrtRecF64_mulAddZ31.scala 498:41]
    skip
    node _T_548 = eq(_T_543, UInt<3>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 499:62]
    node zLinPiece_1_A4_div = and(cyc_A4_div, _T_548) @[DivSqrtRecF64_mulAddZ31.scala 499:41]
    skip
    node _T_551 = eq(_T_543, UInt<3>("h2")) @[DivSqrtRecF64_mulAddZ31.scala 500:62]
    node zLinPiece_2_A4_div = and(cyc_A4_div, _T_551) @[DivSqrtRecF64_mulAddZ31.scala 500:41]
    skip
    node _T_554 = eq(_T_543, UInt<3>("h3")) @[DivSqrtRecF64_mulAddZ31.scala 501:62]
    node zLinPiece_3_A4_div = and(cyc_A4_div, _T_554) @[DivSqrtRecF64_mulAddZ31.scala 501:41]
    skip
    node _T_557 = eq(_T_543, UInt<3>("h4")) @[DivSqrtRecF64_mulAddZ31.scala 502:62]
    node zLinPiece_4_A4_div = and(cyc_A4_div, _T_557) @[DivSqrtRecF64_mulAddZ31.scala 502:41]
    skip
    node _T_560 = eq(_T_543, UInt<3>("h5")) @[DivSqrtRecF64_mulAddZ31.scala 503:62]
    node zLinPiece_5_A4_div = and(cyc_A4_div, _T_560) @[DivSqrtRecF64_mulAddZ31.scala 503:41]
    skip
    node _T_563 = eq(_T_543, UInt<3>("h6")) @[DivSqrtRecF64_mulAddZ31.scala 504:62]
    node zLinPiece_6_A4_div = and(cyc_A4_div, _T_563) @[DivSqrtRecF64_mulAddZ31.scala 504:41]
    skip
    node _T_566 = eq(_T_543, UInt<3>("h7")) @[DivSqrtRecF64_mulAddZ31.scala 505:62]
    node zLinPiece_7_A4_div = and(cyc_A4_div, _T_566) @[DivSqrtRecF64_mulAddZ31.scala 505:41]
    node _T_569 = mux(zLinPiece_0_A4_div, UInt<9>("h1c7"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 507:12]
    node _T_572 = mux(zLinPiece_1_A4_div, UInt<9>("h16c"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 508:12]
    node _T_573 = or(_T_569, _T_572) @[DivSqrtRecF64_mulAddZ31.scala 507:59]
    node _T_576 = mux(zLinPiece_2_A4_div, UInt<9>("h12a"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 509:12]
    node _T_577 = or(_T_573, _T_576) @[DivSqrtRecF64_mulAddZ31.scala 508:59]
    node _T_580 = mux(zLinPiece_3_A4_div, UInt<9>("hf8"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 510:12]
    node _T_581 = or(_T_577, _T_580) @[DivSqrtRecF64_mulAddZ31.scala 509:59]
    node _T_584 = mux(zLinPiece_4_A4_div, UInt<9>("hd2"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 511:12]
    node _T_585 = or(_T_581, _T_584) @[DivSqrtRecF64_mulAddZ31.scala 510:59]
    node _T_588 = mux(zLinPiece_5_A4_div, UInt<9>("hb4"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 512:12]
    node _T_589 = or(_T_585, _T_588) @[DivSqrtRecF64_mulAddZ31.scala 511:59]
    node _T_592 = mux(zLinPiece_6_A4_div, UInt<9>("h9c"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 513:12]
    node _T_593 = or(_T_589, _T_592) @[DivSqrtRecF64_mulAddZ31.scala 512:59]
    node _T_596 = mux(zLinPiece_7_A4_div, UInt<9>("h89"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 514:12]
    node zK1_A4_div = or(_T_593, _T_596) @[DivSqrtRecF64_mulAddZ31.scala 513:59]
    skip
    node _T_600 = mux(zLinPiece_0_A4_div, UInt<12>("h1c"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 516:12]
    skip
    node _T_604 = mux(zLinPiece_1_A4_div, UInt<12>("h3a2"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 517:12]
    node _T_605 = or(_T_600, _T_604) @[DivSqrtRecF64_mulAddZ31.scala 516:61]
    skip
    node _T_609 = mux(zLinPiece_2_A4_div, UInt<12>("h675"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 518:12]
    node _T_610 = or(_T_605, _T_609) @[DivSqrtRecF64_mulAddZ31.scala 517:61]
    skip
    node _T_614 = mux(zLinPiece_3_A4_div, UInt<12>("h8c6"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 519:12]
    node _T_615 = or(_T_610, _T_614) @[DivSqrtRecF64_mulAddZ31.scala 518:61]
    skip
    node _T_619 = mux(zLinPiece_4_A4_div, UInt<12>("hab4"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 520:12]
    node _T_620 = or(_T_615, _T_619) @[DivSqrtRecF64_mulAddZ31.scala 519:61]
    skip
    node _T_624 = mux(zLinPiece_5_A4_div, UInt<12>("hc56"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 521:12]
    node _T_625 = or(_T_620, _T_624) @[DivSqrtRecF64_mulAddZ31.scala 520:61]
    skip
    node _T_629 = mux(zLinPiece_6_A4_div, UInt<12>("hdbd"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 522:12]
    node _T_630 = or(_T_625, _T_629) @[DivSqrtRecF64_mulAddZ31.scala 521:61]
    skip
    node _T_634 = mux(zLinPiece_7_A4_div, UInt<12>("hef4"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 523:12]
    node zComplFractK0_A4_div = or(_T_630, _T_634) @[DivSqrtRecF64_mulAddZ31.scala 522:61]
    node zFractB_A7_sqrt = mux(cyc_A7_sqrt, fractB_S, UInt<52>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 525:30]
    node _T_636 = bits(expB_S, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 527:55]
    node _T_638 = not(_T_636) @[DivSqrtRecF64_mulAddZ31.scala 527:47]
    node _T_639 = and(cyc_A7_sqrt, _T_638) @[DivSqrtRecF64_mulAddZ31.scala 527:44]
    skip
    node _T_642 = not(_T_228) @[DivSqrtRecF64_mulAddZ31.scala 527:62]
    node zQuadPiece_0_A7_sqrt = and(_T_639, _T_642) @[DivSqrtRecF64_mulAddZ31.scala 527:59]
    skip
    skip
    skip
    skip
    node zQuadPiece_1_A7_sqrt = and(_T_639, _T_228) @[DivSqrtRecF64_mulAddZ31.scala 528:59]
    skip
    node _T_649 = and(cyc_A7_sqrt, _T_636) @[DivSqrtRecF64_mulAddZ31.scala 529:44]
    skip
    skip
    node zQuadPiece_2_A7_sqrt = and(_T_649, _T_642) @[DivSqrtRecF64_mulAddZ31.scala 529:59]
    skip
    skip
    skip
    node zQuadPiece_3_A7_sqrt = and(_T_649, _T_228) @[DivSqrtRecF64_mulAddZ31.scala 530:59]
    node _T_658 = mux(zQuadPiece_0_A7_sqrt, UInt<9>("h1c8"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 532:12]
    node _T_661 = mux(zQuadPiece_1_A7_sqrt, UInt<9>("hc1"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 533:12]
    node _T_662 = or(_T_658, _T_661) @[DivSqrtRecF64_mulAddZ31.scala 532:61]
    node _T_665 = mux(zQuadPiece_2_A7_sqrt, UInt<9>("h143"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 534:12]
    node _T_666 = or(_T_662, _T_665) @[DivSqrtRecF64_mulAddZ31.scala 533:61]
    node _T_669 = mux(zQuadPiece_3_A7_sqrt, UInt<9>("h89"), UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 535:12]
    node zK2_A7_sqrt = or(_T_666, _T_669) @[DivSqrtRecF64_mulAddZ31.scala 534:61]
    skip
    node _T_673 = mux(zQuadPiece_0_A7_sqrt, UInt<10>("h2f"), UInt<10>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 537:12]
    skip
    node _T_677 = mux(zQuadPiece_1_A7_sqrt, UInt<10>("h1df"), UInt<10>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 538:12]
    node _T_678 = or(_T_673, _T_677) @[DivSqrtRecF64_mulAddZ31.scala 537:63]
    skip
    node _T_682 = mux(zQuadPiece_2_A7_sqrt, UInt<10>("h14d"), UInt<10>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 539:12]
    node _T_683 = or(_T_678, _T_682) @[DivSqrtRecF64_mulAddZ31.scala 538:63]
    skip
    node _T_687 = mux(zQuadPiece_3_A7_sqrt, UInt<10>("h27e"), UInt<10>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 540:12]
    node zComplK1_A7_sqrt = or(_T_683, _T_687) @[DivSqrtRecF64_mulAddZ31.scala 539:63]
    node _T_688 = bits(exp_PA, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 542:55]
    node _T_690 = not(_T_688) @[DivSqrtRecF64_mulAddZ31.scala 542:47]
    node _T_691 = and(cyc_A6_sqrt, _T_690) @[DivSqrtRecF64_mulAddZ31.scala 542:44]
    node _T_692 = bits(sigB_PA, 51, 51) @[DivSqrtRecF64_mulAddZ31.scala 542:71]
    node _T_694 = not(_T_692) @[DivSqrtRecF64_mulAddZ31.scala 542:62]
    node zQuadPiece_0_A6_sqrt = and(_T_691, _T_694) @[DivSqrtRecF64_mulAddZ31.scala 542:59]
    skip
    skip
    skip
    skip
    node zQuadPiece_1_A6_sqrt = and(_T_691, _T_692) @[DivSqrtRecF64_mulAddZ31.scala 543:59]
    skip
    node _T_701 = and(cyc_A6_sqrt, _T_688) @[DivSqrtRecF64_mulAddZ31.scala 544:44]
    skip
    skip
    node zQuadPiece_2_A6_sqrt = and(_T_701, _T_694) @[DivSqrtRecF64_mulAddZ31.scala 544:59]
    skip
    skip
    skip
    node zQuadPiece_3_A6_sqrt = and(_T_701, _T_692) @[DivSqrtRecF64_mulAddZ31.scala 545:59]
    skip
    node _T_711 = mux(zQuadPiece_0_A6_sqrt, UInt<13>("h1a"), UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 547:12]
    skip
    node _T_715 = mux(zQuadPiece_1_A6_sqrt, UInt<13>("hbca"), UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 548:12]
    node _T_716 = or(_T_711, _T_715) @[DivSqrtRecF64_mulAddZ31.scala 547:64]
    skip
    node _T_720 = mux(zQuadPiece_2_A6_sqrt, UInt<13>("h12d3"), UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 549:12]
    node _T_721 = or(_T_716, _T_720) @[DivSqrtRecF64_mulAddZ31.scala 548:64]
    skip
    node _T_725 = mux(zQuadPiece_3_A6_sqrt, UInt<13>("h1b17"), UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 550:12]
    node zComplFractK0_A6_sqrt = or(_T_721, _T_725) @[DivSqrtRecF64_mulAddZ31.scala 549:64]
    node _T_726 = bits(zFractB_A4_div, 48, 40) @[DivSqrtRecF64_mulAddZ31.scala 553:23]
    node _T_727 = or(_T_726, zK2_A7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 553:32]
    node _T_729 = not(cyc_S) @[DivSqrtRecF64_mulAddZ31.scala 554:17]
    node _T_731 = mux(_T_729, nextMulAdd9A_A, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 554:16]
    node mulAdd9A_A = or(_T_727, _T_731) @[DivSqrtRecF64_mulAddZ31.scala 553:46]
    node _T_732 = bits(zFractB_A7_sqrt, 50, 42) @[DivSqrtRecF64_mulAddZ31.scala 556:37]
    node _T_733 = or(zK1_A4_div, _T_732) @[DivSqrtRecF64_mulAddZ31.scala 556:20]
    skip
    node _T_737 = mux(_T_729, nextMulAdd9B_A, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 557:16]
    node mulAdd9B_A = or(_T_733, _T_737) @[DivSqrtRecF64_mulAddZ31.scala 556:46]
    skip
    node _T_741 = mux(cyc_A7_sqrt, UInt<10>("h3ff"), UInt<10>("h0")) @[Bitwise.scala 71:12]
    node _T_742 = cat(zComplK1_A7_sqrt, _T_741) @[Cat.scala 30:58]
    skip
    node _T_746 = mux(cyc_A6_sqrt, UInt<6>("h3f"), UInt<6>("h0")) @[Bitwise.scala 71:12]
    skip
    node _T_748 = cat(cat(cyc_A6_sqrt, zComplFractK0_A6_sqrt), _T_746) @[Cat.scala 30:58]
    node _T_749 = or(_T_742, _T_748) @[DivSqrtRecF64_mulAddZ31.scala 559:71]
    skip
    node _T_753 = mux(cyc_A4_div, UInt<8>("hff"), UInt<8>("h0")) @[Bitwise.scala 71:12]
    skip
    node _T_755 = cat(cat(cyc_A4_div, zComplFractK0_A4_div), _T_753) @[Cat.scala 30:58]
    node _GEN_55 = pad(_T_749, 21) @[DivSqrtRecF64_mulAddZ31.scala 560:71]
    node _T_756 = or(_GEN_55, _T_755) @[DivSqrtRecF64_mulAddZ31.scala 560:71]
    node _T_758 = shl(fractR0_A, 10) @[DivSqrtRecF64_mulAddZ31.scala 563:54]
    node _GEN_56 = pad(_T_758, 20) @[DivSqrtRecF64_mulAddZ31.scala 563:42]
    node _T_759 = add(UInt<20>("h40000"), _GEN_56) @[DivSqrtRecF64_mulAddZ31.scala 563:42]
    node _T_760 = tail(_T_759, 1) @[DivSqrtRecF64_mulAddZ31.scala 563:42]
    node _T_762 = mux(cyc_A5_sqrt, _T_760, UInt<20>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 563:12]
    node _GEN_57 = pad(_T_762, 21) @[DivSqrtRecF64_mulAddZ31.scala 561:71]
    node _T_763 = or(_T_756, _GEN_57) @[DivSqrtRecF64_mulAddZ31.scala 561:71]
    node _T_764 = bits(hiSqrR0_A_sqrt, 9, 9) @[DivSqrtRecF64_mulAddZ31.scala 564:44]
    node _T_766 = not(_T_764) @[DivSqrtRecF64_mulAddZ31.scala 564:28]
    node _T_767 = and(cyc_A4_sqrt, _T_766) @[DivSqrtRecF64_mulAddZ31.scala 564:25]
    node _T_770 = mux(_T_767, UInt<11>("h400"), UInt<11>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 564:12]
    node _GEN_58 = pad(_T_770, 21) @[DivSqrtRecF64_mulAddZ31.scala 563:70]
    node _T_771 = or(_T_763, _GEN_58) @[DivSqrtRecF64_mulAddZ31.scala 563:70]
    skip
    node _T_773 = and(cyc_A4_sqrt, _T_764) @[DivSqrtRecF64_mulAddZ31.scala 565:26]
    node _T_774 = or(_T_773, cyc_A3_div) @[DivSqrtRecF64_mulAddZ31.scala 565:48]
    node _T_775 = bits(sigB_PA, 46, 26) @[DivSqrtRecF64_mulAddZ31.scala 566:20]
    node _T_777 = add(_T_775, UInt<21>("h400")) @[DivSqrtRecF64_mulAddZ31.scala 566:29]
    node _T_778 = tail(_T_777, 1) @[DivSqrtRecF64_mulAddZ31.scala 566:29]
    node _T_780 = mux(_T_774, _T_778, UInt<21>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 565:12]
    node _T_781 = or(_T_771, _T_780) @[DivSqrtRecF64_mulAddZ31.scala 564:71]
    node _T_782 = or(cyc_A3_sqrt, cyc_A2) @[DivSqrtRecF64_mulAddZ31.scala 569:25]
    node _T_784 = mux(_T_782, partNegSigma0_A, UInt<21>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 569:12]
    node _T_785 = or(_T_781, _T_784) @[DivSqrtRecF64_mulAddZ31.scala 568:11]
    node _T_786 = shl(fractR0_A, 16) @[DivSqrtRecF64_mulAddZ31.scala 570:45]
    node _T_788 = mux(cyc_A1_sqrt, _T_786, UInt<25>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 570:12]
    node _GEN_59 = pad(_T_785, 25) @[DivSqrtRecF64_mulAddZ31.scala 569:62]
    node _T_789 = or(_GEN_59, _T_788) @[DivSqrtRecF64_mulAddZ31.scala 569:62]
    node _T_790 = shl(fractR0_A, 15) @[DivSqrtRecF64_mulAddZ31.scala 571:45]
    node _T_792 = mux(cyc_A1_div, _T_790, UInt<24>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 571:12]
    node _GEN_60 = pad(_T_792, 25) @[DivSqrtRecF64_mulAddZ31.scala 570:62]
    node mulAdd9C_A = or(_T_789, _GEN_60) @[DivSqrtRecF64_mulAddZ31.scala 570:62]
    node _T_793 = mul(mulAdd9A_A, mulAdd9B_A) @[DivSqrtRecF64_mulAddZ31.scala 573:20]
    node _T_795 = bits(mulAdd9C_A, 17, 0) @[DivSqrtRecF64_mulAddZ31.scala 573:61]
    node _T_796 = cat(UInt<1>("h0"), _T_795) @[Cat.scala 30:58]
    node _GEN_61 = pad(_T_793, 19) @[DivSqrtRecF64_mulAddZ31.scala 573:33]
    node _T_797 = add(_GEN_61, _T_796) @[DivSqrtRecF64_mulAddZ31.scala 573:33]
    node loMulAdd9Out_A = tail(_T_797, 1) @[DivSqrtRecF64_mulAddZ31.scala 573:33]
    node _T_798 = bits(loMulAdd9Out_A, 18, 18) @[DivSqrtRecF64_mulAddZ31.scala 575:31]
    node _T_799 = bits(mulAdd9C_A, 24, 18) @[DivSqrtRecF64_mulAddZ31.scala 576:27]
    node _T_801 = add(_T_799, UInt<7>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 576:36]
    node _T_802 = tail(_T_801, 1) @[DivSqrtRecF64_mulAddZ31.scala 576:36]
    skip
    node _T_804 = mux(_T_798, _T_802, _T_799) @[DivSqrtRecF64_mulAddZ31.scala 575:16]
    node _T_805 = bits(loMulAdd9Out_A, 17, 0) @[DivSqrtRecF64_mulAddZ31.scala 579:27]
    node mulAdd9Out_A = cat(_T_804, _T_805) @[Cat.scala 30:58]
    node _T_806 = bits(mulAdd9Out_A, 19, 19) @[DivSqrtRecF64_mulAddZ31.scala 583:40]
    node _T_807 = and(cyc_A6_sqrt, _T_806) @[DivSqrtRecF64_mulAddZ31.scala 583:25]
    node _T_808 = not(mulAdd9Out_A) @[DivSqrtRecF64_mulAddZ31.scala 584:13]
    node _T_809 = shr(_T_808, 10) @[DivSqrtRecF64_mulAddZ31.scala 584:26]
    node _T_811 = mux(_T_807, _T_809, UInt<15>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 583:12]
    node zFractR0_A6_sqrt = bits(_T_811, 8, 0) @[DivSqrtRecF64_mulAddZ31.scala 586:10]
    skip
    node _T_813 = shl(mulAdd9Out_A, 1) @[DivSqrtRecF64_mulAddZ31.scala 590:52]
    node sqrR0_A5_sqrt = mux(_T_688, _T_813, pad(mulAdd9Out_A, 26)) @[DivSqrtRecF64_mulAddZ31.scala 590:28]
    node _T_814 = bits(mulAdd9Out_A, 20, 20) @[DivSqrtRecF64_mulAddZ31.scala 592:39]
    node _T_815 = and(cyc_A4_div, _T_814) @[DivSqrtRecF64_mulAddZ31.scala 592:24]
    skip
    node _T_817 = shr(_T_808, 11) @[DivSqrtRecF64_mulAddZ31.scala 593:26]
    node _T_819 = mux(_T_815, _T_817, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 592:12]
    node zFractR0_A4_div = bits(_T_819, 8, 0) @[DivSqrtRecF64_mulAddZ31.scala 595:10]
    node _T_820 = bits(mulAdd9Out_A, 11, 11) @[DivSqrtRecF64_mulAddZ31.scala 598:35]
    node _T_821 = and(cyc_A2, _T_820) @[DivSqrtRecF64_mulAddZ31.scala 598:20]
    skip
    node _T_823 = shr(_T_808, 2) @[DivSqrtRecF64_mulAddZ31.scala 598:54]
    node _T_825 = mux(_T_821, _T_823, UInt<23>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 598:12]
    node zSigma0_A2 = bits(_T_825, 8, 0) @[DivSqrtRecF64_mulAddZ31.scala 598:67]
    node _T_826 = shr(mulAdd9Out_A, 10) @[DivSqrtRecF64_mulAddZ31.scala 601:36]
    node _T_827 = shr(mulAdd9Out_A, 9) @[DivSqrtRecF64_mulAddZ31.scala 601:54]
    node _T_828 = mux(sqrtOp_PA, pad(_T_826, 16), _T_827) @[DivSqrtRecF64_mulAddZ31.scala 601:12]
    node fractR1_A1 = bits(_T_828, 14, 0) @[DivSqrtRecF64_mulAddZ31.scala 601:58]
    node r1_A1 = cat(UInt<1>("h1"), fractR1_A1) @[Cat.scala 30:58]
    skip
    node _T_831 = shl(r1_A1, 1) @[DivSqrtRecF64_mulAddZ31.scala 603:43]
    node ER1_A1_sqrt = mux(_T_688, _T_831, pad(r1_A1, 17)) @[DivSqrtRecF64_mulAddZ31.scala 603:26]
    node _T_832 = or(cyc_A6_sqrt, cyc_A4_div) @[DivSqrtRecF64_mulAddZ31.scala 605:23]
    node _T_833 = or(zFractR0_A6_sqrt, zFractR0_A4_div) @[DivSqrtRecF64_mulAddZ31.scala 606:39]
    skip
    node _T_834 = shr(sqrR0_A5_sqrt, 10) @[DivSqrtRecF64_mulAddZ31.scala 610:40]
    node _GEN_38 = mux(cyc_A5_sqrt, _T_834, pad(hiSqrR0_A_sqrt, 16)) @[DivSqrtRecF64_mulAddZ31.scala 609:24 DivSqrtRecF64_mulAddZ31.scala 610:24 DivSqrtRecF64_mulAddZ31.scala 124:30]
    node _T_835 = or(cyc_A4_sqrt, cyc_A3) @[DivSqrtRecF64_mulAddZ31.scala 613:23]
    skip
    node _T_837 = mux(cyc_A4_sqrt, mulAdd9Out_A, pad(_T_827, 25)) @[DivSqrtRecF64_mulAddZ31.scala 616:16]
    node _T_838 = bits(_T_837, 20, 0) @[DivSqrtRecF64_mulAddZ31.scala 616:60]
    skip
    node _T_839 = or(cyc_A7_sqrt, cyc_A6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 620:21]
    node _T_840 = or(_T_839, cyc_A5_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 620:36]
    node _T_841 = or(_T_840, cyc_A4) @[DivSqrtRecF64_mulAddZ31.scala 620:51]
    node _T_842 = or(_T_841, cyc_A3) @[DivSqrtRecF64_mulAddZ31.scala 620:61]
    node _T_843 = or(_T_842, cyc_A2) @[DivSqrtRecF64_mulAddZ31.scala 620:71]
    skip
    skip
    node _T_847 = mux(cyc_A7_sqrt, _T_817, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 623:16]
    node _GEN_62 = pad(zFractR0_A6_sqrt, 14) @[DivSqrtRecF64_mulAddZ31.scala 623:68]
    node _T_848 = or(_T_847, _GEN_62) @[DivSqrtRecF64_mulAddZ31.scala 623:68]
    node _T_849 = bits(sigB_PA, 43, 35) @[DivSqrtRecF64_mulAddZ31.scala 625:47]
    node _T_851 = mux(cyc_A4_sqrt, _T_849, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 625:16]
    node _GEN_63 = pad(_T_851, 14) @[DivSqrtRecF64_mulAddZ31.scala 624:68]
    node _T_852 = or(_T_848, _GEN_63) @[DivSqrtRecF64_mulAddZ31.scala 624:68]
    node _T_853 = bits(zFractB_A4_div, 43, 35) @[DivSqrtRecF64_mulAddZ31.scala 626:27]
    node _GEN_64 = pad(_T_853, 14) @[DivSqrtRecF64_mulAddZ31.scala 625:68]
    node _T_854 = or(_T_852, _GEN_64) @[DivSqrtRecF64_mulAddZ31.scala 625:68]
    node _T_855 = or(cyc_A5_sqrt, cyc_A3) @[DivSqrtRecF64_mulAddZ31.scala 627:29]
    node _T_856 = bits(sigB_PA, 52, 44) @[DivSqrtRecF64_mulAddZ31.scala 627:47]
    node _T_858 = mux(_T_855, _T_856, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 627:16]
    node _GEN_65 = pad(_T_858, 14) @[DivSqrtRecF64_mulAddZ31.scala 626:68]
    node _T_859 = or(_T_854, _GEN_65) @[DivSqrtRecF64_mulAddZ31.scala 626:68]
    node _GEN_66 = pad(zSigma0_A2, 14) @[DivSqrtRecF64_mulAddZ31.scala 627:68]
    node _T_860 = or(_T_859, _GEN_66) @[DivSqrtRecF64_mulAddZ31.scala 627:68]
    node _GEN_40 = mux(_T_843, _T_860, pad(nextMulAdd9A_A, 14)) @[DivSqrtRecF64_mulAddZ31.scala 621:7 DivSqrtRecF64_mulAddZ31.scala 622:24 DivSqrtRecF64_mulAddZ31.scala 126:30]
    skip
    skip
    skip
    node _T_864 = or(_T_841, cyc_A2) @[DivSqrtRecF64_mulAddZ31.scala 630:63]
    skip
    node _T_866 = or(_T_732, zFractR0_A6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 632:73]
    node _T_867 = bits(sqrR0_A5_sqrt, 9, 1) @[DivSqrtRecF64_mulAddZ31.scala 634:43]
    node _T_869 = mux(cyc_A5_sqrt, _T_867, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 634:16]
    node _T_870 = or(_T_866, _T_869) @[DivSqrtRecF64_mulAddZ31.scala 633:73]
    node _T_871 = or(_T_870, zFractR0_A4_div) @[DivSqrtRecF64_mulAddZ31.scala 634:73]
    node _T_872 = bits(hiSqrR0_A_sqrt, 8, 0) @[DivSqrtRecF64_mulAddZ31.scala 636:44]
    node _T_874 = mux(cyc_A4_sqrt, _T_872, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 636:16]
    node _T_875 = or(_T_871, _T_874) @[DivSqrtRecF64_mulAddZ31.scala 635:73]
    node _T_877 = bits(fractR0_A, 8, 1) @[DivSqrtRecF64_mulAddZ31.scala 637:55]
    node _T_878 = cat(UInt<1>("h1"), _T_877) @[Cat.scala 30:58]
    node _T_880 = mux(cyc_A2, _T_878, UInt<9>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 637:16]
    node _T_881 = or(_T_875, _T_880) @[DivSqrtRecF64_mulAddZ31.scala 636:73]
    skip
    skip
    node _T_882 = or(cyc_A1, cyc_B7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 647:16]
    skip
    node _T_883 = or(_T_882, cyc_B6_div) @[DivSqrtRecF64_mulAddZ31.scala 647:31]
    node _T_884 = or(_T_883, cyc_B4) @[DivSqrtRecF64_mulAddZ31.scala 647:45]
    node _T_885 = or(_T_884, cyc_B3) @[DivSqrtRecF64_mulAddZ31.scala 647:55]
    node _T_886 = or(_T_885, cyc_C6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 647:65]
    node _T_887 = or(_T_886, cyc_C4) @[DivSqrtRecF64_mulAddZ31.scala 648:25]
    skip
    node _T_889 = shl(ER1_A1_sqrt, 36) @[DivSqrtRecF64_mulAddZ31.scala 650:51]
    node _T_891 = mux(cyc_A1_sqrt, _T_889, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 650:12]
    node _T_892 = or(cyc_B7_sqrt, cyc_A1_div) @[DivSqrtRecF64_mulAddZ31.scala 651:25]
    node _T_894 = mux(_T_892, sigB_PA, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 651:12]
    node _T_895 = or(_T_891, _T_894) @[DivSqrtRecF64_mulAddZ31.scala 650:67]
    node _T_897 = mux(cyc_B6_div, sigA_PA, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 652:12]
    node _T_898 = or(_T_895, _T_897) @[DivSqrtRecF64_mulAddZ31.scala 651:67]
    node _T_1018 = bits(io_mulAddResult_3, 90, 45) @[DivSqrtRecF64_mulAddZ31.scala 702:49]
    node _T_1019 = not(_T_1018) @[DivSqrtRecF64_mulAddZ31.scala 702:31]
    node zSigma1_B4 = mux(cyc_B4, _T_1019, UInt<46>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 702:22]
    skip
    node _T_899 = bits(zSigma1_B4, 45, 12) @[DivSqrtRecF64_mulAddZ31.scala 653:19]
    node _GEN_67 = pad(_T_899, 53) @[DivSqrtRecF64_mulAddZ31.scala 652:67]
    node _T_900 = or(_T_898, _GEN_67) @[DivSqrtRecF64_mulAddZ31.scala 652:67]
    node _T_901 = or(cyc_B3, cyc_C6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 655:20]
    node sigXNU_B3_CX = bits(io_mulAddResult_3, 104, 47) @[DivSqrtRecF64_mulAddZ31.scala 704:38]
    skip
    node _T_902 = bits(sigXNU_B3_CX, 57, 12) @[DivSqrtRecF64_mulAddZ31.scala 655:48]
    node _T_904 = mux(_T_901, _T_902, UInt<46>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 655:12]
    node _GEN_68 = pad(_T_904, 53) @[DivSqrtRecF64_mulAddZ31.scala 653:67]
    node _T_905 = or(_T_900, _GEN_68) @[DivSqrtRecF64_mulAddZ31.scala 653:67]
    node _T_906 = bits(sigXN_C, 57, 25) @[DivSqrtRecF64_mulAddZ31.scala 656:43]
    node _T_907 = shl(_T_906, 13) @[DivSqrtRecF64_mulAddZ31.scala 656:51]
    node _T_909 = mux(cyc_C4_div, _T_907, UInt<46>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 656:12]
    node _GEN_69 = pad(_T_909, 53) @[DivSqrtRecF64_mulAddZ31.scala 655:67]
    node _T_910 = or(_T_905, _GEN_69) @[DivSqrtRecF64_mulAddZ31.scala 655:67]
    node _T_911 = shl(u_C_sqrt, 15) @[DivSqrtRecF64_mulAddZ31.scala 657:44]
    node _T_913 = mux(cyc_C4_sqrt, _T_911, UInt<46>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 657:12]
    node _GEN_70 = pad(_T_913, 53) @[DivSqrtRecF64_mulAddZ31.scala 656:67]
    node _T_914 = or(_T_910, _GEN_70) @[DivSqrtRecF64_mulAddZ31.scala 656:67]
    node _T_916 = mux(cyc_C1_div, sigB_PC, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 658:12]
    node _T_917 = or(_T_914, _T_916) @[DivSqrtRecF64_mulAddZ31.scala 657:67]
    node _T_1041 = bits(io_mulAddResult_3, 104, 51) @[DivSqrtRecF64_mulAddZ31.scala 716:44]
    node _T_1042 = not(_T_1041) @[DivSqrtRecF64_mulAddZ31.scala 716:26]
    node zComplSigT_C1_sqrt = mux(cyc_C1_sqrt, _T_1042, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 716:12]
    skip
    node _GEN_71 = pad(_T_917, 54) @[DivSqrtRecF64_mulAddZ31.scala 658:67]
    skip
    skip
    node _T_920 = or(_T_882, cyc_B6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 661:31]
    node _T_921 = or(_T_920, cyc_B4) @[DivSqrtRecF64_mulAddZ31.scala 661:46]
    node _T_922 = or(_T_921, cyc_C6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 661:56]
    node _T_923 = or(_T_922, cyc_C4) @[DivSqrtRecF64_mulAddZ31.scala 662:25]
    skip
    node _T_925 = shl(r1_A1, 36) @[DivSqrtRecF64_mulAddZ31.scala 664:31]
    node _T_927 = mux(cyc_A1, _T_925, UInt<52>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 664:12]
    node _T_928 = shl(ESqrR1_B_sqrt, 19) @[DivSqrtRecF64_mulAddZ31.scala 665:39]
    node _T_930 = mux(cyc_B7_sqrt, _T_928, UInt<51>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 665:12]
    node _GEN_72 = pad(_T_930, 52) @[DivSqrtRecF64_mulAddZ31.scala 664:55]
    node _T_931 = or(_T_927, _GEN_72) @[DivSqrtRecF64_mulAddZ31.scala 664:55]
    node _T_932 = shl(ER1_B_sqrt, 36) @[DivSqrtRecF64_mulAddZ31.scala 666:36]
    node _T_934 = mux(cyc_B6_sqrt, _T_932, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 666:12]
    node _GEN_73 = pad(_T_931, 53) @[DivSqrtRecF64_mulAddZ31.scala 665:55]
    node _T_935 = or(_GEN_73, _T_934) @[DivSqrtRecF64_mulAddZ31.scala 665:55]
    node _GEN_74 = pad(zSigma1_B4, 53) @[DivSqrtRecF64_mulAddZ31.scala 666:55]
    node _T_936 = or(_T_935, _GEN_74) @[DivSqrtRecF64_mulAddZ31.scala 666:55]
    node _T_937 = bits(sqrSigma1_C, 30, 1) @[DivSqrtRecF64_mulAddZ31.scala 668:37]
    node _T_939 = mux(cyc_C6_sqrt, _T_937, UInt<30>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 668:12]
    node _GEN_75 = pad(_T_939, 53) @[DivSqrtRecF64_mulAddZ31.scala 667:55]
    node _T_940 = or(_T_936, _GEN_75) @[DivSqrtRecF64_mulAddZ31.scala 667:55]
    node _T_942 = mux(cyc_C4, sqrSigma1_C, UInt<33>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 669:12]
    node _GEN_76 = pad(_T_942, 53) @[DivSqrtRecF64_mulAddZ31.scala 668:55]
    node _T_943 = or(_T_940, _GEN_76) @[DivSqrtRecF64_mulAddZ31.scala 668:55]
    node _T_1023 = bits(io_mulAddResult_3, 104, 104) @[DivSqrtRecF64_mulAddZ31.scala 705:39]
    node E_C1_div = not(_T_1023) @[DivSqrtRecF64_mulAddZ31.scala 705:20]
    node _T_1026 = not(E_C1_div) @[DivSqrtRecF64_mulAddZ31.scala 707:28]
    node _T_1027 = and(cyc_C1_div, _T_1026) @[DivSqrtRecF64_mulAddZ31.scala 707:25]
    node _T_1028 = or(_T_1027, cyc_C1_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 707:40]
    skip
    skip
    node _T_1032 = mux(_T_1028, _T_1042, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 707:12]
    node _T_1033 = and(cyc_C1_div, E_C1_div) @[DivSqrtRecF64_mulAddZ31.scala 711:24]
    node _T_1035 = bits(io_mulAddResult_3, 102, 50) @[DivSqrtRecF64_mulAddZ31.scala 712:47]
    node _T_1036 = not(_T_1035) @[DivSqrtRecF64_mulAddZ31.scala 712:29]
    node _T_1037 = cat(UInt<1>("h0"), _T_1036) @[Cat.scala 30:58]
    node _T_1039 = mux(_T_1033, _T_1037, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 711:12]
    node zComplSigT_C1 = or(_T_1032, _T_1039) @[DivSqrtRecF64_mulAddZ31.scala 710:11]
    skip
    node _GEN_77 = pad(_T_943, 54) @[DivSqrtRecF64_mulAddZ31.scala 669:55]
    skip
    node _T_945 = or(cyc_A4, cyc_A3_div) @[DivSqrtRecF64_mulAddZ31.scala 672:20]
    node _T_946 = or(_T_945, cyc_A1_div) @[DivSqrtRecF64_mulAddZ31.scala 672:34]
    skip
    node _T_947 = or(_T_946, cyc_B10_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 672:48]
    skip
    node _T_948 = or(_T_947, cyc_B9_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 673:30]
    node _T_949 = or(_T_948, cyc_B7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 673:45]
    node _T_950 = or(_T_949, cyc_B6) @[DivSqrtRecF64_mulAddZ31.scala 673:60]
    node _T_951 = or(_T_950, cyc_B5_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 673:70]
    skip
    node _T_952 = or(_T_951, cyc_B3_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 674:29]
    node _T_953 = or(_T_952, cyc_B2_div) @[DivSqrtRecF64_mulAddZ31.scala 674:44]
    node _T_954 = or(_T_953, cyc_B1_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 674:58]
    node _T_955 = or(_T_954, cyc_C4) @[DivSqrtRecF64_mulAddZ31.scala 674:73]
    node _T_956 = or(cyc_A3, cyc_A2_div) @[DivSqrtRecF64_mulAddZ31.scala 676:20]
    node _T_957 = or(_T_956, cyc_B9_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 676:34]
    skip
    node _T_958 = or(_T_957, cyc_B8_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 677:29]
    node _T_959 = or(_T_958, cyc_B6) @[DivSqrtRecF64_mulAddZ31.scala 677:44]
    node _T_960 = or(_T_959, cyc_B5) @[DivSqrtRecF64_mulAddZ31.scala 677:54]
    node _T_961 = or(_T_960, cyc_B4_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 677:64]
    skip
    node _T_962 = or(_T_961, cyc_B2_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 678:29]
    skip
    node _T_963 = or(_T_962, cyc_B1_div) @[DivSqrtRecF64_mulAddZ31.scala 678:44]
    node _T_964 = or(_T_963, cyc_C6_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 678:58]
    node _T_965 = or(_T_964, cyc_C3) @[DivSqrtRecF64_mulAddZ31.scala 678:73]
    node _T_966 = or(cyc_A2, cyc_A1_div) @[DivSqrtRecF64_mulAddZ31.scala 680:20]
    node _T_967 = or(_T_966, cyc_B8_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 680:34]
    node _T_968 = or(_T_967, cyc_B7_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 681:29]
    node _T_969 = or(_T_968, cyc_B5) @[DivSqrtRecF64_mulAddZ31.scala 681:44]
    node _T_970 = or(_T_969, cyc_B4) @[DivSqrtRecF64_mulAddZ31.scala 681:54]
    node _T_971 = or(_T_970, cyc_B3_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 681:64]
    node _T_972 = or(_T_971, cyc_B1_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 682:29]
    node _T_973 = or(_T_972, cyc_C5) @[DivSqrtRecF64_mulAddZ31.scala 682:44]
    node _T_974 = or(_T_973, cyc_C2) @[DivSqrtRecF64_mulAddZ31.scala 682:54]
    node _T_975 = or(io_latchMulAddA_0, cyc_B6) @[DivSqrtRecF64_mulAddZ31.scala 684:31]
    node _T_976 = or(_T_975, cyc_B2_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 684:41]
    node _T_977 = cat(_T_974, _T_976) @[Cat.scala 30:58]
    node _T_978 = cat(_T_955, _T_965) @[Cat.scala 30:58]
    skip
    node _T_980 = shl(sigX1_B, 47) @[DivSqrtRecF64_mulAddZ31.scala 688:45]
    node _T_982 = mux(cyc_B1, _T_980, UInt<105>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 688:12]
    node _T_983 = shl(sigX1_B, 46) @[DivSqrtRecF64_mulAddZ31.scala 689:45]
    node _T_985 = mux(cyc_C6_sqrt, _T_983, UInt<104>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 689:12]
    node _GEN_78 = pad(_T_985, 105) @[DivSqrtRecF64_mulAddZ31.scala 688:64]
    node _T_986 = or(_T_982, _GEN_78) @[DivSqrtRecF64_mulAddZ31.scala 688:64]
    node _T_987 = or(cyc_C4_sqrt, cyc_C2) @[DivSqrtRecF64_mulAddZ31.scala 690:25]
    node _T_988 = shl(sigXN_C, 47) @[DivSqrtRecF64_mulAddZ31.scala 690:45]
    node _T_990 = mux(_T_987, _T_988, UInt<105>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 690:12]
    node _T_991 = or(_T_986, _T_990) @[DivSqrtRecF64_mulAddZ31.scala 689:64]
    node _T_993 = not(E_E_div) @[DivSqrtRecF64_mulAddZ31.scala 691:27]
    node _T_994 = and(cyc_E3_div, _T_993) @[DivSqrtRecF64_mulAddZ31.scala 691:24]
    node _T_995 = shl(fractA_0_PC, 53) @[DivSqrtRecF64_mulAddZ31.scala 691:49]
    node _T_997 = mux(_T_994, _T_995, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 691:12]
    node _GEN_79 = pad(_T_997, 105) @[DivSqrtRecF64_mulAddZ31.scala 690:64]
    node _T_998 = or(_T_991, _GEN_79) @[DivSqrtRecF64_mulAddZ31.scala 690:64]
    skip
    node _T_1000 = bits(sigB_PC, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 694:29]
    node _T_1002 = cat(_T_1000, UInt<1>("h0")) @[Cat.scala 30:58]
    node _T_1003 = bits(sigB_PC, 1, 1) @[DivSqrtRecF64_mulAddZ31.scala 695:29]
    skip
    node _T_1005 = xor(_T_1003, _T_1000) @[DivSqrtRecF64_mulAddZ31.scala 695:33]
    skip
    node _T_1007 = cat(_T_1005, _T_1000) @[Cat.scala 30:58]
    node _T_1008 = mux(_T_372, _T_1002, _T_1007) @[DivSqrtRecF64_mulAddZ31.scala 693:17]
    node _T_1010 = not(extraT_E) @[DivSqrtRecF64_mulAddZ31.scala 696:22]
    node _T_1012 = cat(_T_1010, UInt<1>("h0")) @[Cat.scala 30:58]
    node _T_1013 = xor(_T_1008, _T_1012) @[DivSqrtRecF64_mulAddZ31.scala 696:16]
    node _T_1014 = shl(_T_1013, 54) @[DivSqrtRecF64_mulAddZ31.scala 697:14]
    node _T_1016 = mux(cyc_E3_sqrt, _T_1014, UInt<56>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 692:12]
    node _GEN_80 = pad(_T_1016, 105) @[DivSqrtRecF64_mulAddZ31.scala 691:64]
    skip
    node ESqrR1_B8_sqrt = bits(io_mulAddResult_3, 103, 72) @[DivSqrtRecF64_mulAddZ31.scala 701:43]
    node sqrSigma1_B1 = bits(io_mulAddResult_3, 79, 47) @[DivSqrtRecF64_mulAddZ31.scala 703:41]
    node sigT_C1 = not(zComplSigT_C1) @[DivSqrtRecF64_mulAddZ31.scala 720:19]
    node remT_E2 = bits(io_mulAddResult_3, 55, 0) @[DivSqrtRecF64_mulAddZ31.scala 721:36]
    skip
    skip
    skip
    node _T_1045 = or(cyc_C6_sqrt, cyc_C5_div) @[DivSqrtRecF64_mulAddZ31.scala 733:23]
    node _T_1046 = or(_T_1045, cyc_C3_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 733:37]
    skip
    node _T_1047 = bits(sigXNU_B3_CX, 56, 26) @[DivSqrtRecF64_mulAddZ31.scala 737:33]
    skip
    node _T_1048 = bits(sigT_C1, 53, 1) @[DivSqrtRecF64_mulAddZ31.scala 741:28]
    node _T_1049 = bits(sigT_C1, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 742:28]
    skip
    skip
    skip
    node _T_1050 = bits(remT_E2, 55, 55) @[DivSqrtRecF64_mulAddZ31.scala 746:47]
    node _T_1051 = bits(remT_E2, 53, 53) @[DivSqrtRecF64_mulAddZ31.scala 746:61]
    node _T_1052 = mux(sqrtOp_PC, _T_1050, _T_1051) @[DivSqrtRecF64_mulAddZ31.scala 746:27]
    node _T_1053 = bits(remT_E2, 53, 0) @[DivSqrtRecF64_mulAddZ31.scala 748:21]
    node _T_1055 = eq(_T_1053, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 748:29]
    skip
    node _T_1058 = bits(remT_E2, 55, 54) @[DivSqrtRecF64_mulAddZ31.scala 749:41]
    node _T_1060 = eq(_T_1058, UInt<2>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 749:50]
    node _T_1061 = or(_T_390, _T_1060) @[DivSqrtRecF64_mulAddZ31.scala 749:30]
    node _T_1062 = and(_T_1055, _T_1061) @[DivSqrtRecF64_mulAddZ31.scala 748:42]
    skip
    skip
    skip
    node _T_1065 = and(_T_390, E_E_div) @[DivSqrtRecF64_mulAddZ31.scala 755:25]
    node _T_1067 = mux(_T_1065, exp_PC, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 755:12]
    skip
    skip
    node _T_1072 = and(_T_390, _T_993) @[DivSqrtRecF64_mulAddZ31.scala 756:25]
    node _T_1074 = mux(_T_1072, expP1_PC, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 756:12]
    node _T_1075 = or(_T_1067, _T_1074) @[DivSqrtRecF64_mulAddZ31.scala 755:76]
    node _T_1076 = shr(exp_PC, 1) @[DivSqrtRecF64_mulAddZ31.scala 757:42]
    node _T_1078 = add(_T_1076, UInt<13>("h400")) @[DivSqrtRecF64_mulAddZ31.scala 757:47]
    node _T_1079 = tail(_T_1078, 1) @[DivSqrtRecF64_mulAddZ31.scala 757:47]
    node _T_1081 = mux(sqrtOp_PC, _T_1079, UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 757:12]
    node _GEN_81 = pad(_T_1081, 14) @[DivSqrtRecF64_mulAddZ31.scala 756:76]
    node sExpX_E = or(_T_1075, _GEN_81) @[DivSqrtRecF64_mulAddZ31.scala 756:76]
    node posExpX_E = bits(sExpX_E, 12, 0) @[DivSqrtRecF64_mulAddZ31.scala 759:28]
    node _T_1082 = not(posExpX_E) @[primitives.scala 50:21]
    node _T_1083 = bits(_T_1082, 12, 12) @[primitives.scala 56:25]
    node _T_1084 = bits(_T_1082, 11, 0) @[primitives.scala 57:26]
    node _T_1085 = bits(_T_1084, 11, 11) @[primitives.scala 56:25]
    node _T_1086 = bits(_T_1084, 10, 0) @[primitives.scala 57:26]
    node _T_1087 = bits(_T_1086, 10, 10) @[primitives.scala 56:25]
    node _T_1088 = bits(_T_1086, 9, 0) @[primitives.scala 57:26]
    node _T_1089 = bits(_T_1088, 9, 9) @[primitives.scala 56:25]
    node _T_1090 = bits(_T_1088, 8, 0) @[primitives.scala 57:26]
    node _T_1092 = bits(_T_1090, 8, 8) @[primitives.scala 56:25]
    node _T_1093 = bits(_T_1090, 7, 0) @[primitives.scala 57:26]
    node _T_1095 = bits(_T_1093, 7, 7) @[primitives.scala 56:25]
    node _T_1096 = bits(_T_1093, 6, 0) @[primitives.scala 57:26]
    node _T_1098 = bits(_T_1096, 6, 6) @[primitives.scala 56:25]
    node _T_1099 = bits(_T_1096, 5, 0) @[primitives.scala 57:26]
    node _T_1102 = dshr(SInt<65>("h-10000000000000000"), _T_1099) @[primitives.scala 68:52]
    node _T_1103 = bits(_T_1102, 63, 14) @[primitives.scala 69:26]
    node _T_1104 = bits(_T_1103, 31, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_1109 = shr(_T_1104, 16) @[Bitwise.scala 102:21]
    node _T_1110 = pad(_T_1109, 32) @[Bitwise.scala 102:31]
    node _T_1111 = bits(_T_1104, 15, 0) @[Bitwise.scala 102:46]
    node _T_1112 = shl(_T_1111, 16) @[Bitwise.scala 102:65]
    skip
    node _T_1114 = and(_T_1112, UInt<32>("hffff0000")) @[Bitwise.scala 102:75]
    node _T_1115 = or(_T_1110, _T_1114) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1119 = shr(_T_1115, 8) @[Bitwise.scala 102:21]
    node _GEN_82 = pad(_T_1119, 32) @[Bitwise.scala 102:31]
    node _T_1120 = and(_GEN_82, UInt<32>("hff00ff")) @[Bitwise.scala 102:31]
    node _T_1121 = bits(_T_1115, 23, 0) @[Bitwise.scala 102:46]
    node _T_1122 = shl(_T_1121, 8) @[Bitwise.scala 102:65]
    skip
    node _T_1124 = and(_T_1122, UInt<32>("hff00ff00")) @[Bitwise.scala 102:75]
    node _T_1125 = or(_T_1120, _T_1124) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1129 = shr(_T_1125, 4) @[Bitwise.scala 102:21]
    node _GEN_83 = pad(_T_1129, 32) @[Bitwise.scala 102:31]
    node _T_1130 = and(_GEN_83, UInt<32>("hf0f0f0f")) @[Bitwise.scala 102:31]
    node _T_1131 = bits(_T_1125, 27, 0) @[Bitwise.scala 102:46]
    node _T_1132 = shl(_T_1131, 4) @[Bitwise.scala 102:65]
    skip
    node _T_1134 = and(_T_1132, UInt<32>("hf0f0f0f0")) @[Bitwise.scala 102:75]
    node _T_1135 = or(_T_1130, _T_1134) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1139 = shr(_T_1135, 2) @[Bitwise.scala 102:21]
    node _GEN_84 = pad(_T_1139, 32) @[Bitwise.scala 102:31]
    node _T_1140 = and(_GEN_84, UInt<32>("h33333333")) @[Bitwise.scala 102:31]
    node _T_1141 = bits(_T_1135, 29, 0) @[Bitwise.scala 102:46]
    node _T_1142 = shl(_T_1141, 2) @[Bitwise.scala 102:65]
    skip
    node _T_1144 = and(_T_1142, UInt<32>("hcccccccc")) @[Bitwise.scala 102:75]
    node _T_1145 = or(_T_1140, _T_1144) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1149 = shr(_T_1145, 1) @[Bitwise.scala 102:21]
    node _GEN_85 = pad(_T_1149, 32) @[Bitwise.scala 102:31]
    node _T_1150 = and(_GEN_85, UInt<32>("h55555555")) @[Bitwise.scala 102:31]
    node _T_1151 = bits(_T_1145, 30, 0) @[Bitwise.scala 102:46]
    node _T_1152 = shl(_T_1151, 1) @[Bitwise.scala 102:65]
    skip
    node _T_1154 = and(_T_1152, UInt<32>("haaaaaaaa")) @[Bitwise.scala 102:75]
    node _T_1155 = or(_T_1150, _T_1154) @[Bitwise.scala 102:39]
    node _T_1156 = bits(_T_1103, 49, 32) @[Bitwise.scala 108:44]
    node _T_1157 = bits(_T_1156, 15, 0) @[Bitwise.scala 108:18]
    skip
    skip
    node _T_1162 = shr(_T_1157, 8) @[Bitwise.scala 102:21]
    node _T_1163 = pad(_T_1162, 16) @[Bitwise.scala 102:31]
    node _T_1164 = bits(_T_1157, 7, 0) @[Bitwise.scala 102:46]
    node _T_1165 = shl(_T_1164, 8) @[Bitwise.scala 102:65]
    skip
    node _T_1167 = and(_T_1165, UInt<16>("hff00")) @[Bitwise.scala 102:75]
    node _T_1168 = or(_T_1163, _T_1167) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1172 = shr(_T_1168, 4) @[Bitwise.scala 102:21]
    node _GEN_86 = pad(_T_1172, 16) @[Bitwise.scala 102:31]
    node _T_1173 = and(_GEN_86, UInt<16>("hf0f")) @[Bitwise.scala 102:31]
    node _T_1174 = bits(_T_1168, 11, 0) @[Bitwise.scala 102:46]
    node _T_1175 = shl(_T_1174, 4) @[Bitwise.scala 102:65]
    skip
    node _T_1177 = and(_T_1175, UInt<16>("hf0f0")) @[Bitwise.scala 102:75]
    node _T_1178 = or(_T_1173, _T_1177) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1182 = shr(_T_1178, 2) @[Bitwise.scala 102:21]
    node _GEN_87 = pad(_T_1182, 16) @[Bitwise.scala 102:31]
    node _T_1183 = and(_GEN_87, UInt<16>("h3333")) @[Bitwise.scala 102:31]
    node _T_1184 = bits(_T_1178, 13, 0) @[Bitwise.scala 102:46]
    node _T_1185 = shl(_T_1184, 2) @[Bitwise.scala 102:65]
    skip
    node _T_1187 = and(_T_1185, UInt<16>("hcccc")) @[Bitwise.scala 102:75]
    node _T_1188 = or(_T_1183, _T_1187) @[Bitwise.scala 102:39]
    skip
    skip
    skip
    node _T_1192 = shr(_T_1188, 1) @[Bitwise.scala 102:21]
    node _GEN_88 = pad(_T_1192, 16) @[Bitwise.scala 102:31]
    node _T_1193 = and(_GEN_88, UInt<16>("h5555")) @[Bitwise.scala 102:31]
    node _T_1194 = bits(_T_1188, 14, 0) @[Bitwise.scala 102:46]
    node _T_1195 = shl(_T_1194, 1) @[Bitwise.scala 102:65]
    skip
    node _T_1197 = and(_T_1195, UInt<16>("haaaa")) @[Bitwise.scala 102:75]
    node _T_1198 = or(_T_1193, _T_1197) @[Bitwise.scala 102:39]
    node _T_1199 = bits(_T_1156, 17, 16) @[Bitwise.scala 108:44]
    node _T_1200 = bits(_T_1199, 0, 0) @[Bitwise.scala 108:18]
    node _T_1201 = bits(_T_1199, 1, 1) @[Bitwise.scala 108:44]
    skip
    skip
    node _T_1204 = cat(_T_1155, cat(_T_1198, cat(_T_1200, _T_1201))) @[Cat.scala 30:58]
    node _T_1205 = not(_T_1204) @[primitives.scala 65:36]
    node _T_1206 = mux(_T_1098, UInt<50>("h0"), _T_1205) @[primitives.scala 65:21]
    node _T_1207 = not(_T_1206) @[primitives.scala 65:17]
    node _T_1208 = not(_T_1207) @[primitives.scala 65:36]
    node _T_1209 = mux(_T_1095, UInt<50>("h0"), _T_1208) @[primitives.scala 65:21]
    node _T_1210 = not(_T_1209) @[primitives.scala 65:17]
    node _T_1211 = not(_T_1210) @[primitives.scala 65:36]
    node _T_1212 = mux(_T_1092, UInt<50>("h0"), _T_1211) @[primitives.scala 65:21]
    node _T_1213 = not(_T_1212) @[primitives.scala 65:17]
    node _T_1214 = not(_T_1213) @[primitives.scala 65:36]
    node _T_1215 = mux(_T_1089, UInt<50>("h0"), _T_1214) @[primitives.scala 65:21]
    node _T_1216 = not(_T_1215) @[primitives.scala 65:17]
    node _T_1218 = cat(_T_1216, UInt<3>("h7")) @[Cat.scala 30:58]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_1229 = bits(_T_1102, 2, 0) @[primitives.scala 69:26]
    node _T_1230 = bits(_T_1229, 1, 0) @[Bitwise.scala 108:18]
    node _T_1231 = bits(_T_1230, 0, 0) @[Bitwise.scala 108:18]
    node _T_1232 = bits(_T_1230, 1, 1) @[Bitwise.scala 108:44]
    skip
    node _T_1234 = bits(_T_1229, 2, 2) @[Bitwise.scala 108:44]
    node _T_1235 = cat(cat(_T_1231, _T_1232), _T_1234) @[Cat.scala 30:58]
    node _T_1237 = mux(_T_1098, _T_1235, UInt<3>("h0")) @[primitives.scala 59:20]
    node _T_1239 = mux(_T_1095, _T_1237, UInt<3>("h0")) @[primitives.scala 59:20]
    node _T_1241 = mux(_T_1092, _T_1239, UInt<3>("h0")) @[primitives.scala 59:20]
    node _T_1243 = mux(_T_1089, _T_1241, UInt<3>("h0")) @[primitives.scala 59:20]
    node _T_1244 = mux(_T_1087, _T_1218, pad(_T_1243, 53)) @[primitives.scala 61:20]
    node _T_1246 = mux(_T_1085, _T_1244, UInt<53>("h0")) @[primitives.scala 59:20]
    node roundMask_E = mux(_T_1083, _T_1246, UInt<53>("h0")) @[primitives.scala 59:20]
    node _T_1249 = cat(UInt<1>("h0"), roundMask_E) @[Cat.scala 30:58]
    node _T_1250 = not(_T_1249) @[DivSqrtRecF64_mulAddZ31.scala 763:9]
    node _T_1252 = cat(roundMask_E, UInt<1>("h1")) @[Cat.scala 30:58]
    node incrPosMask_E = and(_T_1250, _T_1252) @[DivSqrtRecF64_mulAddZ31.scala 763:39]
    node _T_1253 = shr(incrPosMask_E, 1) @[DivSqrtRecF64_mulAddZ31.scala 765:51]
    node _T_1254 = and(sigT_E, _T_1253) @[DivSqrtRecF64_mulAddZ31.scala 765:36]
    node hiRoundPosBitT_E = neq(_T_1254, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 765:56]
    node _T_1256 = shr(roundMask_E, 1) @[DivSqrtRecF64_mulAddZ31.scala 766:55]
    node _GEN_89 = pad(_T_1256, 53) @[DivSqrtRecF64_mulAddZ31.scala 766:42]
    skip
    skip
    node _T_1259 = not(sigT_E) @[DivSqrtRecF64_mulAddZ31.scala 767:34]
    skip
    skip
    node _T_1261 = and(_T_1259, _GEN_89) @[DivSqrtRecF64_mulAddZ31.scala 767:42]
    node all1sHiRoundExtraT_E = eq(_T_1261, UInt<53>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 767:60]
    node _T_1263 = bits(roundMask_E, 0, 0) @[DivSqrtRecF64_mulAddZ31.scala 769:23]
    node _T_1265 = not(_T_1263) @[DivSqrtRecF64_mulAddZ31.scala 769:10]
    node _T_1266 = or(_T_1265, hiRoundPosBitT_E) @[DivSqrtRecF64_mulAddZ31.scala 769:27]
    node all1sHiRoundT_E = and(_T_1266, all1sHiRoundExtraT_E) @[DivSqrtRecF64_mulAddZ31.scala 769:48]
    node _T_1268 = pad(sigT_E, 55) @[DivSqrtRecF64_mulAddZ31.scala 773:33]
    node _T_1269 = tail(_T_1268, 1) @[DivSqrtRecF64_mulAddZ31.scala 773:33]
    node _GEN_91 = pad(roundMagUp_PC, 54) @[DivSqrtRecF64_mulAddZ31.scala 773:42]
    node _T_1270 = add(_T_1269, _GEN_91) @[DivSqrtRecF64_mulAddZ31.scala 773:42]
    node sigAdjT_E = tail(_T_1270, 1) @[DivSqrtRecF64_mulAddZ31.scala 773:42]
    node _T_1272 = not(roundMask_E) @[DivSqrtRecF64_mulAddZ31.scala 774:47]
    node _T_1273 = cat(UInt<1>("h1"), _T_1272) @[Cat.scala 30:58]
    node sigY0_E = and(sigAdjT_E, _T_1273) @[DivSqrtRecF64_mulAddZ31.scala 774:29]
    skip
    node _T_1276 = or(sigAdjT_E, _T_1249) @[DivSqrtRecF64_mulAddZ31.scala 775:30]
    node _T_1278 = add(_T_1276, UInt<54>("h1")) @[DivSqrtRecF64_mulAddZ31.scala 775:62]
    node sigY1_E = tail(_T_1278, 1) @[DivSqrtRecF64_mulAddZ31.scala 775:62]
    node _T_1280 = not(isNegRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 783:24]
    node _T_1282 = not(isZeroRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 783:41]
    node _T_1283 = and(_T_1280, _T_1282) @[DivSqrtRecF64_mulAddZ31.scala 783:38]
    node trueLtX_E1 = mux(sqrtOp_PC, _T_1283, isNegRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 783:12]
    skip
    node _T_1286 = not(trueLtX_E1) @[DivSqrtRecF64_mulAddZ31.scala 793:32]
    node _T_1287 = and(_T_1263, _T_1286) @[DivSqrtRecF64_mulAddZ31.scala 793:29]
    node _T_1288 = and(_T_1287, all1sHiRoundExtraT_E) @[DivSqrtRecF64_mulAddZ31.scala 793:45]
    node _T_1289 = and(_T_1288, extraT_E) @[DivSqrtRecF64_mulAddZ31.scala 793:69]
    node hiRoundPosBit_E1 = xor(hiRoundPosBitT_E, _T_1289) @[DivSqrtRecF64_mulAddZ31.scala 792:26]
    skip
    skip
    node _T_1294 = or(_T_1282, _T_1010) @[DivSqrtRecF64_mulAddZ31.scala 795:41]
    node _T_1296 = not(all1sHiRoundExtraT_E) @[DivSqrtRecF64_mulAddZ31.scala 795:58]
    node anyRoundExtra_E1 = or(_T_1294, _T_1296) @[DivSqrtRecF64_mulAddZ31.scala 795:55]
    node _T_1297 = and(roundingMode_near_even_PC, hiRoundPosBit_E1) @[DivSqrtRecF64_mulAddZ31.scala 797:39]
    node _T_1299 = not(anyRoundExtra_E1) @[DivSqrtRecF64_mulAddZ31.scala 798:17]
    node _T_1300 = and(_T_1297, _T_1299) @[DivSqrtRecF64_mulAddZ31.scala 797:59]
    node roundEvenMask_E1 = mux(_T_1300, incrPosMask_E, UInt<54>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 797:12]
    node _T_1302 = and(roundMagDown_PC, extraT_E) @[DivSqrtRecF64_mulAddZ31.scala 804:30]
    skip
    node _T_1305 = and(_T_1302, _T_1286) @[DivSqrtRecF64_mulAddZ31.scala 804:42]
    node _T_1306 = and(_T_1305, all1sHiRoundT_E) @[DivSqrtRecF64_mulAddZ31.scala 804:58]
    skip
    node _T_1309 = and(extraT_E, _T_1286) @[DivSqrtRecF64_mulAddZ31.scala 806:29]
    skip
    node _T_1312 = and(_T_1309, _T_1282) @[DivSqrtRecF64_mulAddZ31.scala 806:45]
    node _T_1314 = not(all1sHiRoundT_E) @[DivSqrtRecF64_mulAddZ31.scala 807:23]
    node _T_1315 = or(_T_1312, _T_1314) @[DivSqrtRecF64_mulAddZ31.scala 806:62]
    node _T_1316 = and(roundMagUp_PC, _T_1315) @[DivSqrtRecF64_mulAddZ31.scala 805:28]
    node _T_1317 = or(_T_1306, _T_1316) @[DivSqrtRecF64_mulAddZ31.scala 804:78]
    skip
    node _T_1320 = or(extraT_E, _T_1286) @[DivSqrtRecF64_mulAddZ31.scala 810:34]
    skip
    skip
    node _T_1324 = and(_T_1320, _T_1265) @[DivSqrtRecF64_mulAddZ31.scala 810:51]
    node _T_1325 = or(hiRoundPosBitT_E, _T_1324) @[DivSqrtRecF64_mulAddZ31.scala 809:36]
    skip
    skip
    node _T_1329 = and(_T_1309, all1sHiRoundExtraT_E) @[DivSqrtRecF64_mulAddZ31.scala 811:49]
    node _T_1330 = or(_T_1325, _T_1329) @[DivSqrtRecF64_mulAddZ31.scala 810:72]
    node _T_1331 = and(roundingMode_near_even_PC, _T_1330) @[DivSqrtRecF64_mulAddZ31.scala 808:40]
    node _T_1332 = or(_T_1317, _T_1331) @[DivSqrtRecF64_mulAddZ31.scala 807:43]
    node _T_1333 = mux(_T_1332, sigY1_E, sigY0_E) @[DivSqrtRecF64_mulAddZ31.scala 804:12]
    node _T_1334 = not(roundEvenMask_E1) @[DivSqrtRecF64_mulAddZ31.scala 814:13]
    node sigY_E1 = and(_T_1333, _T_1334) @[DivSqrtRecF64_mulAddZ31.scala 814:11]
    node fractY_E1 = bits(sigY_E1, 51, 0) @[DivSqrtRecF64_mulAddZ31.scala 815:28]
    node inexactY_E1 = or(hiRoundPosBit_E1, anyRoundExtra_E1) @[DivSqrtRecF64_mulAddZ31.scala 816:40]
    node _T_1335 = bits(sigY_E1, 53, 53) @[DivSqrtRecF64_mulAddZ31.scala 818:22]
    node _T_1337 = not(_T_1335) @[DivSqrtRecF64_mulAddZ31.scala 818:13]
    node _T_1339 = mux(_T_1337, sExpX_E, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 818:12]
    skip
    skip
    node _T_1343 = and(_T_1335, _T_390) @[DivSqrtRecF64_mulAddZ31.scala 819:25]
    node _T_1344 = and(_T_1343, E_E_div) @[DivSqrtRecF64_mulAddZ31.scala 819:40]
    node _T_1346 = mux(_T_1344, expP1_PC, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 819:12]
    node _T_1347 = or(_T_1339, _T_1346) @[DivSqrtRecF64_mulAddZ31.scala 818:73]
    skip
    skip
    skip
    skip
    node _T_1354 = and(_T_1343, _T_993) @[DivSqrtRecF64_mulAddZ31.scala 820:40]
    node _T_1356 = mux(_T_1354, expP2_PC, UInt<14>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 820:12]
    node _T_1357 = or(_T_1347, _T_1356) @[DivSqrtRecF64_mulAddZ31.scala 819:73]
    skip
    node _T_1359 = and(_T_1335, sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 821:25]
    node _T_1360 = shr(expP2_PC, 1) @[DivSqrtRecF64_mulAddZ31.scala 822:22]
    node _T_1362 = add(_T_1360, UInt<13>("h400")) @[DivSqrtRecF64_mulAddZ31.scala 822:27]
    node _T_1363 = tail(_T_1362, 1) @[DivSqrtRecF64_mulAddZ31.scala 822:27]
    node _T_1365 = mux(_T_1359, _T_1363, UInt<13>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 821:12]
    node _GEN_92 = pad(_T_1365, 14) @[DivSqrtRecF64_mulAddZ31.scala 820:73]
    node sExpY_E1 = or(_T_1357, _GEN_92) @[DivSqrtRecF64_mulAddZ31.scala 820:73]
    node expY_E1 = bits(sExpY_E1, 11, 0) @[DivSqrtRecF64_mulAddZ31.scala 825:27]
    node _T_1366 = bits(sExpY_E1, 13, 13) @[DivSqrtRecF64_mulAddZ31.scala 827:34]
    node _T_1368 = not(_T_1366) @[DivSqrtRecF64_mulAddZ31.scala 827:24]
    node _T_1370 = bits(sExpY_E1, 12, 10) @[DivSqrtRecF64_mulAddZ31.scala 827:70]
    node _T_1371 = leq(UInt<3>("h3"), _T_1370) @[DivSqrtRecF64_mulAddZ31.scala 827:59]
    node overflowY_E1 = and(_T_1368, _T_1371) @[DivSqrtRecF64_mulAddZ31.scala 827:39]
    skip
    node _T_1373 = bits(sExpY_E1, 12, 0) @[DivSqrtRecF64_mulAddZ31.scala 830:34]
    node _T_1375 = lt(_T_1373, UInt<13>("h3ce")) @[DivSqrtRecF64_mulAddZ31.scala 830:42]
    node totalUnderflowY_E1 = or(_T_1366, _T_1375) @[DivSqrtRecF64_mulAddZ31.scala 830:22]
    node _T_1377 = leq(posExpX_E, UInt<13>("h401")) @[DivSqrtRecF64_mulAddZ31.scala 833:25]
    node _T_1378 = and(_T_1377, inexactY_E1) @[DivSqrtRecF64_mulAddZ31.scala 833:56]
    node underflowY_E1 = or(totalUnderflowY_E1, _T_1378) @[DivSqrtRecF64_mulAddZ31.scala 832:28]
    node _T_1380 = not(isNaNB_PC) @[DivSqrtRecF64_mulAddZ31.scala 839:13]
    skip
    node _T_1383 = and(_T_1380, _T_354) @[DivSqrtRecF64_mulAddZ31.scala 839:25]
    node _T_1384 = and(_T_1383, sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 839:41]
    node _T_1385 = and(isZeroA_PC, isZeroB_PC) @[DivSqrtRecF64_mulAddZ31.scala 840:25]
    node _T_1386 = and(isInfA_PC, isInfB_PC) @[DivSqrtRecF64_mulAddZ31.scala 840:54]
    node _T_1387 = or(_T_1385, _T_1386) @[DivSqrtRecF64_mulAddZ31.scala 840:40]
    node notSigNaN_invalid_PC = mux(sqrtOp_PC, _T_1384, _T_1387) @[DivSqrtRecF64_mulAddZ31.scala 838:12]
    skip
    node _T_1390 = and(_T_390, isSigNaNA_PC) @[DivSqrtRecF64_mulAddZ31.scala 843:22]
    node _T_1391 = or(_T_1390, isSigNaNB_PC) @[DivSqrtRecF64_mulAddZ31.scala 843:39]
    node invalid_PC = or(_T_1391, notSigNaN_invalid_PC) @[DivSqrtRecF64_mulAddZ31.scala 843:55]
    skip
    skip
    node _T_1396 = and(_T_390, _T_360) @[DivSqrtRecF64_mulAddZ31.scala 845:21]
    skip
    node _T_1399 = and(_T_1396, _T_365) @[DivSqrtRecF64_mulAddZ31.scala 845:40]
    node infinity_PC = and(_T_1399, isZeroB_PC) @[DivSqrtRecF64_mulAddZ31.scala 845:56]
    node overflow_E1 = and(normalCase_PC, overflowY_E1) @[DivSqrtRecF64_mulAddZ31.scala 847:37]
    node underflow_E1 = and(normalCase_PC, underflowY_E1) @[DivSqrtRecF64_mulAddZ31.scala 848:38]
    node _T_1400 = or(overflow_E1, underflow_E1) @[DivSqrtRecF64_mulAddZ31.scala 852:21]
    node _T_1401 = and(normalCase_PC, inexactY_E1) @[DivSqrtRecF64_mulAddZ31.scala 852:55]
    node inexact_E1 = or(_T_1400, _T_1401) @[DivSqrtRecF64_mulAddZ31.scala 852:37]
    node _T_1402 = or(isZeroA_PC, isInfB_PC) @[DivSqrtRecF64_mulAddZ31.scala 857:24]
    skip
    node _T_1405 = and(totalUnderflowY_E1, _T_380) @[DivSqrtRecF64_mulAddZ31.scala 857:60]
    node _T_1406 = or(_T_1402, _T_1405) @[DivSqrtRecF64_mulAddZ31.scala 857:37]
    node notSpecial_isZeroOut_E1 = mux(sqrtOp_PC, isZeroB_PC, _T_1406) @[DivSqrtRecF64_mulAddZ31.scala 855:12]
    node _T_1407 = and(normalCase_PC, totalUnderflowY_E1) @[DivSqrtRecF64_mulAddZ31.scala 860:23]
    node pegMinFiniteMagOut_E1 = and(_T_1407, roundMagUp_PC) @[DivSqrtRecF64_mulAddZ31.scala 860:45]
    node _T_1409 = not(overflowY_roundMagUp_PC) @[DivSqrtRecF64_mulAddZ31.scala 861:48]
    node pegMaxFiniteMagOut_E1 = and(overflow_E1, _T_1409) @[DivSqrtRecF64_mulAddZ31.scala 861:45]
    node _T_1410 = or(isInfA_PC, isZeroB_PC) @[DivSqrtRecF64_mulAddZ31.scala 865:23]
    node _T_1411 = and(overflow_E1, overflowY_roundMagUp_PC) @[DivSqrtRecF64_mulAddZ31.scala 865:53]
    node _T_1412 = or(_T_1410, _T_1411) @[DivSqrtRecF64_mulAddZ31.scala 865:37]
    node notNaN_isInfOut_E1 = mux(sqrtOp_PC, isInfB_PC, _T_1412) @[DivSqrtRecF64_mulAddZ31.scala 863:12]
    skip
    node _T_1415 = and(_T_390, isNaNA_PC) @[DivSqrtRecF64_mulAddZ31.scala 868:22]
    node _T_1416 = or(_T_1415, isNaNB_PC) @[DivSqrtRecF64_mulAddZ31.scala 868:36]
    node isNaNOut_PC = or(_T_1416, notSigNaN_invalid_PC) @[DivSqrtRecF64_mulAddZ31.scala 868:49]
    node _T_1418 = not(isNaNOut_PC) @[DivSqrtRecF64_mulAddZ31.scala 871:9]
    node _T_1419 = and(isZeroB_PC, sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 871:52]
    node _T_1420 = mux(sqrtOp_PC, _T_1419, sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 871:29]
    node signOut_PC = and(_T_1418, _T_1420) @[DivSqrtRecF64_mulAddZ31.scala 871:23]
    skip
    node _T_1424 = mux(notSpecial_isZeroOut_E1, UInt<12>("he00"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 874:18]
    node _T_1425 = not(_T_1424) @[DivSqrtRecF64_mulAddZ31.scala 874:14]
    node _T_1426 = and(expY_E1, _T_1425) @[DivSqrtRecF64_mulAddZ31.scala 873:18]
    skip
    node _T_1430 = mux(pegMinFiniteMagOut_E1, UInt<12>("hc31"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 878:18]
    node _T_1431 = not(_T_1430) @[DivSqrtRecF64_mulAddZ31.scala 878:14]
    node _T_1432 = and(_T_1426, _T_1431) @[DivSqrtRecF64_mulAddZ31.scala 877:16]
    skip
    node _T_1436 = mux(pegMaxFiniteMagOut_E1, UInt<12>("h400"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 882:18]
    node _T_1437 = not(_T_1436) @[DivSqrtRecF64_mulAddZ31.scala 882:14]
    node _T_1438 = and(_T_1432, _T_1437) @[DivSqrtRecF64_mulAddZ31.scala 881:16]
    skip
    node _T_1442 = mux(notNaN_isInfOut_E1, UInt<12>("h200"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 886:18]
    node _T_1443 = not(_T_1442) @[DivSqrtRecF64_mulAddZ31.scala 886:14]
    node _T_1444 = and(_T_1438, _T_1443) @[DivSqrtRecF64_mulAddZ31.scala 885:16]
    node _T_1447 = mux(pegMinFiniteMagOut_E1, UInt<12>("h3ce"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 890:16]
    node _T_1448 = or(_T_1444, _T_1447) @[DivSqrtRecF64_mulAddZ31.scala 889:17]
    node _T_1451 = mux(pegMaxFiniteMagOut_E1, UInt<12>("hbff"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 891:16]
    node _T_1452 = or(_T_1448, _T_1451) @[DivSqrtRecF64_mulAddZ31.scala 890:76]
    node _T_1455 = mux(notNaN_isInfOut_E1, UInt<12>("hc00"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 892:16]
    node _T_1456 = or(_T_1452, _T_1455) @[DivSqrtRecF64_mulAddZ31.scala 891:76]
    node _T_1459 = mux(isNaNOut_PC, UInt<12>("he00"), UInt<12>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 893:16]
    node expOut_E1 = or(_T_1456, _T_1459) @[DivSqrtRecF64_mulAddZ31.scala 892:76]
    node _T_1460 = or(notSpecial_isZeroOut_E1, totalUnderflowY_E1) @[DivSqrtRecF64_mulAddZ31.scala 895:37]
    node _T_1461 = or(_T_1460, isNaNOut_PC) @[DivSqrtRecF64_mulAddZ31.scala 895:59]
    skip
    node _T_1465 = mux(isNaNOut_PC, UInt<52>("h8000000000000"), UInt<52>("h0")) @[DivSqrtRecF64_mulAddZ31.scala 896:16]
    node _T_1466 = mux(_T_1461, _T_1465, fractY_E1) @[DivSqrtRecF64_mulAddZ31.scala 895:12]
    skip
    node _T_1470 = mux(pegMaxFiniteMagOut_E1, UInt<52>("hfffffffffffff"), UInt<52>("h0")) @[Bitwise.scala 71:12]
    node fractOut_E1 = or(_T_1466, _T_1470) @[DivSqrtRecF64_mulAddZ31.scala 898:11]
    node _T_1471 = cat(signOut_PC, expOut_E1) @[Cat.scala 30:58]
    skip
    node _T_1473 = cat(underflow_E1, inexact_E1) @[Cat.scala 30:58]
    skip
    node _T_1475 = cat(cat(invalid_PC, infinity_PC), overflow_E1) @[Cat.scala 30:58]
    skip
    skip
    skip
    io_inReady_div <= and(_T_155, _T_157) @[DivSqrtRecF64_mulAddZ31.scala 199:22]
    io_inReady_sqrt <= and(_T_170, _T_151) @[DivSqrtRecF64_mulAddZ31.scala 202:26]
    io_outValid_div <= and(leaving_PC, _T_390) @[DivSqrtRecF64_mulAddZ31.scala 383:36]
    io_outValid_sqrt <= and(leaving_PC, sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 384:36]
    io_out <= cat(_T_1471, fractOut_E1) @[Cat.scala 30:58]
    io_exceptionFlags <= cat(_T_1475, _T_1473) @[Cat.scala 30:58]
    io_usingMulAdd <= cat(_T_978, _T_977) @[Cat.scala 30:58]
    io_latchMulAddA_0 <= or(_T_887, cyc_C1) @[DivSqrtRecF64_mulAddZ31.scala 648:35]
    skip
    io_mulAddA_0 <= or(_GEN_71, zComplSigT_C1_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 658:67]
    io_latchMulAddB_0 <= or(_T_923, cyc_C1) @[DivSqrtRecF64_mulAddZ31.scala 662:35]
    skip
    io_mulAddB_0 <= or(_GEN_77, zComplSigT_C1) @[DivSqrtRecF64_mulAddZ31.scala 669:55]
    skip
    io_mulAddC_2 <= or(_T_998, _GEN_80) @[DivSqrtRecF64_mulAddZ31.scala 691:64]
    valid_PA <= mux(reset, UInt<1>("h0"), _GEN_0) @[DivSqrtRecF64_mulAddZ31.scala 78:30 DivSqrtRecF64_mulAddZ31.scala 78:30]
    sqrtOp_PA <= mux(entering_PA, io_sqrtOp, sqrtOp_PA) @[DivSqrtRecF64_mulAddZ31.scala 243:24 DivSqrtRecF64_mulAddZ31.scala 244:25 DivSqrtRecF64_mulAddZ31.scala 79:30]
    sign_PA <= mux(entering_PA, sign_S, sign_PA) @[DivSqrtRecF64_mulAddZ31.scala 243:24 DivSqrtRecF64_mulAddZ31.scala 245:25 DivSqrtRecF64_mulAddZ31.scala 80:30]
    specialCodeB_PA <= mux(entering_PA, specialCodeB_S, specialCodeB_PA) @[DivSqrtRecF64_mulAddZ31.scala 243:24 DivSqrtRecF64_mulAddZ31.scala 246:25 DivSqrtRecF64_mulAddZ31.scala 82:30]
    fractB_51_PA <= mux(entering_PA, _T_228, fractB_51_PA) @[DivSqrtRecF64_mulAddZ31.scala 243:24 DivSqrtRecF64_mulAddZ31.scala 247:25 DivSqrtRecF64_mulAddZ31.scala 83:30]
    roundingMode_PA <= mux(entering_PA, io_roundingMode, roundingMode_PA) @[DivSqrtRecF64_mulAddZ31.scala 243:24 DivSqrtRecF64_mulAddZ31.scala 248:25 DivSqrtRecF64_mulAddZ31.scala 84:30]
    specialCodeA_PA <= mux(_T_231, specialCodeA_S, specialCodeA_PA) @[DivSqrtRecF64_mulAddZ31.scala 250:39 DivSqrtRecF64_mulAddZ31.scala 251:25 DivSqrtRecF64_mulAddZ31.scala 85:30]
    fractA_51_PA <= mux(_T_231, _T_232, fractA_51_PA) @[DivSqrtRecF64_mulAddZ31.scala 250:39 DivSqrtRecF64_mulAddZ31.scala 252:25 DivSqrtRecF64_mulAddZ31.scala 86:30]
    exp_PA <= mux(entering_PA_normalCase, _T_243, exp_PA) @[DivSqrtRecF64_mulAddZ31.scala 254:35 DivSqrtRecF64_mulAddZ31.scala 255:16 DivSqrtRecF64_mulAddZ31.scala 87:30]
    fractB_other_PA <= mux(entering_PA_normalCase, _T_244, fractB_other_PA) @[DivSqrtRecF64_mulAddZ31.scala 254:35 DivSqrtRecF64_mulAddZ31.scala 260:25 DivSqrtRecF64_mulAddZ31.scala 88:30]
    fractA_other_PA <= mux(cyc_A4_div, _T_245, fractA_other_PA) @[DivSqrtRecF64_mulAddZ31.scala 262:39 DivSqrtRecF64_mulAddZ31.scala 263:25 DivSqrtRecF64_mulAddZ31.scala 89:30]
    valid_PB <= mux(reset, UInt<1>("h0"), _GEN_11) @[DivSqrtRecF64_mulAddZ31.scala 91:30 DivSqrtRecF64_mulAddZ31.scala 91:30]
    sqrtOp_PB <= mux(entering_PB, _T_281, sqrtOp_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 294:25 DivSqrtRecF64_mulAddZ31.scala 92:30]
    sign_PB <= mux(entering_PB, _T_282, sign_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 295:25 DivSqrtRecF64_mulAddZ31.scala 93:30]
    specialCodeA_PB <= mux(entering_PB, _T_283, specialCodeA_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 296:25 DivSqrtRecF64_mulAddZ31.scala 95:30]
    fractA_51_PB <= mux(entering_PB, _T_285, fractA_51_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 297:25 DivSqrtRecF64_mulAddZ31.scala 96:30]
    specialCodeB_PB <= mux(entering_PB, _T_286, specialCodeB_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 298:25 DivSqrtRecF64_mulAddZ31.scala 97:30]
    fractB_51_PB <= mux(entering_PB, _T_288, fractB_51_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 299:25 DivSqrtRecF64_mulAddZ31.scala 98:30]
    roundingMode_PB <= mux(entering_PB, _T_289, roundingMode_PB) @[DivSqrtRecF64_mulAddZ31.scala 293:24 DivSqrtRecF64_mulAddZ31.scala 300:25 DivSqrtRecF64_mulAddZ31.scala 99:30]
    exp_PB <= mux(entering_PB_normalCase, exp_PA, exp_PB) @[DivSqrtRecF64_mulAddZ31.scala 302:35 DivSqrtRecF64_mulAddZ31.scala 303:25 DivSqrtRecF64_mulAddZ31.scala 100:30]
    fractA_0_PB <= mux(entering_PB_normalCase, _T_290, fractA_0_PB) @[DivSqrtRecF64_mulAddZ31.scala 302:35 DivSqrtRecF64_mulAddZ31.scala 304:25 DivSqrtRecF64_mulAddZ31.scala 101:30]
    fractB_other_PB <= mux(entering_PB_normalCase, fractB_other_PA, fractB_other_PB) @[DivSqrtRecF64_mulAddZ31.scala 302:35 DivSqrtRecF64_mulAddZ31.scala 305:25 DivSqrtRecF64_mulAddZ31.scala 102:30]
    valid_PC <= mux(reset, UInt<1>("h0"), _GEN_22) @[DivSqrtRecF64_mulAddZ31.scala 104:30 DivSqrtRecF64_mulAddZ31.scala 104:30]
    sqrtOp_PC <= mux(entering_PC, _T_322, sqrtOp_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 332:25 DivSqrtRecF64_mulAddZ31.scala 105:30]
    sign_PC <= mux(entering_PC, _T_323, sign_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 333:25 DivSqrtRecF64_mulAddZ31.scala 106:30]
    specialCodeA_PC <= mux(entering_PC, _T_324, specialCodeA_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 334:25 DivSqrtRecF64_mulAddZ31.scala 108:30]
    fractA_51_PC <= mux(entering_PC, _T_326, fractA_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 335:25 DivSqrtRecF64_mulAddZ31.scala 109:30]
    specialCodeB_PC <= mux(entering_PC, _T_327, specialCodeB_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 336:25 DivSqrtRecF64_mulAddZ31.scala 110:30]
    fractB_51_PC <= mux(entering_PC, _T_329, fractB_51_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 337:25 DivSqrtRecF64_mulAddZ31.scala 111:30]
    roundingMode_PC <= mux(entering_PC, _T_330, roundingMode_PC) @[DivSqrtRecF64_mulAddZ31.scala 331:24 DivSqrtRecF64_mulAddZ31.scala 338:25 DivSqrtRecF64_mulAddZ31.scala 112:30]
    exp_PC <= mux(entering_PC_normalCase, exp_PB, exp_PC) @[DivSqrtRecF64_mulAddZ31.scala 340:35 DivSqrtRecF64_mulAddZ31.scala 341:25 DivSqrtRecF64_mulAddZ31.scala 113:30]
    fractA_0_PC <= mux(entering_PC_normalCase, fractA_0_PB, fractA_0_PC) @[DivSqrtRecF64_mulAddZ31.scala 340:35 DivSqrtRecF64_mulAddZ31.scala 342:25 DivSqrtRecF64_mulAddZ31.scala 114:30]
    fractB_other_PC <= mux(entering_PC_normalCase, fractB_other_PB, fractB_other_PC) @[DivSqrtRecF64_mulAddZ31.scala 340:35 DivSqrtRecF64_mulAddZ31.scala 343:25 DivSqrtRecF64_mulAddZ31.scala 115:30]
    cycleNum_A <= mux(reset, UInt<3>("h0"), _GEN_33) @[DivSqrtRecF64_mulAddZ31.scala 117:30 DivSqrtRecF64_mulAddZ31.scala 117:30]
    cycleNum_B <= mux(reset, UInt<4>("h0"), _GEN_34) @[DivSqrtRecF64_mulAddZ31.scala 118:30 DivSqrtRecF64_mulAddZ31.scala 118:30]
    cycleNum_C <= mux(reset, UInt<3>("h0"), _GEN_35) @[DivSqrtRecF64_mulAddZ31.scala 119:30 DivSqrtRecF64_mulAddZ31.scala 119:30]
    cycleNum_E <= mux(reset, UInt<3>("h0"), _GEN_36) @[DivSqrtRecF64_mulAddZ31.scala 120:30 DivSqrtRecF64_mulAddZ31.scala 120:30]
    fractR0_A <= mux(_T_832, _T_833, fractR0_A) @[DivSqrtRecF64_mulAddZ31.scala 605:38 DivSqrtRecF64_mulAddZ31.scala 606:19 DivSqrtRecF64_mulAddZ31.scala 122:30]
    hiSqrR0_A_sqrt <= bits(_GEN_38, 9, 0)
    partNegSigma0_A <= mux(_T_835, _T_838, partNegSigma0_A) @[DivSqrtRecF64_mulAddZ31.scala 613:34 DivSqrtRecF64_mulAddZ31.scala 615:25 DivSqrtRecF64_mulAddZ31.scala 125:30]
    nextMulAdd9A_A <= bits(_GEN_40, 8, 0)
    nextMulAdd9B_A <= mux(_T_864, _T_881, nextMulAdd9B_A) @[DivSqrtRecF64_mulAddZ31.scala 630:74 DivSqrtRecF64_mulAddZ31.scala 631:24 DivSqrtRecF64_mulAddZ31.scala 127:30]
    ER1_B_sqrt <= mux(cyc_A1_sqrt, ER1_A1_sqrt, ER1_B_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 640:24 DivSqrtRecF64_mulAddZ31.scala 641:20 DivSqrtRecF64_mulAddZ31.scala 128:30]
    ESqrR1_B_sqrt <= mux(cyc_B8_sqrt, ESqrR1_B8_sqrt, ESqrR1_B_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 723:24 DivSqrtRecF64_mulAddZ31.scala 724:23 DivSqrtRecF64_mulAddZ31.scala 130:30]
    sigX1_B <= mux(cyc_B3, sigXNU_B3_CX, sigX1_B) @[DivSqrtRecF64_mulAddZ31.scala 726:19 DivSqrtRecF64_mulAddZ31.scala 727:17 DivSqrtRecF64_mulAddZ31.scala 131:30]
    sqrSigma1_C <= mux(cyc_B1, sqrSigma1_B1, sqrSigma1_C) @[DivSqrtRecF64_mulAddZ31.scala 729:19 DivSqrtRecF64_mulAddZ31.scala 730:21 DivSqrtRecF64_mulAddZ31.scala 132:30]
    sigXN_C <= mux(_T_1046, sigXNU_B3_CX, sigXN_C) @[DivSqrtRecF64_mulAddZ31.scala 733:53 DivSqrtRecF64_mulAddZ31.scala 734:17 DivSqrtRecF64_mulAddZ31.scala 133:30]
    u_C_sqrt <= mux(cyc_C5_sqrt, _T_1047, u_C_sqrt) @[DivSqrtRecF64_mulAddZ31.scala 736:24 DivSqrtRecF64_mulAddZ31.scala 737:18 DivSqrtRecF64_mulAddZ31.scala 134:30]
    E_E_div <= mux(cyc_C1, E_C1_div, E_E_div) @[DivSqrtRecF64_mulAddZ31.scala 739:19 DivSqrtRecF64_mulAddZ31.scala 740:18 DivSqrtRecF64_mulAddZ31.scala 135:30]
    sigT_E <= mux(cyc_C1, _T_1048, sigT_E) @[DivSqrtRecF64_mulAddZ31.scala 739:19 DivSqrtRecF64_mulAddZ31.scala 741:18 DivSqrtRecF64_mulAddZ31.scala 136:30]
    extraT_E <= mux(cyc_C1, _T_1049, extraT_E) @[DivSqrtRecF64_mulAddZ31.scala 739:19 DivSqrtRecF64_mulAddZ31.scala 742:18 DivSqrtRecF64_mulAddZ31.scala 137:30]
    isNegRemT_E <= mux(cyc_E2, _T_1052, isNegRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 745:19 DivSqrtRecF64_mulAddZ31.scala 746:21 DivSqrtRecF64_mulAddZ31.scala 138:30]
    isZeroRemT_E <= mux(cyc_E2, _T_1062, isZeroRemT_E) @[DivSqrtRecF64_mulAddZ31.scala 745:19 DivSqrtRecF64_mulAddZ31.scala 747:22 DivSqrtRecF64_mulAddZ31.scala 139:30]

  module Mul54 :
    input clock : Clock
    input io_val_s0 : UInt<1>
    input io_latch_a_s0 : UInt<1>
    input io_a_s0 : UInt<54>
    input io_latch_b_s0 : UInt<1>
    input io_b_s0 : UInt<54>
    input io_c_s2 : UInt<105>
    output io_result_s3 : UInt<105>

    reg val_s1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), val_s1) @[DivSqrtRecF64.scala 96:21]
    reg val_s2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), val_s2) @[DivSqrtRecF64.scala 97:21]
    reg reg_a_s1 : UInt<54>, clock with :
      reset => (UInt<1>("h0"), reg_a_s1) @[DivSqrtRecF64.scala 98:23]
    reg reg_b_s1 : UInt<54>, clock with :
      reset => (UInt<1>("h0"), reg_b_s1) @[DivSqrtRecF64.scala 99:23]
    reg reg_a_s2 : UInt<54>, clock with :
      reset => (UInt<1>("h0"), reg_a_s2) @[DivSqrtRecF64.scala 100:23]
    reg reg_b_s2 : UInt<54>, clock with :
      reset => (UInt<1>("h0"), reg_b_s2) @[DivSqrtRecF64.scala 101:23]
    reg reg_result_s3 : UInt<105>, clock with :
      reset => (UInt<1>("h0"), reg_result_s3) @[DivSqrtRecF64.scala 102:28]
    node _GEN_0 = mux(io_latch_a_s0, io_a_s0, reg_a_s1) @[DivSqrtRecF64.scala 108:30 DivSqrtRecF64.scala 109:22 DivSqrtRecF64.scala 98:23]
    node _GEN_1 = mux(io_latch_b_s0, io_b_s0, reg_b_s1) @[DivSqrtRecF64.scala 111:30 DivSqrtRecF64.scala 112:22 DivSqrtRecF64.scala 99:23]
    skip
    skip
    skip
    skip
    node _T_23 = mul(reg_a_s2, reg_b_s2) @[DivSqrtRecF64.scala 122:36]
    node _T_24 = bits(_T_23, 104, 0) @[DivSqrtRecF64.scala 122:47]
    node _T_25 = add(_T_24, io_c_s2) @[DivSqrtRecF64.scala 122:55]
    node _T_26 = tail(_T_25, 1) @[DivSqrtRecF64.scala 122:55]
    skip
    io_result_s3 <= reg_result_s3 @[DivSqrtRecF64.scala 125:18]
    val_s1 <= io_val_s0 @[DivSqrtRecF64.scala 104:12]
    val_s2 <= val_s1 @[DivSqrtRecF64.scala 105:12]
    reg_a_s1 <= mux(io_val_s0, _GEN_0, reg_a_s1) @[DivSqrtRecF64.scala 107:22 DivSqrtRecF64.scala 98:23]
    reg_b_s1 <= mux(io_val_s0, _GEN_1, reg_b_s1) @[DivSqrtRecF64.scala 107:22 DivSqrtRecF64.scala 99:23]
    reg_a_s2 <= mux(val_s1, reg_a_s1, reg_a_s2) @[DivSqrtRecF64.scala 116:19 DivSqrtRecF64.scala 117:18 DivSqrtRecF64.scala 100:23]
    reg_b_s2 <= mux(val_s1, reg_b_s1, reg_b_s2) @[DivSqrtRecF64.scala 116:19 DivSqrtRecF64.scala 118:18 DivSqrtRecF64.scala 101:23]
    reg_result_s3 <= mux(val_s2, _T_26, reg_result_s3) @[DivSqrtRecF64.scala 121:19 DivSqrtRecF64.scala 122:23 DivSqrtRecF64.scala 102:28]

  module DivSqrtRecF64 :
    input clock : Clock
    input reset : UInt<1>
    output io_inReady_div : UInt<1>
    output io_inReady_sqrt : UInt<1>
    input io_inValid : UInt<1>
    input io_sqrtOp : UInt<1>
    input io_a : UInt<65>
    input io_b : UInt<65>
    input io_roundingMode : UInt<2>
    output io_outValid_div : UInt<1>
    output io_outValid_sqrt : UInt<1>
    output io_out : UInt<65>
    output io_exceptionFlags : UInt<5>

    inst ds of DivSqrtRecF64_mulAddZ31 @[DivSqrtRecF64.scala 59:20]
    inst mul of Mul54 @[DivSqrtRecF64.scala 73:21]
    skip
    io_inReady_div <= ds.io_inReady_div @[DivSqrtRecF64.scala 61:20]
    io_inReady_sqrt <= ds.io_inReady_sqrt @[DivSqrtRecF64.scala 62:21]
    io_outValid_div <= ds.io_outValid_div @[DivSqrtRecF64.scala 68:21]
    io_outValid_sqrt <= ds.io_outValid_sqrt @[DivSqrtRecF64.scala 69:22]
    io_out <= ds.io_out @[DivSqrtRecF64.scala 70:12]
    io_exceptionFlags <= ds.io_exceptionFlags @[DivSqrtRecF64.scala 71:23]
    ds.clock <= clock
    ds.reset <= reset
    ds.io_inValid <= io_inValid @[DivSqrtRecF64.scala 63:19]
    ds.io_sqrtOp <= io_sqrtOp @[DivSqrtRecF64.scala 64:18]
    ds.io_a <= io_a @[DivSqrtRecF64.scala 65:13]
    ds.io_b <= io_b @[DivSqrtRecF64.scala 66:13]
    ds.io_roundingMode <= io_roundingMode @[DivSqrtRecF64.scala 67:24]
    ds.io_mulAddResult_3 <= mul.io_result_s3 @[DivSqrtRecF64.scala 81:26]
    mul.clock <= clock
    skip
    mul.io_val_s0 <= bits(ds.io_usingMulAdd, 0, 0) @[DivSqrtRecF64.scala 75:39]
    mul.io_latch_a_s0 <= ds.io_latchMulAddA_0 @[DivSqrtRecF64.scala 76:23]
    mul.io_a_s0 <= ds.io_mulAddA_0 @[DivSqrtRecF64.scala 77:17]
    mul.io_latch_b_s0 <= ds.io_latchMulAddB_0 @[DivSqrtRecF64.scala 78:23]
    mul.io_b_s0 <= ds.io_mulAddB_0 @[DivSqrtRecF64.scala 79:17]
    mul.io_c_s2 <= ds.io_mulAddC_2 @[DivSqrtRecF64.scala 80:17]

  module FPU :
    input clock : Clock
    input reset : UInt<1>
    input io_inst : UInt<32>
    input io_fromint_data : UInt<64>
    input io_fcsr_rm : UInt<3>
    output io_fcsr_flags_valid : UInt<1>
    output io_fcsr_flags_bits : UInt<5>
    output io_store_data : UInt<64>
    output io_toint_data : UInt<64>
    input io_dmem_resp_val : UInt<1>
    input io_dmem_resp_type : UInt<3>
    input io_dmem_resp_tag : UInt<5>
    input io_dmem_resp_data : UInt<64>
    input io_valid : UInt<1>
    output io_fcsr_rdy : UInt<1>
    output io_nack_mem : UInt<1>
    output io_illegal_rm : UInt<1>
    input io_killx : UInt<1>
    input io_killm : UInt<1>
    output io_dec_cmd : UInt<5>
    output io_dec_ldst : UInt<1>
    output io_dec_wen : UInt<1>
    output io_dec_ren1 : UInt<1>
    output io_dec_ren2 : UInt<1>
    output io_dec_ren3 : UInt<1>
    output io_dec_swap12 : UInt<1>
    output io_dec_swap23 : UInt<1>
    output io_dec_single : UInt<1>
    output io_dec_fromint : UInt<1>
    output io_dec_toint : UInt<1>
    output io_dec_fastpipe : UInt<1>
    output io_dec_fma : UInt<1>
    output io_dec_div : UInt<1>
    output io_dec_sqrt : UInt<1>
    output io_dec_wflags : UInt<1>
    output io_sboard_set : UInt<1>
    output io_sboard_clr : UInt<1>
    output io_sboard_clra : UInt<5>
    output io_cp_req_ready : UInt<1>
    input io_cp_req_valid : UInt<1>
    input io_cp_req_bits_cmd : UInt<5>
    input io_cp_req_bits_ldst : UInt<1>
    input io_cp_req_bits_wen : UInt<1>
    input io_cp_req_bits_ren1 : UInt<1>
    input io_cp_req_bits_ren2 : UInt<1>
    input io_cp_req_bits_ren3 : UInt<1>
    input io_cp_req_bits_swap12 : UInt<1>
    input io_cp_req_bits_swap23 : UInt<1>
    input io_cp_req_bits_single : UInt<1>
    input io_cp_req_bits_fromint : UInt<1>
    input io_cp_req_bits_toint : UInt<1>
    input io_cp_req_bits_fastpipe : UInt<1>
    input io_cp_req_bits_fma : UInt<1>
    input io_cp_req_bits_div : UInt<1>
    input io_cp_req_bits_sqrt : UInt<1>
    input io_cp_req_bits_wflags : UInt<1>
    input io_cp_req_bits_rm : UInt<3>
    input io_cp_req_bits_typ : UInt<2>
    input io_cp_req_bits_in1 : UInt<65>
    input io_cp_req_bits_in2 : UInt<65>
    input io_cp_req_bits_in3 : UInt<65>
    input io_cp_resp_ready : UInt<1>
    output io_cp_resp_valid : UInt<1>
    output io_cp_resp_bits_data : UInt<65>
    output io_cp_resp_bits_exc : UInt<5>

    inst fp_decoder of FPUDecoder @[FPU.scala 520:26]
    mem regfile : @[FPU.scala 547:20]
      data-type => UInt<65>
      depth => 32
      read-latency => 0
      write-latency => 1
      reader => _T_849
      reader => _T_853
      reader => _T_857
      writer => _T_782
      writer => _T_1131
      read-under-write => undefined
    inst sfma of FPUFMAPipe @[FPU.scala 584:20]
    inst fpiu of FPToInt @[FPU.scala 588:20]
    inst ifpu of IntToFP @[FPU.scala 598:20]
    inst fpmu of FPToFP @[FPU.scala 603:20]
    inst FPUFMAPipe of FPUFMAPipe_1 @[FPU.scala 624:28]
    inst DivSqrtRecF64 of DivSqrtRecF64 @[FPU.scala 722:25]
    inst RecFNToRecFN of RecFNToRecFN @[FPU.scala 746:34]
    reg ex_reg_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ex_reg_valid) @[FPU.scala 509:25]
    node req_valid = or(ex_reg_valid, io_cp_req_valid) @[FPU.scala 510:32]
    reg ex_reg_inst : UInt<32>, clock with :
      reset => (UInt<1>("h0"), ex_reg_inst) @[Reg.scala 34:16]
    skip
    node ex_cp_valid = and(io_cp_req_ready, io_cp_req_valid) @[Decoupled.scala 30:37]
    node _T_215 = not(io_killx) @[FPU.scala 513:48]
    node _T_216 = and(ex_reg_valid, _T_215) @[FPU.scala 513:45]
    node _T_217 = or(_T_216, ex_cp_valid) @[FPU.scala 513:58]
    reg mem_reg_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_reg_valid) @[FPU.scala 513:26]
    reg mem_reg_inst : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mem_reg_inst) @[Reg.scala 34:16]
    skip
    reg mem_cp_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_cp_valid) @[FPU.scala 515:25]
    node _T_221 = or(io_killm, io_nack_mem) @[FPU.scala 516:25]
    node _T_223 = not(mem_cp_valid) @[FPU.scala 516:44]
    node killm = and(_T_221, _T_223) @[FPU.scala 516:41]
    node _T_225 = not(killm) @[FPU.scala 517:49]
    node _T_226 = or(_T_225, mem_cp_valid) @[FPU.scala 517:56]
    node _T_227 = and(mem_reg_valid, _T_226) @[FPU.scala 517:45]
    reg wb_reg_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wb_reg_valid) @[FPU.scala 517:25]
    reg wb_cp_valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wb_cp_valid) @[FPU.scala 518:24]
    reg _T_282_cmd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_282_cmd) @[Reg.scala 34:16]
    reg _T_282_ldst : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_ldst) @[Reg.scala 34:16]
    skip
    skip
    skip
    reg _T_282_ren3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_ren3) @[Reg.scala 34:16]
    skip
    reg _T_282_swap23 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_swap23) @[Reg.scala 34:16]
    reg _T_282_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_single) @[Reg.scala 34:16]
    reg _T_282_fromint : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_fromint) @[Reg.scala 34:16]
    reg _T_282_toint : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_toint) @[Reg.scala 34:16]
    reg _T_282_fastpipe : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_fastpipe) @[Reg.scala 34:16]
    reg _T_282_fma : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_fma) @[Reg.scala 34:16]
    reg _T_282_div : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_div) @[Reg.scala 34:16]
    reg _T_282_sqrt : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_sqrt) @[Reg.scala 34:16]
    reg _T_282_wflags : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_282_wflags) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node ex_ctrl_cmd = mux(ex_cp_valid, io_cp_req_bits_cmd, _T_282_cmd) @[FPU.scala 529:20]
    skip
    node ex_ctrl_ldst = mux(ex_cp_valid, io_cp_req_bits_ldst, _T_282_ldst) @[FPU.scala 529:20]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node ex_ctrl_ren3 = mux(ex_cp_valid, io_cp_req_bits_ren3, _T_282_ren3) @[FPU.scala 529:20]
    skip
    skip
    skip
    node ex_ctrl_swap23 = mux(ex_cp_valid, io_cp_req_bits_swap23, _T_282_swap23) @[FPU.scala 529:20]
    skip
    node ex_ctrl_single = mux(ex_cp_valid, io_cp_req_bits_single, _T_282_single) @[FPU.scala 529:20]
    skip
    node ex_ctrl_fromint = mux(ex_cp_valid, io_cp_req_bits_fromint, _T_282_fromint) @[FPU.scala 529:20]
    skip
    node ex_ctrl_toint = mux(ex_cp_valid, io_cp_req_bits_toint, _T_282_toint) @[FPU.scala 529:20]
    skip
    node ex_ctrl_fastpipe = mux(ex_cp_valid, io_cp_req_bits_fastpipe, _T_282_fastpipe) @[FPU.scala 529:20]
    skip
    node ex_ctrl_fma = mux(ex_cp_valid, io_cp_req_bits_fma, _T_282_fma) @[FPU.scala 529:20]
    skip
    node ex_ctrl_div = mux(ex_cp_valid, io_cp_req_bits_div, _T_282_div) @[FPU.scala 529:20]
    skip
    node ex_ctrl_sqrt = mux(ex_cp_valid, io_cp_req_bits_sqrt, _T_282_sqrt) @[FPU.scala 529:20]
    skip
    node ex_ctrl_wflags = mux(ex_cp_valid, io_cp_req_bits_wflags, _T_282_wflags) @[FPU.scala 529:20]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg mem_ctrl_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_single) @[Reg.scala 34:16]
    reg mem_ctrl_fromint : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_fromint) @[Reg.scala 34:16]
    reg mem_ctrl_toint : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_toint) @[Reg.scala 34:16]
    reg mem_ctrl_fastpipe : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_fastpipe) @[Reg.scala 34:16]
    reg mem_ctrl_fma : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_fma) @[Reg.scala 34:16]
    reg mem_ctrl_div : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_div) @[Reg.scala 34:16]
    reg mem_ctrl_sqrt : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_sqrt) @[Reg.scala 34:16]
    reg mem_ctrl_wflags : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mem_ctrl_wflags) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg wb_ctrl_toint : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wb_ctrl_toint) @[Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg load_wb : UInt<1>, clock with :
      reset => (UInt<1>("h0"), load_wb) @[FPU.scala 534:20]
    node _T_381 = bits(io_dmem_resp_type, 0, 0) @[FPU.scala 535:52]
    node _T_383 = not(_T_381) @[FPU.scala 535:34]
    reg load_wb_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), load_wb_single) @[Reg.scala 34:16]
    skip
    reg load_wb_data : UInt<64>, clock with :
      reset => (UInt<1>("h0"), load_wb_data) @[Reg.scala 34:16]
    skip
    reg load_wb_tag : UInt<5>, clock with :
      reset => (UInt<1>("h0"), load_wb_tag) @[Reg.scala 34:16]
    skip
    node _T_387 = bits(load_wb_data, 31, 31) @[recFNFromFN.scala 47:22]
    node _T_388 = bits(load_wb_data, 30, 23) @[recFNFromFN.scala 48:23]
    node _T_389 = bits(load_wb_data, 22, 0) @[recFNFromFN.scala 49:25]
    node _T_391 = eq(_T_388, UInt<8>("h0")) @[recFNFromFN.scala 51:34]
    node _T_393 = eq(_T_389, UInt<23>("h0")) @[recFNFromFN.scala 52:38]
    node _T_394 = and(_T_391, _T_393) @[recFNFromFN.scala 53:34]
    node _T_395 = shl(_T_389, 9) @[recFNFromFN.scala 56:26]
    node _T_396 = bits(_T_395, 31, 16) @[CircuitMath.scala 35:17]
    node _T_397 = bits(_T_395, 15, 0) @[CircuitMath.scala 36:17]
    node _T_399 = neq(_T_396, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_400 = bits(_T_396, 15, 8) @[CircuitMath.scala 35:17]
    node _T_401 = bits(_T_396, 7, 0) @[CircuitMath.scala 36:17]
    node _T_403 = neq(_T_400, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_404 = bits(_T_400, 7, 4) @[CircuitMath.scala 35:17]
    node _T_405 = bits(_T_400, 3, 0) @[CircuitMath.scala 36:17]
    node _T_407 = neq(_T_404, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_408 = bits(_T_404, 3, 3) @[CircuitMath.scala 32:12]
    node _T_410 = bits(_T_404, 2, 2) @[CircuitMath.scala 32:12]
    node _T_412 = bits(_T_404, 1, 1) @[CircuitMath.scala 30:8]
    node _T_413 = mux(_T_410, UInt<2>("h2"), pad(_T_412, 2)) @[CircuitMath.scala 32:10]
    node _T_414 = mux(_T_408, UInt<2>("h3"), _T_413) @[CircuitMath.scala 32:10]
    node _T_415 = bits(_T_405, 3, 3) @[CircuitMath.scala 32:12]
    node _T_417 = bits(_T_405, 2, 2) @[CircuitMath.scala 32:12]
    node _T_419 = bits(_T_405, 1, 1) @[CircuitMath.scala 30:8]
    node _T_420 = mux(_T_417, UInt<2>("h2"), pad(_T_419, 2)) @[CircuitMath.scala 32:10]
    node _T_421 = mux(_T_415, UInt<2>("h3"), _T_420) @[CircuitMath.scala 32:10]
    node _T_422 = mux(_T_407, _T_414, _T_421) @[CircuitMath.scala 38:21]
    node _T_423 = cat(_T_407, _T_422) @[Cat.scala 30:58]
    node _T_424 = bits(_T_401, 7, 4) @[CircuitMath.scala 35:17]
    node _T_425 = bits(_T_401, 3, 0) @[CircuitMath.scala 36:17]
    node _T_427 = neq(_T_424, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_428 = bits(_T_424, 3, 3) @[CircuitMath.scala 32:12]
    node _T_430 = bits(_T_424, 2, 2) @[CircuitMath.scala 32:12]
    node _T_432 = bits(_T_424, 1, 1) @[CircuitMath.scala 30:8]
    node _T_433 = mux(_T_430, UInt<2>("h2"), pad(_T_432, 2)) @[CircuitMath.scala 32:10]
    node _T_434 = mux(_T_428, UInt<2>("h3"), _T_433) @[CircuitMath.scala 32:10]
    node _T_435 = bits(_T_425, 3, 3) @[CircuitMath.scala 32:12]
    node _T_437 = bits(_T_425, 2, 2) @[CircuitMath.scala 32:12]
    node _T_439 = bits(_T_425, 1, 1) @[CircuitMath.scala 30:8]
    node _T_440 = mux(_T_437, UInt<2>("h2"), pad(_T_439, 2)) @[CircuitMath.scala 32:10]
    node _T_441 = mux(_T_435, UInt<2>("h3"), _T_440) @[CircuitMath.scala 32:10]
    node _T_442 = mux(_T_427, _T_434, _T_441) @[CircuitMath.scala 38:21]
    node _T_443 = cat(_T_427, _T_442) @[Cat.scala 30:58]
    node _T_444 = mux(_T_403, _T_423, _T_443) @[CircuitMath.scala 38:21]
    node _T_445 = cat(_T_403, _T_444) @[Cat.scala 30:58]
    node _T_446 = bits(_T_397, 15, 8) @[CircuitMath.scala 35:17]
    node _T_447 = bits(_T_397, 7, 0) @[CircuitMath.scala 36:17]
    node _T_449 = neq(_T_446, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_450 = bits(_T_446, 7, 4) @[CircuitMath.scala 35:17]
    node _T_451 = bits(_T_446, 3, 0) @[CircuitMath.scala 36:17]
    node _T_453 = neq(_T_450, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_454 = bits(_T_450, 3, 3) @[CircuitMath.scala 32:12]
    node _T_456 = bits(_T_450, 2, 2) @[CircuitMath.scala 32:12]
    node _T_458 = bits(_T_450, 1, 1) @[CircuitMath.scala 30:8]
    node _T_459 = mux(_T_456, UInt<2>("h2"), pad(_T_458, 2)) @[CircuitMath.scala 32:10]
    node _T_460 = mux(_T_454, UInt<2>("h3"), _T_459) @[CircuitMath.scala 32:10]
    node _T_461 = bits(_T_451, 3, 3) @[CircuitMath.scala 32:12]
    node _T_463 = bits(_T_451, 2, 2) @[CircuitMath.scala 32:12]
    node _T_465 = bits(_T_451, 1, 1) @[CircuitMath.scala 30:8]
    node _T_466 = mux(_T_463, UInt<2>("h2"), pad(_T_465, 2)) @[CircuitMath.scala 32:10]
    node _T_467 = mux(_T_461, UInt<2>("h3"), _T_466) @[CircuitMath.scala 32:10]
    node _T_468 = mux(_T_453, _T_460, _T_467) @[CircuitMath.scala 38:21]
    node _T_469 = cat(_T_453, _T_468) @[Cat.scala 30:58]
    node _T_470 = bits(_T_447, 7, 4) @[CircuitMath.scala 35:17]
    node _T_471 = bits(_T_447, 3, 0) @[CircuitMath.scala 36:17]
    node _T_473 = neq(_T_470, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_474 = bits(_T_470, 3, 3) @[CircuitMath.scala 32:12]
    node _T_476 = bits(_T_470, 2, 2) @[CircuitMath.scala 32:12]
    node _T_478 = bits(_T_470, 1, 1) @[CircuitMath.scala 30:8]
    node _T_479 = mux(_T_476, UInt<2>("h2"), pad(_T_478, 2)) @[CircuitMath.scala 32:10]
    node _T_480 = mux(_T_474, UInt<2>("h3"), _T_479) @[CircuitMath.scala 32:10]
    node _T_481 = bits(_T_471, 3, 3) @[CircuitMath.scala 32:12]
    node _T_483 = bits(_T_471, 2, 2) @[CircuitMath.scala 32:12]
    node _T_485 = bits(_T_471, 1, 1) @[CircuitMath.scala 30:8]
    node _T_486 = mux(_T_483, UInt<2>("h2"), pad(_T_485, 2)) @[CircuitMath.scala 32:10]
    node _T_487 = mux(_T_481, UInt<2>("h3"), _T_486) @[CircuitMath.scala 32:10]
    node _T_488 = mux(_T_473, _T_480, _T_487) @[CircuitMath.scala 38:21]
    node _T_489 = cat(_T_473, _T_488) @[Cat.scala 30:58]
    node _T_490 = mux(_T_449, _T_469, _T_489) @[CircuitMath.scala 38:21]
    node _T_491 = cat(_T_449, _T_490) @[Cat.scala 30:58]
    node _T_492 = mux(_T_399, _T_445, _T_491) @[CircuitMath.scala 38:21]
    node _T_493 = cat(_T_399, _T_492) @[Cat.scala 30:58]
    node _T_494 = not(_T_493) @[recFNFromFN.scala 56:13]
    node _GEN_149 = pad(_T_389, 54) @[recFNFromFN.scala 58:25]
    node _T_495 = dshlw(_GEN_149, _T_494) @[recFNFromFN.scala 58:25]
    node _T_496 = bits(_T_495, 21, 0) @[recFNFromFN.scala 58:37]
    node _T_498 = cat(_T_496, UInt<1>("h0")) @[Cat.scala 30:58]
    skip
    node _GEN_150 = pad(_T_494, 9) @[recFNFromFN.scala 62:27]
    node _T_504 = xor(_GEN_150, UInt<9>("h1ff")) @[recFNFromFN.scala 62:27]
    node _T_505 = mux(_T_391, _T_504, pad(_T_388, 9)) @[recFNFromFN.scala 61:16]
    node _T_509 = mux(_T_391, UInt<2>("h2"), UInt<2>("h1")) @[recFNFromFN.scala 64:47]
    node _GEN_151 = pad(_T_509, 8) @[recFNFromFN.scala 64:42]
    node _T_510 = or(UInt<8>("h80"), _GEN_151) @[recFNFromFN.scala 64:42]
    node _GEN_152 = pad(_T_510, 9) @[recFNFromFN.scala 64:15]
    node _T_511 = add(_T_505, _GEN_152) @[recFNFromFN.scala 64:15]
    node _T_512 = tail(_T_511, 1) @[recFNFromFN.scala 64:15]
    node _T_513 = bits(_T_512, 8, 7) @[recFNFromFN.scala 67:25]
    node _T_515 = eq(_T_513, UInt<2>("h3")) @[recFNFromFN.scala 67:50]
    node _T_517 = not(_T_393) @[recFNFromFN.scala 68:17]
    node _T_518 = and(_T_515, _T_517) @[recFNFromFN.scala 67:63]
    skip
    node _T_522 = mux(_T_394, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_523 = shl(_T_522, 6) @[recFNFromFN.scala 71:45]
    node _T_524 = not(_T_523) @[recFNFromFN.scala 71:28]
    node _T_525 = and(_T_512, _T_524) @[recFNFromFN.scala 71:26]
    node _T_526 = shl(_T_518, 6) @[recFNFromFN.scala 72:22]
    node _GEN_153 = pad(_T_526, 9) @[recFNFromFN.scala 71:64]
    node _T_527 = or(_T_525, _GEN_153) @[recFNFromFN.scala 71:64]
    node _T_528 = mux(_T_391, _T_498, _T_389) @[recFNFromFN.scala 73:27]
    skip
    node rec_s = cat(cat(_T_387, _T_527), _T_528) @[Cat.scala 30:58]
    node _T_530 = bits(load_wb_data, 63, 63) @[recFNFromFN.scala 47:22]
    node _T_531 = bits(load_wb_data, 62, 52) @[recFNFromFN.scala 48:23]
    node _T_532 = bits(load_wb_data, 51, 0) @[recFNFromFN.scala 49:25]
    node _T_534 = eq(_T_531, UInt<11>("h0")) @[recFNFromFN.scala 51:34]
    node _T_536 = eq(_T_532, UInt<52>("h0")) @[recFNFromFN.scala 52:38]
    node _T_537 = and(_T_534, _T_536) @[recFNFromFN.scala 53:34]
    node _T_538 = shl(_T_532, 12) @[recFNFromFN.scala 56:26]
    node _T_539 = bits(_T_538, 63, 32) @[CircuitMath.scala 35:17]
    node _T_540 = bits(_T_538, 31, 0) @[CircuitMath.scala 36:17]
    node _T_542 = neq(_T_539, UInt<32>("h0")) @[CircuitMath.scala 37:22]
    node _T_543 = bits(_T_539, 31, 16) @[CircuitMath.scala 35:17]
    node _T_544 = bits(_T_539, 15, 0) @[CircuitMath.scala 36:17]
    node _T_546 = neq(_T_543, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_547 = bits(_T_543, 15, 8) @[CircuitMath.scala 35:17]
    node _T_548 = bits(_T_543, 7, 0) @[CircuitMath.scala 36:17]
    node _T_550 = neq(_T_547, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_551 = bits(_T_547, 7, 4) @[CircuitMath.scala 35:17]
    node _T_552 = bits(_T_547, 3, 0) @[CircuitMath.scala 36:17]
    node _T_554 = neq(_T_551, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_555 = bits(_T_551, 3, 3) @[CircuitMath.scala 32:12]
    node _T_557 = bits(_T_551, 2, 2) @[CircuitMath.scala 32:12]
    node _T_559 = bits(_T_551, 1, 1) @[CircuitMath.scala 30:8]
    node _T_560 = mux(_T_557, UInt<2>("h2"), pad(_T_559, 2)) @[CircuitMath.scala 32:10]
    node _T_561 = mux(_T_555, UInt<2>("h3"), _T_560) @[CircuitMath.scala 32:10]
    node _T_562 = bits(_T_552, 3, 3) @[CircuitMath.scala 32:12]
    node _T_564 = bits(_T_552, 2, 2) @[CircuitMath.scala 32:12]
    node _T_566 = bits(_T_552, 1, 1) @[CircuitMath.scala 30:8]
    node _T_567 = mux(_T_564, UInt<2>("h2"), pad(_T_566, 2)) @[CircuitMath.scala 32:10]
    node _T_568 = mux(_T_562, UInt<2>("h3"), _T_567) @[CircuitMath.scala 32:10]
    node _T_569 = mux(_T_554, _T_561, _T_568) @[CircuitMath.scala 38:21]
    node _T_570 = cat(_T_554, _T_569) @[Cat.scala 30:58]
    node _T_571 = bits(_T_548, 7, 4) @[CircuitMath.scala 35:17]
    node _T_572 = bits(_T_548, 3, 0) @[CircuitMath.scala 36:17]
    node _T_574 = neq(_T_571, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_575 = bits(_T_571, 3, 3) @[CircuitMath.scala 32:12]
    node _T_577 = bits(_T_571, 2, 2) @[CircuitMath.scala 32:12]
    node _T_579 = bits(_T_571, 1, 1) @[CircuitMath.scala 30:8]
    node _T_580 = mux(_T_577, UInt<2>("h2"), pad(_T_579, 2)) @[CircuitMath.scala 32:10]
    node _T_581 = mux(_T_575, UInt<2>("h3"), _T_580) @[CircuitMath.scala 32:10]
    node _T_582 = bits(_T_572, 3, 3) @[CircuitMath.scala 32:12]
    node _T_584 = bits(_T_572, 2, 2) @[CircuitMath.scala 32:12]
    node _T_586 = bits(_T_572, 1, 1) @[CircuitMath.scala 30:8]
    node _T_587 = mux(_T_584, UInt<2>("h2"), pad(_T_586, 2)) @[CircuitMath.scala 32:10]
    node _T_588 = mux(_T_582, UInt<2>("h3"), _T_587) @[CircuitMath.scala 32:10]
    node _T_589 = mux(_T_574, _T_581, _T_588) @[CircuitMath.scala 38:21]
    node _T_590 = cat(_T_574, _T_589) @[Cat.scala 30:58]
    node _T_591 = mux(_T_550, _T_570, _T_590) @[CircuitMath.scala 38:21]
    node _T_592 = cat(_T_550, _T_591) @[Cat.scala 30:58]
    node _T_593 = bits(_T_544, 15, 8) @[CircuitMath.scala 35:17]
    node _T_594 = bits(_T_544, 7, 0) @[CircuitMath.scala 36:17]
    node _T_596 = neq(_T_593, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_597 = bits(_T_593, 7, 4) @[CircuitMath.scala 35:17]
    node _T_598 = bits(_T_593, 3, 0) @[CircuitMath.scala 36:17]
    node _T_600 = neq(_T_597, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_601 = bits(_T_597, 3, 3) @[CircuitMath.scala 32:12]
    node _T_603 = bits(_T_597, 2, 2) @[CircuitMath.scala 32:12]
    node _T_605 = bits(_T_597, 1, 1) @[CircuitMath.scala 30:8]
    node _T_606 = mux(_T_603, UInt<2>("h2"), pad(_T_605, 2)) @[CircuitMath.scala 32:10]
    node _T_607 = mux(_T_601, UInt<2>("h3"), _T_606) @[CircuitMath.scala 32:10]
    node _T_608 = bits(_T_598, 3, 3) @[CircuitMath.scala 32:12]
    node _T_610 = bits(_T_598, 2, 2) @[CircuitMath.scala 32:12]
    node _T_612 = bits(_T_598, 1, 1) @[CircuitMath.scala 30:8]
    node _T_613 = mux(_T_610, UInt<2>("h2"), pad(_T_612, 2)) @[CircuitMath.scala 32:10]
    node _T_614 = mux(_T_608, UInt<2>("h3"), _T_613) @[CircuitMath.scala 32:10]
    node _T_615 = mux(_T_600, _T_607, _T_614) @[CircuitMath.scala 38:21]
    node _T_616 = cat(_T_600, _T_615) @[Cat.scala 30:58]
    node _T_617 = bits(_T_594, 7, 4) @[CircuitMath.scala 35:17]
    node _T_618 = bits(_T_594, 3, 0) @[CircuitMath.scala 36:17]
    node _T_620 = neq(_T_617, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_621 = bits(_T_617, 3, 3) @[CircuitMath.scala 32:12]
    node _T_623 = bits(_T_617, 2, 2) @[CircuitMath.scala 32:12]
    node _T_625 = bits(_T_617, 1, 1) @[CircuitMath.scala 30:8]
    node _T_626 = mux(_T_623, UInt<2>("h2"), pad(_T_625, 2)) @[CircuitMath.scala 32:10]
    node _T_627 = mux(_T_621, UInt<2>("h3"), _T_626) @[CircuitMath.scala 32:10]
    node _T_628 = bits(_T_618, 3, 3) @[CircuitMath.scala 32:12]
    node _T_630 = bits(_T_618, 2, 2) @[CircuitMath.scala 32:12]
    node _T_632 = bits(_T_618, 1, 1) @[CircuitMath.scala 30:8]
    node _T_633 = mux(_T_630, UInt<2>("h2"), pad(_T_632, 2)) @[CircuitMath.scala 32:10]
    node _T_634 = mux(_T_628, UInt<2>("h3"), _T_633) @[CircuitMath.scala 32:10]
    node _T_635 = mux(_T_620, _T_627, _T_634) @[CircuitMath.scala 38:21]
    node _T_636 = cat(_T_620, _T_635) @[Cat.scala 30:58]
    node _T_637 = mux(_T_596, _T_616, _T_636) @[CircuitMath.scala 38:21]
    node _T_638 = cat(_T_596, _T_637) @[Cat.scala 30:58]
    node _T_639 = mux(_T_546, _T_592, _T_638) @[CircuitMath.scala 38:21]
    node _T_640 = cat(_T_546, _T_639) @[Cat.scala 30:58]
    node _T_641 = bits(_T_540, 31, 16) @[CircuitMath.scala 35:17]
    node _T_642 = bits(_T_540, 15, 0) @[CircuitMath.scala 36:17]
    node _T_644 = neq(_T_641, UInt<16>("h0")) @[CircuitMath.scala 37:22]
    node _T_645 = bits(_T_641, 15, 8) @[CircuitMath.scala 35:17]
    node _T_646 = bits(_T_641, 7, 0) @[CircuitMath.scala 36:17]
    node _T_648 = neq(_T_645, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_649 = bits(_T_645, 7, 4) @[CircuitMath.scala 35:17]
    node _T_650 = bits(_T_645, 3, 0) @[CircuitMath.scala 36:17]
    node _T_652 = neq(_T_649, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_653 = bits(_T_649, 3, 3) @[CircuitMath.scala 32:12]
    node _T_655 = bits(_T_649, 2, 2) @[CircuitMath.scala 32:12]
    node _T_657 = bits(_T_649, 1, 1) @[CircuitMath.scala 30:8]
    node _T_658 = mux(_T_655, UInt<2>("h2"), pad(_T_657, 2)) @[CircuitMath.scala 32:10]
    node _T_659 = mux(_T_653, UInt<2>("h3"), _T_658) @[CircuitMath.scala 32:10]
    node _T_660 = bits(_T_650, 3, 3) @[CircuitMath.scala 32:12]
    node _T_662 = bits(_T_650, 2, 2) @[CircuitMath.scala 32:12]
    node _T_664 = bits(_T_650, 1, 1) @[CircuitMath.scala 30:8]
    node _T_665 = mux(_T_662, UInt<2>("h2"), pad(_T_664, 2)) @[CircuitMath.scala 32:10]
    node _T_666 = mux(_T_660, UInt<2>("h3"), _T_665) @[CircuitMath.scala 32:10]
    node _T_667 = mux(_T_652, _T_659, _T_666) @[CircuitMath.scala 38:21]
    node _T_668 = cat(_T_652, _T_667) @[Cat.scala 30:58]
    node _T_669 = bits(_T_646, 7, 4) @[CircuitMath.scala 35:17]
    node _T_670 = bits(_T_646, 3, 0) @[CircuitMath.scala 36:17]
    node _T_672 = neq(_T_669, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_673 = bits(_T_669, 3, 3) @[CircuitMath.scala 32:12]
    node _T_675 = bits(_T_669, 2, 2) @[CircuitMath.scala 32:12]
    node _T_677 = bits(_T_669, 1, 1) @[CircuitMath.scala 30:8]
    node _T_678 = mux(_T_675, UInt<2>("h2"), pad(_T_677, 2)) @[CircuitMath.scala 32:10]
    node _T_679 = mux(_T_673, UInt<2>("h3"), _T_678) @[CircuitMath.scala 32:10]
    node _T_680 = bits(_T_670, 3, 3) @[CircuitMath.scala 32:12]
    node _T_682 = bits(_T_670, 2, 2) @[CircuitMath.scala 32:12]
    node _T_684 = bits(_T_670, 1, 1) @[CircuitMath.scala 30:8]
    node _T_685 = mux(_T_682, UInt<2>("h2"), pad(_T_684, 2)) @[CircuitMath.scala 32:10]
    node _T_686 = mux(_T_680, UInt<2>("h3"), _T_685) @[CircuitMath.scala 32:10]
    node _T_687 = mux(_T_672, _T_679, _T_686) @[CircuitMath.scala 38:21]
    node _T_688 = cat(_T_672, _T_687) @[Cat.scala 30:58]
    node _T_689 = mux(_T_648, _T_668, _T_688) @[CircuitMath.scala 38:21]
    node _T_690 = cat(_T_648, _T_689) @[Cat.scala 30:58]
    node _T_691 = bits(_T_642, 15, 8) @[CircuitMath.scala 35:17]
    node _T_692 = bits(_T_642, 7, 0) @[CircuitMath.scala 36:17]
    node _T_694 = neq(_T_691, UInt<8>("h0")) @[CircuitMath.scala 37:22]
    node _T_695 = bits(_T_691, 7, 4) @[CircuitMath.scala 35:17]
    node _T_696 = bits(_T_691, 3, 0) @[CircuitMath.scala 36:17]
    node _T_698 = neq(_T_695, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_699 = bits(_T_695, 3, 3) @[CircuitMath.scala 32:12]
    node _T_701 = bits(_T_695, 2, 2) @[CircuitMath.scala 32:12]
    node _T_703 = bits(_T_695, 1, 1) @[CircuitMath.scala 30:8]
    node _T_704 = mux(_T_701, UInt<2>("h2"), pad(_T_703, 2)) @[CircuitMath.scala 32:10]
    node _T_705 = mux(_T_699, UInt<2>("h3"), _T_704) @[CircuitMath.scala 32:10]
    node _T_706 = bits(_T_696, 3, 3) @[CircuitMath.scala 32:12]
    node _T_708 = bits(_T_696, 2, 2) @[CircuitMath.scala 32:12]
    node _T_710 = bits(_T_696, 1, 1) @[CircuitMath.scala 30:8]
    node _T_711 = mux(_T_708, UInt<2>("h2"), pad(_T_710, 2)) @[CircuitMath.scala 32:10]
    node _T_712 = mux(_T_706, UInt<2>("h3"), _T_711) @[CircuitMath.scala 32:10]
    node _T_713 = mux(_T_698, _T_705, _T_712) @[CircuitMath.scala 38:21]
    node _T_714 = cat(_T_698, _T_713) @[Cat.scala 30:58]
    node _T_715 = bits(_T_692, 7, 4) @[CircuitMath.scala 35:17]
    node _T_716 = bits(_T_692, 3, 0) @[CircuitMath.scala 36:17]
    node _T_718 = neq(_T_715, UInt<4>("h0")) @[CircuitMath.scala 37:22]
    node _T_719 = bits(_T_715, 3, 3) @[CircuitMath.scala 32:12]
    node _T_721 = bits(_T_715, 2, 2) @[CircuitMath.scala 32:12]
    node _T_723 = bits(_T_715, 1, 1) @[CircuitMath.scala 30:8]
    node _T_724 = mux(_T_721, UInt<2>("h2"), pad(_T_723, 2)) @[CircuitMath.scala 32:10]
    node _T_725 = mux(_T_719, UInt<2>("h3"), _T_724) @[CircuitMath.scala 32:10]
    node _T_726 = bits(_T_716, 3, 3) @[CircuitMath.scala 32:12]
    node _T_728 = bits(_T_716, 2, 2) @[CircuitMath.scala 32:12]
    node _T_730 = bits(_T_716, 1, 1) @[CircuitMath.scala 30:8]
    node _T_731 = mux(_T_728, UInt<2>("h2"), pad(_T_730, 2)) @[CircuitMath.scala 32:10]
    node _T_732 = mux(_T_726, UInt<2>("h3"), _T_731) @[CircuitMath.scala 32:10]
    node _T_733 = mux(_T_718, _T_725, _T_732) @[CircuitMath.scala 38:21]
    node _T_734 = cat(_T_718, _T_733) @[Cat.scala 30:58]
    node _T_735 = mux(_T_694, _T_714, _T_734) @[CircuitMath.scala 38:21]
    node _T_736 = cat(_T_694, _T_735) @[Cat.scala 30:58]
    node _T_737 = mux(_T_644, _T_690, _T_736) @[CircuitMath.scala 38:21]
    node _T_738 = cat(_T_644, _T_737) @[Cat.scala 30:58]
    node _T_739 = mux(_T_542, _T_640, _T_738) @[CircuitMath.scala 38:21]
    node _T_740 = cat(_T_542, _T_739) @[Cat.scala 30:58]
    node _T_741 = not(_T_740) @[recFNFromFN.scala 56:13]
    node _GEN_154 = pad(_T_532, 115) @[recFNFromFN.scala 58:25]
    node _T_742 = dshlw(_GEN_154, _T_741) @[recFNFromFN.scala 58:25]
    node _T_743 = bits(_T_742, 50, 0) @[recFNFromFN.scala 58:37]
    node _T_745 = cat(_T_743, UInt<1>("h0")) @[Cat.scala 30:58]
    skip
    node _GEN_155 = pad(_T_741, 12) @[recFNFromFN.scala 62:27]
    node _T_751 = xor(_GEN_155, UInt<12>("hfff")) @[recFNFromFN.scala 62:27]
    node _T_752 = mux(_T_534, _T_751, pad(_T_531, 12)) @[recFNFromFN.scala 61:16]
    node _T_756 = mux(_T_534, UInt<2>("h2"), UInt<2>("h1")) @[recFNFromFN.scala 64:47]
    node _GEN_156 = pad(_T_756, 11) @[recFNFromFN.scala 64:42]
    node _T_757 = or(UInt<11>("h400"), _GEN_156) @[recFNFromFN.scala 64:42]
    node _GEN_157 = pad(_T_757, 12) @[recFNFromFN.scala 64:15]
    node _T_758 = add(_T_752, _GEN_157) @[recFNFromFN.scala 64:15]
    node _T_759 = tail(_T_758, 1) @[recFNFromFN.scala 64:15]
    node _T_760 = bits(_T_759, 11, 10) @[recFNFromFN.scala 67:25]
    node _T_762 = eq(_T_760, UInt<2>("h3")) @[recFNFromFN.scala 67:50]
    node _T_764 = not(_T_536) @[recFNFromFN.scala 68:17]
    node _T_765 = and(_T_762, _T_764) @[recFNFromFN.scala 67:63]
    skip
    node _T_769 = mux(_T_537, UInt<3>("h7"), UInt<3>("h0")) @[Bitwise.scala 71:12]
    node _T_770 = shl(_T_769, 9) @[recFNFromFN.scala 71:45]
    node _T_771 = not(_T_770) @[recFNFromFN.scala 71:28]
    node _T_772 = and(_T_759, _T_771) @[recFNFromFN.scala 71:26]
    node _T_773 = shl(_T_765, 9) @[recFNFromFN.scala 72:22]
    node _GEN_158 = pad(_T_773, 12) @[recFNFromFN.scala 71:64]
    node _T_774 = or(_T_772, _GEN_158) @[recFNFromFN.scala 71:64]
    node _T_775 = mux(_T_534, _T_745, _T_532) @[recFNFromFN.scala 73:27]
    skip
    node _T_777 = cat(cat(_T_530, _T_774), _T_775) @[Cat.scala 30:58]
    node _GEN_159 = pad(rec_s, 65) @[FPU.scala 543:33]
    node _T_779 = or(_GEN_159, UInt<65>("he004000000000000")) @[FPU.scala 543:33]
    skip
    skip
    skip
    skip
    skip
    skip
    reg ex_ra1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), ex_ra1) @[FPU.scala 554:53]
    reg ex_ra2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), ex_ra2) @[FPU.scala 554:53]
    reg ex_ra3 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), ex_ra3) @[FPU.scala 554:53]
    node _T_787 = not(fp_decoder.io_sigs_swap12) @[FPU.scala 557:13]
    node _T_788 = bits(io_inst, 19, 15) @[FPU.scala 557:49]
    node _GEN_58 = mux(_T_787, _T_788, ex_ra1) @[FPU.scala 557:30 FPU.scala 557:39 FPU.scala 554:53]
    skip
    node _GEN_59 = mux(fp_decoder.io_sigs_swap12, _T_788, ex_ra2) @[FPU.scala 558:29 FPU.scala 558:38 FPU.scala 554:53]
    node _GEN_60 = mux(fp_decoder.io_sigs_ren1, _GEN_58, ex_ra1) @[FPU.scala 556:25 FPU.scala 554:53]
    node _GEN_61 = mux(fp_decoder.io_sigs_ren1, _GEN_59, ex_ra2) @[FPU.scala 556:25 FPU.scala 554:53]
    node _T_790 = bits(io_inst, 24, 20) @[FPU.scala 561:48]
    node _GEN_62 = mux(fp_decoder.io_sigs_swap12, _T_790, _GEN_60) @[FPU.scala 561:29 FPU.scala 561:38]
    skip
    node _GEN_63 = mux(fp_decoder.io_sigs_swap23, _T_790, ex_ra3) @[FPU.scala 562:29 FPU.scala 562:38 FPU.scala 554:53]
    skip
    node _T_795 = not(fp_decoder.io_sigs_swap23) @[FPU.scala 563:32]
    node _T_796 = and(_T_787, _T_795) @[FPU.scala 563:29]
    skip
    node _GEN_64 = mux(_T_796, _T_790, _GEN_61) @[FPU.scala 563:49 FPU.scala 563:58]
    node _GEN_65 = mux(fp_decoder.io_sigs_ren2, _GEN_62, _GEN_60) @[FPU.scala 560:25]
    node _GEN_66 = mux(fp_decoder.io_sigs_ren2, _GEN_63, ex_ra3) @[FPU.scala 560:25 FPU.scala 554:53]
    node _GEN_67 = mux(fp_decoder.io_sigs_ren2, _GEN_64, _GEN_61) @[FPU.scala 560:25]
    node _T_798 = bits(io_inst, 31, 27) @[FPU.scala 565:44]
    node _GEN_68 = mux(fp_decoder.io_sigs_ren3, _T_798, _GEN_66) @[FPU.scala 565:25 FPU.scala 565:34]
    skip
    skip
    skip
    node _T_799 = bits(ex_reg_inst, 14, 12) @[FPU.scala 567:30]
    node _T_801 = eq(_T_799, UInt<3>("h7")) @[FPU.scala 567:38]
    skip
    node ex_rm = mux(_T_801, io_fcsr_rm, _T_799) @[FPU.scala 567:18]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_858 = bits(ex_reg_inst, 21, 20) @[FPU.scala 575:25]
    node _GEN_72 = mux(io_cp_req_bits_swap23, io_cp_req_bits_in3, io_cp_req_bits_in2) @[FPU.scala 578:34 FPU.scala 579:15 FPU.scala 577:9]
    node _GEN_73 = mux(io_cp_req_bits_swap23, io_cp_req_bits_in2, io_cp_req_bits_in3) @[FPU.scala 578:34 FPU.scala 580:15 FPU.scala 577:9]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_859 = and(req_valid, ex_ctrl_fma) @[FPU.scala 585:33]
    skip
    node _T_861 = or(ex_ctrl_toint, ex_ctrl_div) @[FPU.scala 589:51]
    node _T_862 = or(_T_861, ex_ctrl_sqrt) @[FPU.scala 589:66]
    node _T_865 = and(ex_ctrl_cmd, UInt<5>("hd")) @[FPU.scala 589:97]
    node _T_866 = eq(UInt<5>("h5"), _T_865) @[FPU.scala 589:97]
    node _T_867 = or(_T_862, _T_866) @[FPU.scala 589:82]
    skip
    node _T_869 = and(fpiu.io_out_valid, mem_cp_valid) @[FPU.scala 593:26]
    node _T_870 = and(_T_869, mem_ctrl_toint) @[FPU.scala 593:42]
    node _GEN_95 = mux(_T_870, fpiu.io_out_bits_toint, UInt<64>("h0")) @[FPU.scala 593:60 FPU.scala 594:26 FPU.scala 526:24]
    skip
    skip
    skip
    skip
    reg divSqrt_wen : UInt<1>, clock with :
      reset => (UInt<1>("h0"), divSqrt_wen) @[FPU.scala 608:24]
    reg divSqrt_waddr : UInt<5>, clock with :
      reset => (UInt<1>("h0"), divSqrt_waddr) @[FPU.scala 610:26]
    reg divSqrt_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), divSqrt_single) @[FPU.scala 611:27]
    reg divSqrt_in_flight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), divSqrt_in_flight) @[FPU.scala 614:30]
    reg divSqrt_killed : UInt<1>, clock with :
      reset => (UInt<1>("h0"), divSqrt_killed) @[FPU.scala 615:27]
    skip
    node _T_885 = not(ex_ctrl_single) @[FPU.scala 625:59]
    skip
    skip
    skip
    node _T_893 = and(mem_ctrl_fma, mem_ctrl_single) @[FPU.scala 622:56]
    node _T_896 = mux(_T_893, UInt<2>("h2"), UInt<2>("h0")) @[FPU.scala 631:23]
    node _T_898 = not(mem_ctrl_single) @[FPU.scala 627:65]
    node _T_899 = and(mem_ctrl_fma, _T_898) @[FPU.scala 627:62]
    node _T_902 = mux(_T_899, UInt<3>("h4"), UInt<3>("h0")) @[FPU.scala 631:23]
    node _T_903 = or(mem_ctrl_fastpipe, mem_ctrl_fromint) @[FPU.scala 631:78]
    node _GEN_160 = pad(_T_903, 2) @[FPU.scala 631:78]
    node _T_904 = or(_GEN_160, _T_896) @[FPU.scala 631:78]
    node _GEN_161 = pad(_T_904, 3) @[FPU.scala 631:78]
    node memLatencyMask = or(_GEN_161, _T_902) @[FPU.scala 631:78]
    reg wen : UInt<3>, clock with :
      reset => (UInt<1>("h0"), wen) @[FPU.scala 645:16]
    reg wbInfo_0_rd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), wbInfo_0_rd) @[FPU.scala 646:19]
    reg wbInfo_0_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_0_single) @[FPU.scala 646:19]
    reg wbInfo_0_cp : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_0_cp) @[FPU.scala 646:19]
    reg wbInfo_0_pipeid : UInt<2>, clock with :
      reset => (UInt<1>("h0"), wbInfo_0_pipeid) @[FPU.scala 646:19]
    reg wbInfo_1_rd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), wbInfo_1_rd) @[FPU.scala 646:19]
    reg wbInfo_1_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_1_single) @[FPU.scala 646:19]
    reg wbInfo_1_cp : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_1_cp) @[FPU.scala 646:19]
    reg wbInfo_1_pipeid : UInt<2>, clock with :
      reset => (UInt<1>("h0"), wbInfo_1_pipeid) @[FPU.scala 646:19]
    reg wbInfo_2_rd : UInt<5>, clock with :
      reset => (UInt<1>("h0"), wbInfo_2_rd) @[FPU.scala 646:19]
    reg wbInfo_2_single : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_2_single) @[FPU.scala 646:19]
    reg wbInfo_2_cp : UInt<1>, clock with :
      reset => (UInt<1>("h0"), wbInfo_2_cp) @[FPU.scala 646:19]
    reg wbInfo_2_pipeid : UInt<2>, clock with :
      reset => (UInt<1>("h0"), wbInfo_2_pipeid) @[FPU.scala 646:19]
    node _T_966 = or(mem_ctrl_fma, mem_ctrl_fastpipe) @[FPU.scala 647:48]
    node _T_967 = or(_T_966, mem_ctrl_fromint) @[FPU.scala 647:69]
    node mem_wen = and(mem_reg_valid, _T_967) @[FPU.scala 647:31]
    node _T_970 = mux(ex_ctrl_fastpipe, UInt<2>("h2"), UInt<2>("h0")) @[FPU.scala 631:23]
    node _T_973 = mux(ex_ctrl_fromint, UInt<2>("h2"), UInt<2>("h0")) @[FPU.scala 631:23]
    node _T_974 = and(ex_ctrl_fma, ex_ctrl_single) @[FPU.scala 622:56]
    node _T_977 = mux(_T_974, UInt<3>("h4"), UInt<3>("h0")) @[FPU.scala 631:23]
    skip
    node _T_980 = and(ex_ctrl_fma, _T_885) @[FPU.scala 627:62]
    node _T_983 = mux(_T_980, UInt<4>("h8"), UInt<4>("h0")) @[FPU.scala 631:23]
    node _T_984 = or(_T_970, _T_973) @[FPU.scala 631:78]
    node _GEN_162 = pad(_T_984, 3) @[FPU.scala 631:78]
    node _T_985 = or(_GEN_162, _T_977) @[FPU.scala 631:78]
    node _GEN_163 = pad(_T_985, 4) @[FPU.scala 631:78]
    node _T_986 = or(_GEN_163, _T_983) @[FPU.scala 631:78]
    node _GEN_164 = pad(memLatencyMask, 4) @[FPU.scala 648:62]
    node _T_987 = and(_GEN_164, _T_986) @[FPU.scala 648:62]
    node _T_989 = neq(_T_987, UInt<4>("h0")) @[FPU.scala 648:89]
    node _T_990 = and(mem_wen, _T_989) @[FPU.scala 648:43]
    node _T_993 = mux(ex_ctrl_fastpipe, UInt<3>("h4"), UInt<3>("h0")) @[FPU.scala 631:23]
    node _T_996 = mux(ex_ctrl_fromint, UInt<3>("h4"), UInt<3>("h0")) @[FPU.scala 631:23]
    skip
    node _T_1000 = mux(_T_974, UInt<4>("h8"), UInt<4>("h0")) @[FPU.scala 631:23]
    skip
    skip
    node _T_1006 = mux(_T_980, UInt<5>("h10"), UInt<5>("h0")) @[FPU.scala 631:23]
    node _T_1007 = or(_T_993, _T_996) @[FPU.scala 631:78]
    node _GEN_165 = pad(_T_1007, 4) @[FPU.scala 631:78]
    node _T_1008 = or(_GEN_165, _T_1000) @[FPU.scala 631:78]
    node _GEN_166 = pad(_T_1008, 5) @[FPU.scala 631:78]
    node _T_1009 = or(_GEN_166, _T_1006) @[FPU.scala 631:78]
    node _GEN_167 = pad(wen, 5) @[FPU.scala 648:101]
    node _T_1010 = and(_GEN_167, _T_1009) @[FPU.scala 648:101]
    node _T_1012 = neq(_T_1010, UInt<5>("h0")) @[FPU.scala 648:128]
    node _T_1013 = or(_T_990, _T_1012) @[FPU.scala 648:93]
    reg write_port_busy : UInt<1>, clock with :
      reset => (UInt<1>("h0"), write_port_busy) @[Reg.scala 34:16]
    skip
    node _T_1015 = bits(wen, 1, 1) @[FPU.scala 651:14]
    node _GEN_98 = mux(_T_1015, wbInfo_1_rd, wbInfo_0_rd) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_99 = mux(_T_1015, wbInfo_1_single, wbInfo_0_single) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_100 = mux(_T_1015, wbInfo_1_cp, wbInfo_0_cp) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_101 = mux(_T_1015, wbInfo_1_pipeid, wbInfo_0_pipeid) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _T_1016 = bits(wen, 2, 2) @[FPU.scala 651:14]
    node _GEN_102 = mux(_T_1016, wbInfo_2_rd, wbInfo_1_rd) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_103 = mux(_T_1016, wbInfo_2_single, wbInfo_1_single) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_104 = mux(_T_1016, wbInfo_2_cp, wbInfo_1_cp) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _GEN_105 = mux(_T_1016, wbInfo_2_pipeid, wbInfo_1_pipeid) @[FPU.scala 651:21 FPU.scala 651:33 FPU.scala 646:19]
    node _T_1017 = shr(wen, 1) @[FPU.scala 653:14]
    skip
    skip
    node _GEN_168 = pad(_T_1017, 3) @[FPU.scala 656:23]
    node _T_1021 = or(_GEN_168, memLatencyMask) @[FPU.scala 656:23]
    node _GEN_106 = mux(_T_225, _T_1021, pad(_T_1017, 3)) @[FPU.scala 655:19 FPU.scala 656:11 FPU.scala 653:7]
    node _T_1023 = not(write_port_busy) @[FPU.scala 659:13]
    node _T_1024 = bits(memLatencyMask, 0, 0) @[FPU.scala 659:47]
    node _T_1025 = and(_T_1023, _T_1024) @[FPU.scala 659:30]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_1041 = mux(_T_899, UInt<2>("h3"), UInt<2>("h0")) @[FPU.scala 633:63]
    skip
    node _GEN_169 = pad(mem_ctrl_fromint, 2) @[FPU.scala 633:108]
    node _T_1043 = or(_GEN_169, _T_896) @[FPU.scala 633:108]
    node _T_1044 = or(_T_1043, _T_1041) @[FPU.scala 633:108]
    node _T_1045 = bits(mem_reg_inst, 11, 7) @[FPU.scala 663:37]
    node _GEN_107 = mux(_T_1025, mem_cp_valid, _GEN_100) @[FPU.scala 659:52 FPU.scala 660:22]
    node _GEN_108 = mux(_T_1025, mem_ctrl_single, _GEN_99) @[FPU.scala 659:52 FPU.scala 661:26]
    node _GEN_109 = mux(_T_1025, _T_1044, _GEN_101) @[FPU.scala 659:52 FPU.scala 662:26]
    node _GEN_110 = mux(_T_1025, _T_1045, _GEN_98) @[FPU.scala 659:52 FPU.scala 663:22]
    skip
    node _T_1048 = bits(memLatencyMask, 1, 1) @[FPU.scala 659:47]
    node _T_1049 = and(_T_1023, _T_1048) @[FPU.scala 659:30]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_111 = mux(_T_1049, mem_cp_valid, _GEN_104) @[FPU.scala 659:52 FPU.scala 660:22]
    node _GEN_112 = mux(_T_1049, mem_ctrl_single, _GEN_103) @[FPU.scala 659:52 FPU.scala 661:26]
    node _GEN_113 = mux(_T_1049, _T_1044, _GEN_105) @[FPU.scala 659:52 FPU.scala 662:26]
    node _GEN_114 = mux(_T_1049, _T_1045, _GEN_102) @[FPU.scala 659:52 FPU.scala 663:22]
    skip
    node _T_1072 = bits(memLatencyMask, 2, 2) @[FPU.scala 659:47]
    node _T_1073 = and(_T_1023, _T_1072) @[FPU.scala 659:30]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_115 = mux(_T_1073, mem_cp_valid, wbInfo_2_cp) @[FPU.scala 659:52 FPU.scala 660:22 FPU.scala 646:19]
    node _GEN_116 = mux(_T_1073, mem_ctrl_single, wbInfo_2_single) @[FPU.scala 659:52 FPU.scala 661:26 FPU.scala 646:19]
    node _GEN_117 = mux(_T_1073, _T_1044, wbInfo_2_pipeid) @[FPU.scala 659:52 FPU.scala 662:26 FPU.scala 646:19]
    node _GEN_118 = mux(_T_1073, _T_1045, wbInfo_2_rd) @[FPU.scala 659:52 FPU.scala 663:22 FPU.scala 646:19]
    node _GEN_119 = mux(mem_wen, _GEN_106, pad(_T_1017, 3)) @[FPU.scala 654:18 FPU.scala 653:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_1095 = and(wbInfo_0_pipeid, UInt<2>("h1")) @[Package.scala 18:26]
    node _T_1097 = geq(wbInfo_0_pipeid, UInt<2>("h2")) @[Package.scala 19:17]
    skip
    node _T_1101 = geq(_T_1095, UInt<2>("h1")) @[Package.scala 19:17]
    node _T_1102 = mux(_T_1101, FPUFMAPipe.io_out_bits_data, sfma.io_out_bits_data) @[Package.scala 19:12]
    skip
    skip
    node _T_1107 = mux(_T_1101, ifpu.io_out_bits_data, fpmu.io_out_bits_data) @[Package.scala 19:12]
    node _T_1108 = mux(_T_1097, _T_1102, _T_1107) @[Package.scala 19:12]
    reg _T_1207 : UInt<65>, clock with :
      reset => (UInt<1>("h0"), _T_1207) @[FPU.scala 720:35]
    node divSqrt_wdata = mux(divSqrt_single, pad(RecFNToRecFN.io_out, 65), _T_1207) @[FPU.scala 749:25]
    skip
    node wdata0 = mux(divSqrt_wen, divSqrt_wdata, _T_1108) @[FPU.scala 669:19]
    node wsingle = mux(divSqrt_wen, divSqrt_single, wbInfo_0_single) @[FPU.scala 670:20]
    node _T_1109 = bits(wdata0, 32, 0) @[FPU.scala 673:36]
    node _GEN_172 = pad(_T_1109, 65) @[FPU.scala 673:44]
    node _T_1111 = or(_GEN_172, UInt<65>("he004000000000000")) @[FPU.scala 673:44]
    node wdata = mux(wsingle, _T_1111, wdata0) @[FPU.scala 673:19]
    skip
    skip
    skip
    skip
    node _T_1120 = mux(_T_1101, FPUFMAPipe.io_out_bits_exc, sfma.io_out_bits_exc) @[Package.scala 19:12]
    skip
    skip
    node _T_1125 = mux(_T_1101, ifpu.io_out_bits_exc, fpmu.io_out_bits_exc) @[Package.scala 19:12]
    node wexc = mux(_T_1097, _T_1120, _T_1125) @[Package.scala 19:12]
    node _T_1127 = not(wbInfo_0_cp) @[FPU.scala 676:10]
    node _T_1128 = bits(wen, 0, 0) @[FPU.scala 676:30]
    node _T_1129 = and(_T_1127, _T_1128) @[FPU.scala 676:24]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_1133 = and(wbInfo_0_cp, _T_1128) @[FPU.scala 689:22]
    skip
    skip
    skip
    node wb_toint_valid = and(wb_reg_valid, wb_ctrl_toint) @[FPU.scala 695:37]
    reg wb_toint_exc : UInt<5>, clock with :
      reset => (UInt<1>("h0"), wb_toint_exc) @[Reg.scala 34:16]
    skip
    node _T_1138 = or(wb_toint_valid, divSqrt_wen) @[FPU.scala 697:41]
    skip
    skip
    node _T_1142 = mux(wb_toint_valid, wb_toint_exc, UInt<5>("h0")) @[FPU.scala 699:8]
    reg _T_1205 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), _T_1205) @[FPU.scala 719:35]
    node _T_1223 = mux(divSqrt_single, RecFNToRecFN.io_exceptionFlags, UInt<5>("h0")) @[FPU.scala 750:48]
    node divSqrt_flags = or(_T_1205, _T_1223) @[FPU.scala 750:43]
    skip
    node _T_1144 = mux(divSqrt_wen, divSqrt_flags, UInt<5>("h0")) @[FPU.scala 700:8]
    node _T_1145 = or(_T_1142, _T_1144) @[FPU.scala 699:48]
    skip
    node _T_1148 = mux(_T_1128, wexc, UInt<5>("h0")) @[FPU.scala 701:8]
    skip
    node _T_1150 = or(mem_ctrl_div, mem_ctrl_sqrt) @[FPU.scala 703:51]
    node _T_1151 = and(mem_reg_valid, _T_1150) @[FPU.scala 703:34]
    node divSqrt_inReady = mux(DivSqrtRecF64.io_sqrtOp, DivSqrtRecF64.io_inReady_sqrt, DivSqrtRecF64.io_inReady_div) @[FPU.scala 723:27]
    skip
    node _T_1153 = not(divSqrt_inReady) @[FPU.scala 703:73]
    node _T_1155 = neq(wen, UInt<3>("h0")) @[FPU.scala 703:97]
    node _T_1156 = or(_T_1153, _T_1155) @[FPU.scala 703:90]
    node units_busy = and(_T_1151, _T_1156) @[FPU.scala 703:69]
    node _T_1157 = and(ex_reg_valid, ex_ctrl_wflags) @[FPU.scala 704:33]
    node _T_1158 = and(mem_reg_valid, mem_ctrl_wflags) @[FPU.scala 704:68]
    node _T_1159 = or(_T_1157, _T_1158) @[FPU.scala 704:51]
    skip
    node _T_1161 = or(_T_1159, wb_toint_valid) @[FPU.scala 704:87]
    skip
    node _T_1164 = or(_T_1161, _T_1155) @[FPU.scala 704:120]
    node _T_1165 = or(_T_1164, divSqrt_in_flight) @[FPU.scala 704:131]
    skip
    node _T_1168 = or(units_busy, write_port_busy) @[FPU.scala 705:29]
    skip
    node _T_1171 = not(wb_cp_valid) @[FPU.scala 708:36]
    node _T_1172 = and(wb_reg_valid, _T_1171) @[FPU.scala 708:33]
    skip
    skip
    skip
    node _T_1178 = or(_T_899, mem_ctrl_div) @[FPU.scala 708:96]
    skip
    reg _T_1180 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_1180) @[FPU.scala 708:55]
    skip
    skip
    skip
    node _T_1186 = eq(wbInfo_0_pipeid, UInt<2>("h3")) @[FPU.scala 709:99]
    skip
    node _T_1189 = and(_T_1128, _T_1186) @[FPU.scala 709:60]
    node _T_1190 = or(divSqrt_wen, _T_1189) @[FPU.scala 709:49]
    skip
    node _T_1192 = bits(io_inst, 14, 14) @[FPU.scala 712:27]
    node _T_1193 = bits(io_inst, 13, 12) @[FPU.scala 712:43]
    node _T_1195 = lt(_T_1193, UInt<2>("h3")) @[FPU.scala 712:51]
    node _T_1197 = geq(io_fcsr_rm, UInt<3>("h4")) @[FPU.scala 712:69]
    node _T_1198 = or(_T_1195, _T_1197) @[FPU.scala 712:55]
    skip
    reg _T_1203 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_1203) @[FPU.scala 718:25]
    node _T_1209 = or(DivSqrtRecF64.io_outValid_div, DivSqrtRecF64.io_outValid_sqrt) @[FPU.scala 724:52]
    skip
    skip
    node _T_1213 = not(divSqrt_in_flight) @[FPU.scala 725:79]
    skip
    node _T_1215 = and(DivSqrtRecF64.io_inValid, divSqrt_inReady) @[FPU.scala 731:30]
    skip
    node _GEN_140 = or(_T_1215, divSqrt_in_flight) @[FPU.scala 731:50 FPU.scala 732:25 FPU.scala 614:30]
    skip
    skip
    skip
    skip
    node _T_1219 = not(divSqrt_killed) @[FPU.scala 740:22]
    skip
    skip
    node _GEN_147 = mux(_T_1209, UInt<1>("h0"), _GEN_140) @[FPU.scala 739:29 FPU.scala 742:25]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_fcsr_flags_valid <= or(_T_1138, _T_1128) @[FPU.scala 697:56]
    io_fcsr_flags_bits <= or(_T_1145, _T_1148) @[FPU.scala 700:46]
    io_store_data <= fpiu.io_out_bits_store @[FPU.scala 591:17]
    io_toint_data <= fpiu.io_out_bits_toint @[FPU.scala 592:17]
    io_fcsr_rdy <= not(_T_1165) @[FPU.scala 704:18]
    io_nack_mem <= or(_T_1168, divSqrt_in_flight) @[FPU.scala 705:48]
    io_illegal_rm <= and(_T_1192, _T_1198) @[FPU.scala 712:32]
    io_dec_cmd <= fp_decoder.io_sigs_cmd @[FPU.scala 706:10]
    io_dec_ldst <= fp_decoder.io_sigs_ldst @[FPU.scala 706:10]
    io_dec_wen <= fp_decoder.io_sigs_wen @[FPU.scala 706:10]
    io_dec_ren1 <= fp_decoder.io_sigs_ren1 @[FPU.scala 706:10]
    io_dec_ren2 <= fp_decoder.io_sigs_ren2 @[FPU.scala 706:10]
    io_dec_ren3 <= fp_decoder.io_sigs_ren3 @[FPU.scala 706:10]
    io_dec_swap12 <= fp_decoder.io_sigs_swap12 @[FPU.scala 706:10]
    io_dec_swap23 <= fp_decoder.io_sigs_swap23 @[FPU.scala 706:10]
    io_dec_single <= fp_decoder.io_sigs_single @[FPU.scala 706:10]
    io_dec_fromint <= fp_decoder.io_sigs_fromint @[FPU.scala 706:10]
    io_dec_toint <= fp_decoder.io_sigs_toint @[FPU.scala 706:10]
    io_dec_fastpipe <= fp_decoder.io_sigs_fastpipe @[FPU.scala 706:10]
    io_dec_fma <= fp_decoder.io_sigs_fma @[FPU.scala 706:10]
    io_dec_div <= fp_decoder.io_sigs_div @[FPU.scala 706:10]
    io_dec_sqrt <= fp_decoder.io_sigs_sqrt @[FPU.scala 706:10]
    io_dec_wflags <= fp_decoder.io_sigs_wflags @[FPU.scala 706:10]
    io_sboard_set <= and(_T_1172, _T_1180) @[FPU.scala 708:49]
    io_sboard_clr <= and(_T_1171, _T_1190) @[FPU.scala 709:33]
    io_sboard_clra <= mux(divSqrt_wen, divSqrt_waddr, wbInfo_0_rd) @[FPU.scala 668:18]
    io_cp_req_ready <= not(ex_reg_valid) @[FPU.scala 693:22]
    io_cp_resp_valid <= or(_T_1133, _T_870) @[FPU.scala 689:33 FPU.scala 691:22]
    io_cp_resp_bits_data <= mux(_T_1133, wdata, pad(_GEN_95, 65)) @[FPU.scala 689:33 FPU.scala 690:26]
    io_cp_resp_bits_exc <= UInt<5>("h0")
    ex_reg_valid <= mux(reset, UInt<1>("h0"), io_valid) @[FPU.scala 509:25 FPU.scala 509:25 FPU.scala 509:25]
    ex_reg_inst <= mux(io_valid, io_inst, ex_reg_inst) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_reg_valid <= mux(reset, UInt<1>("h0"), _T_217) @[FPU.scala 513:26 FPU.scala 513:26 FPU.scala 513:26]
    mem_reg_inst <= mux(ex_reg_valid, ex_reg_inst, mem_reg_inst) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_cp_valid <= mux(reset, UInt<1>("h0"), ex_cp_valid) @[FPU.scala 515:25 FPU.scala 515:25 FPU.scala 515:25]
    wb_reg_valid <= mux(reset, UInt<1>("h0"), _T_227) @[FPU.scala 517:25 FPU.scala 517:25 FPU.scala 517:25]
    wb_cp_valid <= mux(reset, UInt<1>("h0"), mem_cp_valid) @[FPU.scala 518:24 FPU.scala 518:24 FPU.scala 518:24]
    skip
    skip
    fp_decoder.io_inst <= io_inst @[FPU.scala 521:22]
    _T_282_cmd <= mux(io_valid, fp_decoder.io_sigs_cmd, _T_282_cmd) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_ldst <= mux(io_valid, fp_decoder.io_sigs_ldst, _T_282_ldst) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    _T_282_ren3 <= mux(io_valid, fp_decoder.io_sigs_ren3, _T_282_ren3) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    _T_282_swap23 <= mux(io_valid, fp_decoder.io_sigs_swap23, _T_282_swap23) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_single <= mux(io_valid, fp_decoder.io_sigs_single, _T_282_single) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_fromint <= mux(io_valid, fp_decoder.io_sigs_fromint, _T_282_fromint) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_toint <= mux(io_valid, fp_decoder.io_sigs_toint, _T_282_toint) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_fastpipe <= mux(io_valid, fp_decoder.io_sigs_fastpipe, _T_282_fastpipe) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_fma <= mux(io_valid, fp_decoder.io_sigs_fma, _T_282_fma) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_div <= mux(io_valid, fp_decoder.io_sigs_div, _T_282_div) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_sqrt <= mux(io_valid, fp_decoder.io_sigs_sqrt, _T_282_sqrt) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_282_wflags <= mux(io_valid, fp_decoder.io_sigs_wflags, _T_282_wflags) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    mem_ctrl_single <= mux(req_valid, ex_ctrl_single, mem_ctrl_single) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_fromint <= mux(req_valid, ex_ctrl_fromint, mem_ctrl_fromint) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_toint <= mux(req_valid, ex_ctrl_toint, mem_ctrl_toint) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_fastpipe <= mux(req_valid, ex_ctrl_fastpipe, mem_ctrl_fastpipe) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_fma <= mux(req_valid, ex_ctrl_fma, mem_ctrl_fma) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_div <= mux(req_valid, ex_ctrl_div, mem_ctrl_div) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_sqrt <= mux(req_valid, ex_ctrl_sqrt, mem_ctrl_sqrt) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    mem_ctrl_wflags <= mux(req_valid, ex_ctrl_wflags, mem_ctrl_wflags) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    wb_ctrl_toint <= mux(mem_reg_valid, mem_ctrl_toint, wb_ctrl_toint) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    skip
    skip
    skip
    skip
    skip
    load_wb <= io_dmem_resp_val @[FPU.scala 534:20]
    load_wb_single <= mux(io_dmem_resp_val, _T_383, load_wb_single) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    load_wb_data <= mux(io_dmem_resp_val, io_dmem_resp_data, load_wb_data) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    load_wb_tag <= mux(io_dmem_resp_val, io_dmem_resp_tag, load_wb_tag) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    ex_ra1 <= mux(io_valid, _GEN_65, ex_ra1) @[FPU.scala 555:19 FPU.scala 554:53]
    ex_ra2 <= mux(io_valid, _GEN_67, ex_ra2) @[FPU.scala 555:19 FPU.scala 554:53]
    ex_ra3 <= mux(io_valid, _GEN_68, ex_ra3) @[FPU.scala 555:19 FPU.scala 554:53]
    sfma.clock <= clock
    sfma.reset <= reset
    sfma.io_in_valid <= and(_T_859, ex_ctrl_single) @[FPU.scala 585:48]
    sfma.io_in_bits_cmd <= mux(ex_cp_valid, io_cp_req_bits_cmd, ex_ctrl_cmd) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    sfma.io_in_bits_ren3 <= mux(ex_cp_valid, io_cp_req_bits_ren3, ex_ctrl_ren3) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    sfma.io_in_bits_swap23 <= mux(ex_cp_valid, io_cp_req_bits_swap23, ex_ctrl_swap23) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    sfma.io_in_bits_rm <= mux(ex_cp_valid, io_cp_req_bits_rm, ex_rm) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 571:10]
    skip
    sfma.io_in_bits_in1 <= mux(ex_cp_valid, io_cp_req_bits_in1, regfile._T_849.data) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 572:11]
    sfma.io_in_bits_in2 <= mux(ex_cp_valid, _GEN_72, regfile._T_853.data) @[FPU.scala 576:22 FPU.scala 573:11]
    sfma.io_in_bits_in3 <= mux(ex_cp_valid, _GEN_73, regfile._T_857.data) @[FPU.scala 576:22 FPU.scala 574:11]
    fpiu.clock <= clock
    skip
    fpiu.io_in_valid <= and(req_valid, _T_867) @[FPU.scala 589:33]
    fpiu.io_in_bits_cmd <= mux(ex_cp_valid, io_cp_req_bits_cmd, ex_ctrl_cmd) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    fpiu.io_in_bits_ldst <= mux(ex_cp_valid, io_cp_req_bits_ldst, ex_ctrl_ldst) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    fpiu.io_in_bits_single <= mux(ex_cp_valid, io_cp_req_bits_single, ex_ctrl_single) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    fpiu.io_in_bits_rm <= mux(ex_cp_valid, io_cp_req_bits_rm, ex_rm) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 571:10]
    fpiu.io_in_bits_typ <= mux(ex_cp_valid, io_cp_req_bits_typ, _T_858) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 575:11]
    fpiu.io_in_bits_in1 <= mux(ex_cp_valid, io_cp_req_bits_in1, regfile._T_849.data) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 572:11]
    fpiu.io_in_bits_in2 <= mux(ex_cp_valid, _GEN_72, regfile._T_853.data) @[FPU.scala 576:22 FPU.scala 573:11]
    skip
    ifpu.clock <= clock
    ifpu.reset <= reset
    ifpu.io_in_valid <= and(req_valid, ex_ctrl_fromint) @[FPU.scala 599:33]
    ifpu.io_in_bits_cmd <= mux(ex_cp_valid, io_cp_req_bits_cmd, ex_ctrl_cmd) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    ifpu.io_in_bits_single <= mux(ex_cp_valid, io_cp_req_bits_single, ex_ctrl_single) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    ifpu.io_in_bits_rm <= mux(ex_cp_valid, io_cp_req_bits_rm, ex_rm) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 571:10]
    ifpu.io_in_bits_typ <= mux(ex_cp_valid, io_cp_req_bits_typ, _T_858) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 575:11]
    ifpu.io_in_bits_in1 <= mux(ex_cp_valid, io_cp_req_bits_in1, pad(io_fromint_data, 65)) @[FPU.scala 601:29]
    skip
    skip
    fpmu.clock <= clock
    fpmu.reset <= reset
    fpmu.io_in_valid <= and(req_valid, ex_ctrl_fastpipe) @[FPU.scala 604:33]
    fpmu.io_in_bits_cmd <= mux(ex_cp_valid, io_cp_req_bits_cmd, ex_ctrl_cmd) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    fpmu.io_in_bits_single <= mux(ex_cp_valid, io_cp_req_bits_single, ex_ctrl_single) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    fpmu.io_in_bits_rm <= mux(ex_cp_valid, io_cp_req_bits_rm, ex_rm) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 571:10]
    skip
    fpmu.io_in_bits_in1 <= mux(ex_cp_valid, io_cp_req_bits_in1, regfile._T_849.data) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 572:11]
    fpmu.io_in_bits_in2 <= mux(ex_cp_valid, _GEN_72, regfile._T_853.data) @[FPU.scala 576:22 FPU.scala 573:11]
    skip
    fpmu.io_lt <= fpiu.io_out_bits_lt @[FPU.scala 606:14]
    divSqrt_wen <= and(_T_1209, _T_1219) @[FPU.scala 739:29 FPU.scala 740:19 FPU.scala 608:24]
    divSqrt_waddr <= mux(_T_1215, _T_1045, divSqrt_waddr) @[FPU.scala 731:50 FPU.scala 735:21 FPU.scala 610:26]
    divSqrt_single <= mux(_T_1215, mem_ctrl_single, divSqrt_single) @[FPU.scala 731:50 FPU.scala 734:22 FPU.scala 611:27]
    divSqrt_in_flight <= mux(reset, UInt<1>("h0"), _GEN_147) @[FPU.scala 614:30 FPU.scala 614:30]
    divSqrt_killed <= mux(_T_1215, killm, divSqrt_killed) @[FPU.scala 731:50 FPU.scala 733:22 FPU.scala 615:27]
    FPUFMAPipe.clock <= clock
    FPUFMAPipe.reset <= reset
    FPUFMAPipe.io_in_valid <= and(_T_859, _T_885) @[FPU.scala 625:56]
    FPUFMAPipe.io_in_bits_cmd <= mux(ex_cp_valid, io_cp_req_bits_cmd, ex_ctrl_cmd) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    FPUFMAPipe.io_in_bits_ren3 <= mux(ex_cp_valid, io_cp_req_bits_ren3, ex_ctrl_ren3) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    FPUFMAPipe.io_in_bits_swap23 <= mux(ex_cp_valid, io_cp_req_bits_swap23, ex_ctrl_swap23) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 570:7]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    FPUFMAPipe.io_in_bits_rm <= mux(ex_cp_valid, io_cp_req_bits_rm, ex_rm) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 571:10]
    skip
    FPUFMAPipe.io_in_bits_in1 <= mux(ex_cp_valid, io_cp_req_bits_in1, regfile._T_849.data) @[FPU.scala 576:22 FPU.scala 577:9 FPU.scala 572:11]
    FPUFMAPipe.io_in_bits_in2 <= mux(ex_cp_valid, _GEN_72, regfile._T_853.data) @[FPU.scala 576:22 FPU.scala 573:11]
    FPUFMAPipe.io_in_bits_in3 <= mux(ex_cp_valid, _GEN_73, regfile._T_857.data) @[FPU.scala 576:22 FPU.scala 574:11]
    wen <= mux(reset, UInt<3>("h0"), _GEN_119) @[FPU.scala 645:16 FPU.scala 645:16]
    wbInfo_0_rd <= mux(mem_wen, _GEN_110, _GEN_98) @[FPU.scala 654:18]
    wbInfo_0_single <= mux(mem_wen, _GEN_108, _GEN_99) @[FPU.scala 654:18]
    wbInfo_0_cp <= mux(mem_wen, _GEN_107, _GEN_100) @[FPU.scala 654:18]
    wbInfo_0_pipeid <= mux(mem_wen, _GEN_109, _GEN_101) @[FPU.scala 654:18]
    wbInfo_1_rd <= mux(mem_wen, _GEN_114, _GEN_102) @[FPU.scala 654:18]
    wbInfo_1_single <= mux(mem_wen, _GEN_112, _GEN_103) @[FPU.scala 654:18]
    wbInfo_1_cp <= mux(mem_wen, _GEN_111, _GEN_104) @[FPU.scala 654:18]
    wbInfo_1_pipeid <= mux(mem_wen, _GEN_113, _GEN_105) @[FPU.scala 654:18]
    wbInfo_2_rd <= mux(mem_wen, _GEN_118, wbInfo_2_rd) @[FPU.scala 654:18 FPU.scala 646:19]
    wbInfo_2_single <= mux(mem_wen, _GEN_116, wbInfo_2_single) @[FPU.scala 654:18 FPU.scala 646:19]
    wbInfo_2_cp <= mux(mem_wen, _GEN_115, wbInfo_2_cp) @[FPU.scala 654:18 FPU.scala 646:19]
    wbInfo_2_pipeid <= mux(mem_wen, _GEN_117, wbInfo_2_pipeid) @[FPU.scala 654:18 FPU.scala 646:19]
    write_port_busy <= mux(req_valid, _T_1013, write_port_busy) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    wb_toint_exc <= mux(mem_ctrl_toint, fpiu.io_out_bits_exc, wb_toint_exc) @[Reg.scala 35:19 Reg.scala 35:23 Reg.scala 34:16]
    _T_1180 <= or(_T_1178, mem_ctrl_sqrt) @[FPU.scala 708:112]
    _T_1203 <= mux(_T_1215, DivSqrtRecF64.io_roundingMode, _T_1203) @[FPU.scala 731:50 FPU.scala 736:18 FPU.scala 718:25]
    _T_1205 <= mux(_T_1209, DivSqrtRecF64.io_exceptionFlags, _T_1205) @[FPU.scala 739:29 FPU.scala 743:28 FPU.scala 719:35]
    _T_1207 <= mux(_T_1209, DivSqrtRecF64.io_out, _T_1207) @[FPU.scala 739:29 FPU.scala 741:28 FPU.scala 720:35]
    DivSqrtRecF64.clock <= clock
    DivSqrtRecF64.reset <= reset
    DivSqrtRecF64.io_inValid <= and(_T_1151, _T_1213) @[FPU.scala 725:76]
    DivSqrtRecF64.io_sqrtOp <= mem_ctrl_sqrt @[FPU.scala 726:23]
    DivSqrtRecF64.io_a <= fpiu.io_as_double_in1 @[FPU.scala 727:18]
    DivSqrtRecF64.io_b <= fpiu.io_as_double_in2 @[FPU.scala 728:18]
    DivSqrtRecF64.io_roundingMode <= bits(fpiu.io_as_double_rm, 1, 0) @[FPU.scala 729:29]
    skip
    skip
    RecFNToRecFN.io_in <= _T_1207 @[FPU.scala 747:28]
    RecFNToRecFN.io_roundingMode <= _T_1203 @[FPU.scala 748:38]
    regfile._T_849.en <= UInt<1>("h1")
    regfile._T_849.addr <= ex_ra1
    regfile._T_849.clk <= clock
    regfile._T_853.en <= UInt<1>("h1")
    regfile._T_853.addr <= ex_ra2
    regfile._T_853.clk <= clock
    regfile._T_857.en <= UInt<1>("h1")
    regfile._T_857.addr <= ex_ra3
    regfile._T_857.clk <= clock
    regfile._T_782.en <= load_wb
    regfile._T_782.addr <= load_wb_tag
    regfile._T_782.mask <= UInt<1>("h1")
    regfile._T_782.data <= mux(load_wb_single, _T_779, _T_777)
    regfile._T_782.clk <= clock
    regfile._T_1131.en <= or(_T_1129, divSqrt_wen)
    regfile._T_1131.addr <= mux(divSqrt_wen, divSqrt_waddr, wbInfo_0_rd)
    regfile._T_1131.mask <= UInt<1>("h1")
    regfile._T_1131.data <= mux(wsingle, _T_1111, wdata0)
    regfile._T_1131.clk <= clock
