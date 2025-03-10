; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+v -verify-machineinstrs < %s \
; RUN:   | FileCheck %s --check-prefixes=CHECK,RV32
; RUN: llc -mtriple=riscv64 -mattr=+v -verify-machineinstrs < %s \
; RUN:   | FileCheck %s --check-prefixes=CHECK,RV64

declare <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8>, <2 x i8>)

define <2 x i8> @uadd_v2i8_vv(<2 x i8> %va, <2 x i8> %b) {
; CHECK-LABEL: uadd_v2i8_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e8, mf8, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %va, <2 x i8> %b)
  ret <2 x i8> %v
}

define <2 x i8> @uadd_v2i8_vx(<2 x i8> %va, i8 %b) {
; CHECK-LABEL: uadd_v2i8_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e8, mf8, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <2 x i8> poison, i8 %b, i32 0
  %vb = shufflevector <2 x i8> %elt.head, <2 x i8> poison, <2 x i32> zeroinitializer
  %v = call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %va, <2 x i8> %vb)
  ret <2 x i8> %v
}

define <2 x i8> @uadd_v2i8_vi(<2 x i8> %va) {
; CHECK-LABEL: uadd_v2i8_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e8, mf8, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %va, <2 x i8> splat (i8 8))
  ret <2 x i8> %v
}

declare <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8>, <4 x i8>)

define <4 x i8> @uadd_v4i8_vv(<4 x i8> %va, <4 x i8> %b) {
; CHECK-LABEL: uadd_v4i8_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e8, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8> %va, <4 x i8> %b)
  ret <4 x i8> %v
}

define <4 x i8> @uadd_v4i8_vx(<4 x i8> %va, i8 %b) {
; CHECK-LABEL: uadd_v4i8_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e8, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <4 x i8> poison, i8 %b, i32 0
  %vb = shufflevector <4 x i8> %elt.head, <4 x i8> poison, <4 x i32> zeroinitializer
  %v = call <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8> %va, <4 x i8> %vb)
  ret <4 x i8> %v
}

define <4 x i8> @uadd_v4i8_vi(<4 x i8> %va) {
; CHECK-LABEL: uadd_v4i8_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e8, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8> %va, <4 x i8> splat (i8 8))
  ret <4 x i8> %v
}

declare <8 x i8> @llvm.uadd.sat.v8i8(<8 x i8>, <8 x i8>)

define <8 x i8> @uadd_v8i8_vv(<8 x i8> %va, <8 x i8> %b) {
; CHECK-LABEL: uadd_v8i8_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e8, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <8 x i8> @llvm.uadd.sat.v8i8(<8 x i8> %va, <8 x i8> %b)
  ret <8 x i8> %v
}

define <8 x i8> @uadd_v8i8_vx(<8 x i8> %va, i8 %b) {
; CHECK-LABEL: uadd_v8i8_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e8, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <8 x i8> poison, i8 %b, i32 0
  %vb = shufflevector <8 x i8> %elt.head, <8 x i8> poison, <8 x i32> zeroinitializer
  %v = call <8 x i8> @llvm.uadd.sat.v8i8(<8 x i8> %va, <8 x i8> %vb)
  ret <8 x i8> %v
}

define <8 x i8> @uadd_v8i8_vi(<8 x i8> %va) {
; CHECK-LABEL: uadd_v8i8_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e8, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <8 x i8> @llvm.uadd.sat.v8i8(<8 x i8> %va, <8 x i8> splat (i8 8))
  ret <8 x i8> %v
}

declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>)

define <16 x i8> @uadd_v16i8_vv(<16 x i8> %va, <16 x i8> %b) {
; CHECK-LABEL: uadd_v16i8_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e8, m1, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %va, <16 x i8> %b)
  ret <16 x i8> %v
}

define <16 x i8> @uadd_v16i8_vx(<16 x i8> %va, i8 %b) {
; CHECK-LABEL: uadd_v16i8_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e8, m1, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <16 x i8> poison, i8 %b, i32 0
  %vb = shufflevector <16 x i8> %elt.head, <16 x i8> poison, <16 x i32> zeroinitializer
  %v = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %va, <16 x i8> %vb)
  ret <16 x i8> %v
}

define <16 x i8> @uadd_v16i8_vi(<16 x i8> %va) {
; CHECK-LABEL: uadd_v16i8_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e8, m1, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %va, <16 x i8> splat (i8 8))
  ret <16 x i8> %v
}

declare <2 x i16> @llvm.uadd.sat.v2i16(<2 x i16>, <2 x i16>)

