; 
(set-info :status unknown)
(declare-fun node_0x7fffddab8600 () (_ BitVec 1))
(declare-fun node_0x7fffddab9490 () (_ BitVec 1))
(declare-fun node_0x7fffddaba110 () (_ BitVec 1))
(declare-fun node_0x7fffddabcba0 () (_ BitVec 1))
(declare-fun node_0x7fffddabd870 () (_ BitVec 1))
(declare-fun node_0x7fffddac0470 () (_ BitVec 1))
(declare-fun node_0x7fffddac1110 () (_ BitVec 1))
(declare-fun node_0x7fffddac1e40 () (_ BitVec 1))
(declare-fun ccso_node_0x7fffddabd9c0 () (_ BitVec 64))
(declare-fun node_0x7fffddae4f20 () (_ BitVec 64))
(declare-fun ccso_node_0x7fffddadcb30 () (_ BitVec 64))
(declare-fun carg_node_0x7fffddab7970 () (_ BitVec 64))
(declare-fun node_0x7fffddac6a40 () (_ BitVec 1))
(declare-fun ieq_0x7fffddadcd00 () (_ BitVec 1))
(declare-fun node_0x7fffddad93c0 () (_ BitVec 64))
(declare-fun node_0x7fffddad6ad0 () (_ BitVec 64))
(declare-fun iule_0x7fffddad9790 () (_ BitVec 1))
(declare-fun iult_0x7fffddada500 () (_ BitVec 1))
(declare-fun node_0x7fffddada0e0 () (_ BitVec 64))
(declare-fun node_0x7fffddad9b60 () (_ BitVec 64))
(declare-fun udiv_0x7fffddada280 () (_ BitVec 64))
(declare-fun iult_0x7fffddadafc0 () (_ BitVec 1))
(declare-fun ccso_node_0x7fffddadaad0 () (_ BitVec 32))
(declare-fun sext_0x7fffddadadc0 () (_ BitVec 64))
(declare-fun node_0x7fffddadac50 () (_ BitVec 64))
(declare-fun sub_0x7fffddad9cd0 () (_ BitVec 64))
(declare-fun mul_0x7fffddad6c70 () (_ BitVec 64))
(declare-fun carg_node_0x7fffddab8200 () (_ BitVec 64))
(declare-fun carg_node_0x7fffddab8000 () (_ BitVec 64))
(declare-fun mul_0x7fffddad9560 () (_ BitVec 64))
(declare-fun carg_node_0x7fffddab7ea0 () (_ BitVec 64))
(declare-fun iult_0x7fffddad8840 () (_ BitVec 1))
(declare-fun node_0x7fffddad8440 () (_ BitVec 64))
(declare-fun udiv_0x7fffddad85b0 () (_ BitVec 64))
(declare-fun and_0x7fffddad8130 () (_ BitVec 1))
(declare-fun iugt_0x7fffddad7de0 () (_ BitVec 1))
(declare-fun node_0x7fffddad7c40 () (_ BitVec 1))
(declare-fun node_0x7fffddad7870 () (_ BitVec 1))
(declare-fun or_0x7fffddad7a10 () (_ BitVec 1))
(declare-fun iuge_0x7fffddad7540 () (_ BitVec 1))
(declare-fun node_0x7fffddad73c0 () (_ BitVec 1))
(declare-fun node_0x7fffddad6ea0 () (_ BitVec 1))
(declare-fun iuge_0x7fffddad7040 () (_ BitVec 1))
(declare-fun ieq_0x7fffddad36c0 () (_ BitVec 1))
(declare-fun iult_0x7fffddad6040 () (_ BitVec 1))
(declare-fun node_0x7fffddad5c40 () (_ BitVec 64))
(declare-fun udiv_0x7fffddad5de0 () (_ BitVec 64))
(declare-fun and_0x7fffddad57d0 () (_ BitVec 1))
(declare-fun iugt_0x7fffddad5470 () (_ BitVec 1))
(declare-fun node_0x7fffddad4ec0 () (_ BitVec 1))
(declare-fun node_0x7fffddad49d0 () (_ BitVec 1))
(declare-fun or_0x7fffddad4b50 () (_ BitVec 1))
(declare-fun iuge_0x7fffddad4680 () (_ BitVec 1))
(declare-fun node_0x7fffddad44e0 () (_ BitVec 1))
(declare-fun node_0x7fffddad3e10 () (_ BitVec 1))
(declare-fun iuge_0x7fffddad4190 () (_ BitVec 1))
(declare-fun return_node_0x7fffddab83a0 () (_ BitVec 64))
(assert
 (let (($x37 (= node_0x7fffddab8600 (_ bv1 1))))
 (let (($x38 (not $x37)))
 (let (($x35 (= node_0x7fffddab9490 (_ bv1 1))))
 (let (($x49 (and $x35 $x38)))
 (let (($x48 (= node_0x7fffddaba110 (_ bv1 1))))
 (let (($x80 (not $x48)))
 (let (($x82 (or (and (not $x35) $x38) (and $x80 $x49))))
 (let (($x33 (= node_0x7fffddabcba0 (_ bv1 1))))
 (let (($x104 (and $x33 $x82)))
 (let (($x103 (= node_0x7fffddabd870 (_ bv1 1))))
 (let (($x131 (not $x103)))
 (let (($x133 (or (and (not $x33) $x82) (and $x131 $x104))))
 (let (($x31 (= node_0x7fffddac0470 (_ bv1 1))))
 (let (($x153 (and $x31 $x133)))
 (let (($x152 (= node_0x7fffddac1110 (_ bv1 1))))
 (let (($x182 (and $x152 $x153)))
 (let (($x181 (= node_0x7fffddac1e40 (_ bv1 1))))
 (and $x181 $x182)))))))))))))))))))
