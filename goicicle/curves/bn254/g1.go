// Copyright 2023 Ingonyama
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by Ingonyama DO NOT EDIT

package bn254

import (
	"unsafe"

	"encoding/binary"
)

// #cgo CFLAGS: -I./include/
// #cgo LDFLAGS: -L${SRCDIR}/../../ -lbn254
// #include "projective.h"
// #include "ve_mod_mult.h"
import "C"

const SCALAR_SIZE = 8
const BASE_SIZE = 8

type G1ScalarField struct {
	S [SCALAR_SIZE]uint32
}

type G1BaseField struct {
	S [BASE_SIZE]uint32
}

/*
 * BaseField Constrctors
 */

func (f *G1BaseField) SetZero() *G1BaseField {
	var S [BASE_SIZE]uint32
	f.S = S

	return f
}

func (f *G1BaseField) SetOne() *G1BaseField {
	var S [BASE_SIZE]uint32

	S[0] = 1

	f.S = S
	return f
}

func (p *G1ProjectivePoint) FromAffine(affine *G1PointAffine) *G1ProjectivePoint {
	out := (*C.BN254_projective_t)(unsafe.Pointer(p))
	in := (*C.BN254_affine_t)(unsafe.Pointer(affine))

	C.projective_from_affine_bn254(out, in)

	return p
}

func (f *G1BaseField) FromLimbs(limbs [BASE_SIZE]uint32) *G1BaseField {
	copy(f.S[:], limbs[:])

	return f
}

/*
 * BaseField methods
 */

func (f *G1BaseField) Limbs() [BASE_SIZE]uint32 {
	return f.S
}

func (f *G1BaseField) ToBytesLe() []byte {
	bytes := make([]byte, len(f.S)*4)
	for i, v := range f.S {
		binary.LittleEndian.PutUint32(bytes[i*4:], v)
	}

	return bytes
}

/*
 * ScalarField methods
 */

func (p *G1ScalarField) Random() *G1ScalarField {
	outC := (*C.BN254_scalar_t)(unsafe.Pointer(p))
	C.random_scalar_bn254(outC)

	return p
}

func (f *G1ScalarField) SetZero() *G1ScalarField {
	var S [SCALAR_SIZE]uint32
	f.S = S

	return f
}

func (f *G1ScalarField) SetOne() *G1ScalarField {
	var S [SCALAR_SIZE]uint32
	S[0] = 1
	f.S = S

	return f
}

func (a *G1ScalarField) Eq(b *G1ScalarField) bool {
	for i, v := range a.S {
		if b.S[i] != v {
			return false
		}
	}
	return true
}

/*
 * ScalarField methods
 */

func (f *G1ScalarField) Limbs() [SCALAR_SIZE]uint32 {
	return f.S
}

func (f *G1ScalarField) ToBytesLe() []byte {
	bytes := make([]byte, len(f.S)*4)
	for i, v := range f.S {
		binary.LittleEndian.PutUint32(bytes[i*4:], v)
	}

	return bytes
}

/*
 * PointBN254
 */

type G1ProjectivePoint struct {
	X, Y, Z G1BaseField
}

func (f *G1ProjectivePoint) SetZero() *G1ProjectivePoint {
	var yOne G1BaseField
	yOne.SetOne()

	var xZero G1BaseField
	xZero.SetZero()

	var zZero G1BaseField
	zZero.SetZero()

	f.X = xZero
	f.Y = yOne
	f.Z = zZero

	return f
}

func (p *G1ProjectivePoint) Eq(pCompare *G1ProjectivePoint) bool {
	// Cast *PointBN254 to *C.BN254_projective_t
	// The unsafe.Pointer cast is necessary because Go doesn't allow direct casts
	// between different pointer types.
	// It'S your responsibility to ensure that the types are compatible.
	pC := (*C.BN254_projective_t)(unsafe.Pointer(p))
	pCompareC := (*C.BN254_projective_t)(unsafe.Pointer(pCompare))

	// Call the C function
	// The C function doesn't keep any references to the data,
	// so it'S fine if the Go garbage collector moves or deletes the data later.
	return bool(C.eq_bn254(pC, pCompareC))
}

func (p *G1ProjectivePoint) IsOnCurve() bool {
	point := (*C.BN254_projective_t)(unsafe.Pointer(p))
	res := C.projective_is_on_curve_bn254(point)

	return bool(res)
}