define <2 x i16> @uadd_v2i16_vv(<2 x i16> %va, <2 x i16> %b) {
; CHECK-LABEL: uadd_v2i16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e16, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <2 x i16> @llvm.uadd.sat.v2i16(<2 x i16> %va, <2 x i16> %b)
  ret <2 x i16> %v
}

define <2 x i16> @uadd_v2i16_vx(<2 x i16> %va, i16 %b) {
; CHECK-LABEL: uadd_v2i16_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e16, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <2 x i16> poison, i16 %b, i32 0
  %vb = shufflevector <2 x i16> %elt.head, <2 x i16> poison, <2 x i32> zeroinitializer
  %v = call <2 x i16> @llvm.uadd.sat.v2i16(<2 x i16> %va, <2 x i16> %vb)
  ret <2 x i16> %v
}

define <2 x i16> @uadd_v2i16_vi(<2 x i16> %va) {
; CHECK-LABEL: uadd_v2i16_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e16, mf4, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <2 x i16> @llvm.uadd.sat.v2i16(<2 x i16> %va, <2 x i16> splat (i16 8))
  ret <2 x i16> %v
}

declare <4 x i16> @llvm.uadd.sat.v4i16(<4 x i16>, <4 x i16>)

define <4 x i16> @uadd_v4i16_vv(<4 x i16> %va, <4 x i16> %b) {
; CHECK-LABEL: uadd_v4i16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e16, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <4 x i16> @llvm.uadd.sat.v4i16(<4 x i16> %va, <4 x i16> %b)
  ret <4 x i16> %v
}

define <4 x i16> @uadd_v4i16_vx(<4 x i16> %va, i16 %b) {
; CHECK-LABEL: uadd_v4i16_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e16, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <4 x i16> poison, i16 %b, i32 0
  %vb = shufflevector <4 x i16> %elt.head, <4 x i16> poison, <4 x i32> zeroinitializer
  %v = call <4 x i16> @llvm.uadd.sat.v4i16(<4 x i16> %va, <4 x i16> %vb)
  ret <4 x i16> %v
}

define <4 x i16> @uadd_v4i16_vi(<4 x i16> %va) {
; CHECK-LABEL: uadd_v4i16_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e16, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <4 x i16> @llvm.uadd.sat.v4i16(<4 x i16> %va, <4 x i16> splat (i16 8))
  ret <4 x i16> %v
}

declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>)

define <8 x i16> @uadd_v8i16_vv(<8 x i16> %va, <8 x i16> %b) {
; CHECK-LABEL: uadd_v8i16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e16, m1, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %va, <8 x i16> %b)
  ret <8 x i16> %v
}

define <8 x i16> @uadd_v8i16_vx(<8 x i16> %va, i16 %b) {
; CHECK-LABEL: uadd_v8i16_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e16, m1, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <8 x i16> poison, i16 %b, i32 0
  %vb = shufflevector <8 x i16> %elt.head, <8 x i16> poison, <8 x i32> zeroinitializer
  %v = call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %va, <8 x i16> %vb)
  ret <8 x i16> %v
}

define <8 x i16> @uadd_v8i16_vi(<8 x i16> %va) {
; CHECK-LABEL: uadd_v8i16_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e16, m1, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %va, <8 x i16> splat (i16 8))
  ret <8 x i16> %v
}

declare <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16>, <16 x i16>)

define <16 x i16> @uadd_v16i16_vv(<16 x i16> %va, <16 x i16> %b) {
; CHECK-LABEL: uadd_v16i16_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e16, m2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %va, <16 x i16> %b)
  ret <16 x i16> %v
}

define <16 x i16> @uadd_v16i16_vx(<16 x i16> %va, i16 %b) {
; CHECK-LABEL: uadd_v16i16_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e16, m2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <16 x i16> poison, i16 %b, i32 0
  %vb = shufflevector <16 x i16> %elt.head, <16 x i16> poison, <16 x i32> zeroinitializer
  %v = call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %va, <16 x i16> %vb)
  ret <16 x i16> %v
}

define <16 x i16> @uadd_v16i16_vi(<16 x i16> %va) {
; CHECK-LABEL: uadd_v16i16_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e16, m2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %va, <16 x i16> splat (i16 8))
  ret <16 x i16> %v
}

declare <2 x i32> @llvm.uadd.sat.v2i32(<2 x i32>, <2 x i32>)

define <2 x i32> @uadd_v2i32_vv(<2 x i32> %va, <2 x i32> %b) {
; CHECK-LABEL: uadd_v2i32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <2 x i32> @llvm.uadd.sat.v2i32(<2 x i32> %va, <2 x i32> %b)
  ret <2 x i32> %v
}