(assert
 (let (($x97758 (= node_0x7fffddae4f20 (_ bv0 64))))
 (let (($x254 (= node_0x7fffddae4f20 ccso_node_0x7fffddadcb30)))
 (let (($x97756 (= node_0x7fffddae4f20 carg_node_0x7fffddab7970)))
 (let (($x97734 (= node_0x7fffddae4f20 ccso_node_0x7fffddabd9c0)))
 (let (($x29 (= node_0x7fffddac6a40 (_ bv1 1))))
 (let (($x37 (= node_0x7fffddab8600 (_ bv1 1))))
 (let (($x38 (not $x37)))
 (let (($x35 (= node_0x7fffddab9490 (_ bv1 1))))
 (let (($x49 (and $x35 $x38)))
 (let (($x48 (= node_0x7fffddaba110 (_ bv1 1))))
 (let (($x80 (not $x48)))
 (let (($x82 (or (and (not $x35) $x38) (and $x80 $x49))))
 (let (($x33 (= node_0x7fffddabcba0 (_ bv1 1))))
 (let (($x104 (and $x33 $x82)))
 (let (($x103 (= node_0x7fffddabd870 (_ bv1 1))))
 (let (($x131 (not $x103)))
 (let (($x133 (or (and (not $x33) $x82) (and $x131 $x104))))
 (let (($x31 (= node_0x7fffddac0470 (_ bv1 1))))
 (let (($x153 (and $x31 $x133)))
 (let (($x152 (= node_0x7fffddac1110 (_ bv1 1))))
 (let (($x182 (and $x152 $x153)))
 (let (($x207 (or (and (not $x31) $x133) (and (not $x152) $x153) (and (not (= node_0x7fffddac1e40 (_ bv1 1))) $x182))))
 (let (($x70 (= node_0x7fffddac6a40 ieq_0x7fffddadcd00)))
 (let (($x226 (= ieq_0x7fffddadcd00 (ite (= ccso_node_0x7fffddadcb30 (_ bv0 64)) (_ bv1 1) (_ bv0 1)))))
 (let (($x158 (bvule node_0x7fffddad6ad0 node_0x7fffddad93c0)))
 (let ((?x159 (ite $x158 (_ bv1 1) (_ bv0 1))))
 (let (($x160 (= iule_0x7fffddad9790 ?x159)))
 (let (($x189 (= iult_0x7fffddada500 (ite (bvult node_0x7fffddad9b60 node_0x7fffddada0e0) (_ bv1 1) (_ bv0 1)))))
 (let (($x203 (or (or (= node_0x7fffddad93c0 (_ bv0 64)) (= (_ bv2 64) (_ bv0 64))) (and (distinct udiv_0x7fffddada280 (_ bv0 64)) true))))
 (let (($x204 (and (= udiv_0x7fffddada280 (bvudiv node_0x7fffddad93c0 (_ bv2 64))) $x203)))
 (let (($x274 (= node_0x7fffddada0e0 udiv_0x7fffddada280)))
 (let (($x218 (= sext_0x7fffddadadc0 ((_ sign_extend 32) ccso_node_0x7fffddadaad0))))
 (let (($x369 (= node_0x7fffddadac50 sext_0x7fffddadadc0)))
 (let (($x213 (= iult_0x7fffddadafc0 (ite (bvult node_0x7fffddad9b60 node_0x7fffddadac50) (_ bv1 1) (_ bv0 1)))))
 (let (($x370 (= node_0x7fffddad9b60 sub_0x7fffddad9cd0)))
 (let (($x165 (= carg_node_0x7fffddab8200 (_ bv0 64))))
 (let (($x95 (= carg_node_0x7fffddab8000 (_ bv0 64))))
 (let (($x166 (or $x95 $x165)))
 (let ((?x163 (bvmul carg_node_0x7fffddab8000 carg_node_0x7fffddab8200)))
 (let (($x164 (= mul_0x7fffddad6c70 ?x163)))
 (let (($x169 (and $x164 (or $x166 (and (distinct mul_0x7fffddad6c70 (_ bv0 64)) true)))))
 (let (($x367 (= node_0x7fffddad6ad0 mul_0x7fffddad6c70)))
 (let (($x193 (= sub_0x7fffddad9cd0 (bvsub node_0x7fffddad93c0 node_0x7fffddad6ad0))))
 (let (($x144 (= carg_node_0x7fffddab7ea0 (_ bv0 64))))
 (let (($x174 (or $x144 $x165)))
 (let (($x173 (= mul_0x7fffddad9560 (bvmul carg_node_0x7fffddab7ea0 carg_node_0x7fffddab8200))))
 (let (($x177 (and $x173 (or $x174 (and (distinct mul_0x7fffddad9560 (_ bv0 64)) true)))))
 (let (($x326 (= node_0x7fffddad93c0 mul_0x7fffddad9560)))
 (let (($x184 (= node_0x7fffddabd870 iult_0x7fffddad8840)))
 (let (($x139 (= iult_0x7fffddad8840 (ite (bvult node_0x7fffddad8440 carg_node_0x7fffddab8200) (_ bv1 1) (_ bv0 1)))))
 (let (($x148 (and (= udiv_0x7fffddad85b0 (bvudiv (_ bv18446744073709551615 64) carg_node_0x7fffddab7ea0)) (or (or (= (_ bv18446744073709551615 64) (_ bv0 64)) $x144) (and (distinct udiv_0x7fffddad85b0 (_ bv0 64)) true)))))
 (let (($x333 (= node_0x7fffddad8440 udiv_0x7fffddad85b0)))
 (let (($x215 (= node_0x7fffddabcba0 and_0x7fffddad8130)))
 (let (($x130 (= iugt_0x7fffddad7de0 (ite (bvugt carg_node_0x7fffddab7ea0 (_ bv0 64)) (_ bv1 1) (_ bv0 1)))))
 (let (($x222 (= node_0x7fffddad7c40 iugt_0x7fffddad7de0)))
 (let (($x110 (= and_0x7fffddad8130 (bvand node_0x7fffddad7870 node_0x7fffddad7c40))))
 (let (($x318 (= node_0x7fffddad7870 or_0x7fffddad7a10)))
 (let ((?x73 (ite (bvuge carg_node_0x7fffddab8200 (_ bv4294967296 64)) (_ bv1 1) (_ bv0 1))))
 (let (($x125 (= iuge_0x7fffddad7540 ?x73)))
 (let (($x116 (= or_0x7fffddad7a10 (bvor node_0x7fffddad6ea0 node_0x7fffddad73c0))))
 (let (($x122 (= iuge_0x7fffddad7040 (ite (bvuge carg_node_0x7fffddab7ea0 (_ bv4294967296 64)) (_ bv1 1) (_ bv0 1)))))
 (let (($x364 (= node_0x7fffddad6ea0 iuge_0x7fffddad7040)))
 (let (($x381 (or $x38 $x97734)))
 (let (($x42 (= carg_node_0x7fffddab7970 (_ bv0 64))))
 (let ((?x43 (ite $x42 (_ bv1 1) (_ bv0 1))))
 (let (($x44 (= ieq_0x7fffddad36c0 ?x43)))
 (let (($x248 (= node_0x7fffddab8600 ieq_0x7fffddad36c0)))
 (let (($x360 (= node_0x7fffddaba110 iult_0x7fffddad6040)))
 (let (($x88 (= iult_0x7fffddad6040 (ite (bvult node_0x7fffddad5c40 carg_node_0x7fffddab8200) (_ bv1 1) (_ bv0 1)))))
 (let (($x99 (and (= udiv_0x7fffddad5de0 (bvudiv (_ bv18446744073709551615 64) carg_node_0x7fffddab8000)) (or (or (= (_ bv18446744073709551615 64) (_ bv0 64)) $x95) (and (distinct udiv_0x7fffddad5de0 (_ bv0 64)) true)))))
 (let (($x239 (= node_0x7fffddad5c40 udiv_0x7fffddad5de0)))
 (let (($x293 (= node_0x7fffddab9490 and_0x7fffddad57d0)))
 (let (($x79 (= iugt_0x7fffddad5470 (ite (bvugt carg_node_0x7fffddab8000 (_ bv0 64)) (_ bv1 1) (_ bv0 1)))))
 (let (($x358 (= node_0x7fffddad4ec0 iugt_0x7fffddad5470)))
 (let (($x55 (= and_0x7fffddad57d0 (bvand node_0x7fffddad49d0 node_0x7fffddad4ec0))))
 (let (($x342 (= node_0x7fffddad49d0 or_0x7fffddad4b50)))
 (let (($x74 (= iuge_0x7fffddad4680 ?x73)))
 (let (($x245 (= node_0x7fffddad44e0 iuge_0x7fffddad4680)))
 (let ((?x60 (bvor node_0x7fffddad3e10 node_0x7fffddad44e0)))
 (let (($x61 (= or_0x7fffddad4b50 ?x60)))
 (let (($x68 (= iuge_0x7fffddad4190 (ite (bvuge carg_node_0x7fffddab8000 (_ bv4294967296 64)) (_ bv1 1) (_ bv0 1)))))
 (let (($x329 (= node_0x7fffddad3e10 iuge_0x7fffddad4190)))
 (and $x329 $x68 $x61 $x245 $x74 $x342 $x55 $x358 $x79 $x293 $x239 $x99 $x88 $x360 $x248 $x44 $x381 (or (not (and $x48 $x49)) $x97758) (or (not (and $x103 $x104)) $x97758) $x364 $x122 $x116 (= node_0x7fffddad73c0 iuge_0x7fffddad7540) $x125 $x318 $x110 $x222 $x130 $x215 $x333 $x148 $x139 $x184 (or (not (and (= node_0x7fffddac1e40 (_ bv1 1)) $x182)) $x97756) $x326 $x177 $x193 $x367 $x169 $x370 $x213 $x369 $x218 (= node_0x7fffddac1e40 iult_0x7fffddadafc0) $x274 $x204 $x189 (= node_0x7fffddac1110 iult_0x7fffddada500) (= node_0x7fffddac0470 iule_0x7fffddad9790) $x160 (or (not (and (not $x29) $x207)) $x254) $x226 (and (distinct ccso_node_0x7fffddadcb30 (_ bv0 64)) true) $x70 (or (not (and $x207 $x29)) $x97758) (or $x97734 $x97758 $x97758 $x97756 $x254 $x97758) (and (distinct ccso_node_0x7fffddabd9c0 (_ bv0 64)) true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x408 (= return_node_0x7fffddab83a0 node_0x7fffddae4f20)))
 (and $x408 $x408)))
(assert
 (and (distinct return_node_0x7fffddab83a0 (_ bv0 64)) true))
(maximize node_0x7fffddab8600)
(minimize node_0x7fffddab8600)
(maximize node_0x7fffddab9490)
(minimize node_0x7fffddab9490)
(maximize node_0x7fffddaba110)
(minimize node_0x7fffddaba110)
(maximize node_0x7fffddabcba0)
(minimize node_0x7fffddabcba0)
(maximize node_0x7fffddabd870)
(minimize node_0x7fffddabd870)
(maximize node_0x7fffddac0470)
(minimize node_0x7fffddac0470)
(maximize node_0x7fffddac1110)
(minimize node_0x7fffddac1110)
(maximize node_0x7fffddac1e40)
(minimize node_0x7fffddac1e40)
(maximize ccso_node_0x7fffddabd9c0)
(minimize ccso_node_0x7fffddabd9c0)
(maximize node_0x7fffddae4f20)
(minimize node_0x7fffddae4f20)
(maximize ccso_node_0x7fffddadcb30)
(minimize ccso_node_0x7fffddadcb30)
(maximize carg_node_0x7fffddab7970)
(minimize carg_node_0x7fffddab7970)
(maximize node_0x7fffddac6a40)
(minimize node_0x7fffddac6a40)
(maximize ieq_0x7fffddadcd00)
(minimize ieq_0x7fffddadcd00)
(maximize node_0x7fffddad93c0)
(minimize node_0x7fffddad93c0)
(maximize node_0x7fffddad6ad0)
(minimize node_0x7fffddad6ad0)
(maximize iule_0x7fffddad9790)
(minimize iule_0x7fffddad9790)
(maximize iult_0x7fffddada500)
(minimize iult_0x7fffddada500)
(maximize node_0x7fffddada0e0)
(minimize node_0x7fffddada0e0)
(maximize node_0x7fffddad9b60)
(minimize node_0x7fffddad9b60)
(maximize udiv_0x7fffddada280)
(minimize udiv_0x7fffddada280)
(maximize iult_0x7fffddadafc0)
(minimize iult_0x7fffddadafc0)
(maximize ccso_node_0x7fffddadaad0)
(minimize ccso_node_0x7fffddadaad0)
(maximize sext_0x7fffddadadc0)
(minimize sext_0x7fffddadadc0)
(maximize node_0x7fffddadac50)
(minimize node_0x7fffddadac50)
(maximize sub_0x7fffddad9cd0)
(minimize sub_0x7fffddad9cd0)
(maximize mul_0x7fffddad6c70)
(minimize mul_0x7fffddad6c70)
(maximize carg_node_0x7fffddab8200)
(minimize carg_node_0x7fffddab8200)
(maximize carg_node_0x7fffddab8000)
(minimize carg_node_0x7fffddab8000)
(maximize mul_0x7fffddad9560)
(minimize mul_0x7fffddad9560)
(check-sat)
(get-objectives)