func (p *G1ProjectivePoint) Random() *G1ProjectivePoint {
	outC := (*C.BN254_projective_t)(unsafe.Pointer(p))
	C.random_projective_bn254(outC)

	return p
}

func (p *G1ProjectivePoint) StripZ() *G1PointAffine {
	return &G1PointAffine{
		X: p.X,
		Y: p.Y,
	}
}

func (p *G1ProjectivePoint) FromLimbs(x, y, z *[]uint32) *G1ProjectivePoint {
	var _x G1BaseField
	var _y G1BaseField
	var _z G1BaseField

	_x.FromLimbs(GetFixedLimbs(x))
	_y.FromLimbs(GetFixedLimbs(y))
	_z.FromLimbs(GetFixedLimbs(z))

	p.X = _x
	p.Y = _y
	p.Z = _z

	return p
}

/*
 * PointAffineNoInfinityBN254
 */

type G1PointAffine struct {
	X, Y G1BaseField
}

func (p *G1PointAffine) FromProjective(projective *G1ProjectivePoint) *G1PointAffine {
	in := (*C.BN254_projective_t)(unsafe.Pointer(projective))
	out := (*C.BN254_affine_t)(unsafe.Pointer(p))

	C.projective_to_affine_bn254(out,in)

	return p
}

func (p *G1PointAffine) ToProjective() *G1ProjectivePoint {
	var Z G1BaseField
	Z.SetOne()

	return &G1ProjectivePoint{
		X: p.X,
		Y: p.Y,
		Z: Z,
	}
}

func (p *G1PointAffine) FromLimbs(X, Y *[]uint32) *G1PointAffine {
	var _x G1BaseField
	var _y G1BaseField

	_x.FromLimbs(GetFixedLimbs(X))
	_y.FromLimbs(GetFixedLimbs(Y))

	return p
}

/*
 * Multiplication
 */

func MultiplyVec(a []G1ProjectivePoint, b []G1ScalarField, deviceID int) {
	if len(a) != len(b) {
		panic("a and b have different lengths")
	}

	pointsC := (*C.BN254_projective_t)(unsafe.Pointer(&a[0]))
	scalarsC := (*C.BN254_scalar_t)(unsafe.Pointer(&b[0]))
	deviceIdC := C.size_t(deviceID)
	nElementsC := C.size_t(len(a))

	C.vec_mod_mult_point_bn254(pointsC, scalarsC, nElementsC, deviceIdC)
}

func MultiplyScalar(a []G1ScalarField, b []G1ScalarField, deviceID int) {
	if len(a) != len(b) {
		panic("a and b have different lengths")
	}

	aC := (*C.BN254_scalar_t)(unsafe.Pointer(&a[0]))
	bC := (*C.BN254_scalar_t)(unsafe.Pointer(&b[0]))
	deviceIdC := C.size_t(deviceID)
	nElementsC := C.size_t(len(a))

	C.vec_mod_mult_scalar_bn254(aC, bC, nElementsC, deviceIdC)
}

// Multiply a matrix by a scalar:
//
//	`a` - flattenned matrix;
//	`b` - vector to multiply `a` by;
func MultiplyMatrix(a []G1ScalarField, b []G1ScalarField, deviceID int) {
	c := make([]G1ScalarField, len(b))
	for i := range c {
		var p G1ScalarField
		p.SetZero()

		c[i] = p
	}

	aC := (*C.BN254_scalar_t)(unsafe.Pointer(&a[0]))
	bC := (*C.BN254_scalar_t)(unsafe.Pointer(&b[0]))
	cC := (*C.BN254_scalar_t)(unsafe.Pointer(&c[0]))
	deviceIdC := C.size_t(deviceID)
	nElementsC := C.size_t(len(a))

	C.matrix_vec_mod_mult_bn254(aC, bC, cC, nElementsC, deviceIdC)
}

/*
 * Utils
 */

func GetFixedLimbs(slice *[]uint32) [BASE_SIZE]uint32 {
	if len(*slice) <= BASE_SIZE {
		limbs := [BASE_SIZE]uint32{}
		copy(limbs[:len(*slice)], *slice)
		return limbs
	}

	panic("slice has too many elements")
}