define <2 x i32> @uadd_v2i32_vx(<2 x i32> %va, i32 %b) {
; CHECK-LABEL: uadd_v2i32_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <2 x i32> poison, i32 %b, i32 0
  %vb = shufflevector <2 x i32> %elt.head, <2 x i32> poison, <2 x i32> zeroinitializer
  %v = call <2 x i32> @llvm.uadd.sat.v2i32(<2 x i32> %va, <2 x i32> %vb)
  ret <2 x i32> %v
}

define <2 x i32> @uadd_v2i32_vx_commute(<2 x i32> %va, i32 %b) {
; CHECK-LABEL: uadd_v2i32_vx_commute:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <2 x i32> poison, i32 %b, i32 0
  %vb = shufflevector <2 x i32> %elt.head, <2 x i32> poison, <2 x i32> zeroinitializer
  %v = call <2 x i32> @llvm.uadd.sat.v2i32(<2 x i32> %vb, <2 x i32> %va)
  ret <2 x i32> %v
}

define <2 x i32> @uadd_v2i32_vi(<2 x i32> %va) {
; CHECK-LABEL: uadd_v2i32_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <2 x i32> @llvm.uadd.sat.v2i32(<2 x i32> %va, <2 x i32> splat (i32 8))
  ret <2 x i32> %v
}

declare <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32>, <4 x i32>)

define <4 x i32> @uadd_v4i32_vv(<4 x i32> %va, <4 x i32> %b) {
; CHECK-LABEL: uadd_v4i32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %va, <4 x i32> %b)
  ret <4 x i32> %v
}

define <4 x i32> @uadd_v4i32_vx(<4 x i32> %va, i32 %b) {
; CHECK-LABEL: uadd_v4i32_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <4 x i32> poison, i32 %b, i32 0
  %vb = shufflevector <4 x i32> %elt.head, <4 x i32> poison, <4 x i32> zeroinitializer
  %v = call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %va, <4 x i32> %vb)
  ret <4 x i32> %v
}

define <4 x i32> @uadd_v4i32_vi(<4 x i32> %va) {
; CHECK-LABEL: uadd_v4i32_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %va, <4 x i32> splat (i32 8))
  ret <4 x i32> %v
}

declare <8 x i32> @llvm.uadd.sat.v8i32(<8 x i32>, <8 x i32>)

define <8 x i32> @uadd_v8i32_vv(<8 x i32> %va, <8 x i32> %b) {
; CHECK-LABEL: uadd_v8i32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <8 x i32> @llvm.uadd.sat.v8i32(<8 x i32> %va, <8 x i32> %b)
  ret <8 x i32> %v
}

define <8 x i32> @uadd_v8i32_vx(<8 x i32> %va, i32 %b) {
; CHECK-LABEL: uadd_v8i32_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <8 x i32> poison, i32 %b, i32 0
  %vb = shufflevector <8 x i32> %elt.head, <8 x i32> poison, <8 x i32> zeroinitializer
  %v = call <8 x i32> @llvm.uadd.sat.v8i32(<8 x i32> %va, <8 x i32> %vb)
  ret <8 x i32> %v
}

define <8 x i32> @uadd_v8i32_vi(<8 x i32> %va) {
; CHECK-LABEL: uadd_v8i32_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <8 x i32> @llvm.uadd.sat.v8i32(<8 x i32> %va, <8 x i32> splat (i32 8))
  ret <8 x i32> %v
}

declare <16 x i32> @llvm.uadd.sat.v16i32(<16 x i32>, <16 x i32>)

define <16 x i32> @uadd_v16i32_vv(<16 x i32> %va, <16 x i32> %b) {
; CHECK-LABEL: uadd_v16i32_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e32, m4, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v12
; CHECK-NEXT:    ret
  %v = call <16 x i32> @llvm.uadd.sat.v16i32(<16 x i32> %va, <16 x i32> %b)
  ret <16 x i32> %v
}

define <16 x i32> @uadd_v16i32_vx(<16 x i32> %va, i32 %b) {
; CHECK-LABEL: uadd_v16i32_vx:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e32, m4, ta, ma
; CHECK-NEXT:    vsaddu.vx v8, v8, a0
; CHECK-NEXT:    ret
  %elt.head = insertelement <16 x i32> poison, i32 %b, i32 0
  %vb = shufflevector <16 x i32> %elt.head, <16 x i32> poison, <16 x i32> zeroinitializer
  %v = call <16 x i32> @llvm.uadd.sat.v16i32(<16 x i32> %va, <16 x i32> %vb)
  ret <16 x i32> %v
}

define <16 x i32> @uadd_v16i32_vi(<16 x i32> %va) {
; CHECK-LABEL: uadd_v16i32_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e32, m4, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <16 x i32> @llvm.uadd.sat.v16i32(<16 x i32> %va, <16 x i32> splat (i32 8))
  ret <16 x i32> %v
}

declare <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64>, <2 x i64>)

define <2 x i64> @uadd_v2i64_vv(<2 x i64> %va, <2 x i64> %b) {
; CHECK-LABEL: uadd_v2i64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e64, m1, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v9
; CHECK-NEXT:    ret
  %v = call <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64> %va, <2 x i64> %b)
  ret <2 x i64> %v
}

define <2 x i64> @uadd_v2i64_vx(<2 x i64> %va, i64 %b) {
; RV32-LABEL: uadd_v2i64_vx:
; RV32:       # %bb.0:
; RV32-NEXT:    addi sp, sp, -16
; RV32-NEXT:    .cfi_def_cfa_offset 16
; RV32-NEXT:    sw a0, 8(sp)
; RV32-NEXT:    sw a1, 12(sp)
; RV32-NEXT:    addi a0, sp, 8
; RV32-NEXT:    vsetivli zero, 2, e64, m1, ta, ma
; RV32-NEXT:    vlse64.v v9, (a0), zero
; RV32-NEXT:    vsaddu.vv v8, v8, v9
; RV32-NEXT:    addi sp, sp, 16
; RV32-NEXT:    .cfi_def_cfa_offset 0
; RV32-NEXT:    ret
;
; RV64-LABEL: uadd_v2i64_vx:
; RV64:       # %bb.0:
; RV64-NEXT:    vsetivli zero, 2, e64, m1, ta, ma
; RV64-NEXT:    vsaddu.vx v8, v8, a0
; RV64-NEXT:    ret
  %elt.head = insertelement <2 x i64> poison, i64 %b, i32 0
  %vb = shufflevector <2 x i64> %elt.head, <2 x i64> poison, <2 x i32> zeroinitializer
  %v = call <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64> %va, <2 x i64> %vb)
  ret <2 x i64> %v
}

define <2 x i64> @uadd_v2i64_vi(<2 x i64> %va) {
; CHECK-LABEL: uadd_v2i64_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e64, m1, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64> %va, <2 x i64> splat (i64 8))
  ret <2 x i64> %v
}

declare <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64>, <4 x i64>)

define <4 x i64> @uadd_v4i64_vv(<4 x i64> %va, <4 x i64> %b) {
; CHECK-LABEL: uadd_v4i64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e64, m2, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v10
; CHECK-NEXT:    ret
  %v = call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %va, <4 x i64> %b)
  ret <4 x i64> %v
}

define <4 x i64> @uadd_v4i64_vx(<4 x i64> %va, i64 %b) {
; RV32-LABEL: uadd_v4i64_vx:
; RV32:       # %bb.0:
; RV32-NEXT:    addi sp, sp, -16
; RV32-NEXT:    .cfi_def_cfa_offset 16
; RV32-NEXT:    sw a0, 8(sp)
; RV32-NEXT:    sw a1, 12(sp)
; RV32-NEXT:    addi a0, sp, 8
; RV32-NEXT:    vsetivli zero, 4, e64, m2, ta, ma
; RV32-NEXT:    vlse64.v v10, (a0), zero
; RV32-NEXT:    vsaddu.vv v8, v8, v10
; RV32-NEXT:    addi sp, sp, 16
; RV32-NEXT:    .cfi_def_cfa_offset 0
; RV32-NEXT:    ret
;
; RV64-LABEL: uadd_v4i64_vx:
; RV64:       # %bb.0:
; RV64-NEXT:    vsetivli zero, 4, e64, m2, ta, ma
; RV64-NEXT:    vsaddu.vx v8, v8, a0
; RV64-NEXT:    ret
  %elt.head = insertelement <4 x i64> poison, i64 %b, i32 0
  %vb = shufflevector <4 x i64> %elt.head, <4 x i64> poison, <4 x i32> zeroinitializer
  %v = call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %va, <4 x i64> %vb)
  ret <4 x i64> %v
}

define <4 x i64> @uadd_v4i64_vi(<4 x i64> %va) {
; CHECK-LABEL: uadd_v4i64_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e64, m2, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %va, <4 x i64> splat (i64 8))
  ret <4 x i64> %v
}

declare <8 x i64> @llvm.uadd.sat.v8i64(<8 x i64>, <8 x i64>)

define <8 x i64> @uadd_v8i64_vv(<8 x i64> %va, <8 x i64> %b) {
; CHECK-LABEL: uadd_v8i64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e64, m4, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v12
; CHECK-NEXT:    ret
  %v = call <8 x i64> @llvm.uadd.sat.v8i64(<8 x i64> %va, <8 x i64> %b)
  ret <8 x i64> %v
}

define <8 x i64> @uadd_v8i64_vx(<8 x i64> %va, i64 %b) {
; RV32-LABEL: uadd_v8i64_vx:
; RV32:       # %bb.0:
; RV32-NEXT:    addi sp, sp, -16
; RV32-NEXT:    .cfi_def_cfa_offset 16
; RV32-NEXT:    sw a0, 8(sp)
; RV32-NEXT:    sw a1, 12(sp)
; RV32-NEXT:    addi a0, sp, 8
; RV32-NEXT:    vsetivli zero, 8, e64, m4, ta, ma
; RV32-NEXT:    vlse64.v v12, (a0), zero
; RV32-NEXT:    vsaddu.vv v8, v8, v12
; RV32-NEXT:    addi sp, sp, 16
; RV32-NEXT:    .cfi_def_cfa_offset 0
; RV32-NEXT:    ret
;
; RV64-LABEL: uadd_v8i64_vx:
; RV64:       # %bb.0:
; RV64-NEXT:    vsetivli zero, 8, e64, m4, ta, ma
; RV64-NEXT:    vsaddu.vx v8, v8, a0
; RV64-NEXT:    ret
  %elt.head = insertelement <8 x i64> poison, i64 %b, i32 0
  %vb = shufflevector <8 x i64> %elt.head, <8 x i64> poison, <8 x i32> zeroinitializer
  %v = call <8 x i64> @llvm.uadd.sat.v8i64(<8 x i64> %va, <8 x i64> %vb)
  ret <8 x i64> %v
}

define <8 x i64> @uadd_v8i64_vi(<8 x i64> %va) {
; CHECK-LABEL: uadd_v8i64_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e64, m4, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <8 x i64> @llvm.uadd.sat.v8i64(<8 x i64> %va, <8 x i64> splat (i64 8))
  ret <8 x i64> %v
}

declare <16 x i64> @llvm.uadd.sat.v16i64(<16 x i64>, <16 x i64>)

define <16 x i64> @uadd_v16i64_vv(<16 x i64> %va, <16 x i64> %b) {
; CHECK-LABEL: uadd_v16i64_vv:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e64, m8, ta, ma
; CHECK-NEXT:    vsaddu.vv v8, v8, v16
; CHECK-NEXT:    ret
  %v = call <16 x i64> @llvm.uadd.sat.v16i64(<16 x i64> %va, <16 x i64> %b)
  ret <16 x i64> %v
}

define <16 x i64> @uadd_v16i64_vx(<16 x i64> %va, i64 %b) {
; RV32-LABEL: uadd_v16i64_vx:
; RV32:       # %bb.0:
; RV32-NEXT:    addi sp, sp, -16
; RV32-NEXT:    .cfi_def_cfa_offset 16
; RV32-NEXT:    sw a0, 8(sp)
; RV32-NEXT:    sw a1, 12(sp)
; RV32-NEXT:    addi a0, sp, 8
; RV32-NEXT:    vsetivli zero, 16, e64, m8, ta, ma
; RV32-NEXT:    vlse64.v v16, (a0), zero
; RV32-NEXT:    vsaddu.vv v8, v8, v16
; RV32-NEXT:    addi sp, sp, 16
; RV32-NEXT:    .cfi_def_cfa_offset 0
; RV32-NEXT:    ret
;
; RV64-LABEL: uadd_v16i64_vx:
; RV64:       # %bb.0:
; RV64-NEXT:    vsetivli zero, 16, e64, m8, ta, ma
; RV64-NEXT:    vsaddu.vx v8, v8, a0
; RV64-NEXT:    ret
  %elt.head = insertelement <16 x i64> poison, i64 %b, i32 0
  %vb = shufflevector <16 x i64> %elt.head, <16 x i64> poison, <16 x i32> zeroinitializer
  %v = call <16 x i64> @llvm.uadd.sat.v16i64(<16 x i64> %va, <16 x i64> %vb)
  ret <16 x i64> %v
}

define <16 x i64> @uadd_v16i64_vi(<16 x i64> %va) {
; CHECK-LABEL: uadd_v16i64_vi:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e64, m8, ta, ma
; CHECK-NEXT:    vsaddu.vi v8, v8, 8
; CHECK-NEXT:    ret
  %v = call <16 x i64> @llvm.uadd.sat.v16i64(<16 x i64> %va, <16 x i64> splat (i64 8))
  ret <16 x i64> %v
}
