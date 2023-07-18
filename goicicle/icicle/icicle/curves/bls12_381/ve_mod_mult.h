
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

#include <stdbool.h>
#include <cuda.h>
// ve_mod_mult.h

#ifndef _BLS12381_VEC_MULT_H
#define _BLS12381_VEC_MULT_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct BLS12381_projective_t BLS12381_projective_t;
typedef struct BLS12381_scalar_t BLS12381_scalar_t;

int32_t vec_mod_mult_point_bls12_381(BLS12381_projective_t *inout, BLS12381_scalar_t *scalar_vec, size_t n_elments, size_t device_id);
int32_t vec_mod_mult_scalar_bls12_381(BLS12381_scalar_t *inout, BLS12381_scalar_t *scalar_vec, size_t n_elments, size_t device_id);
int32_t matrix_vec_mod_mult_bls12_381(BLS12381_scalar_t *matrix_flattened, BLS12381_scalar_t *input, BLS12381_scalar_t *output, size_t n_elments, size_t device_id);


#ifdef __cplusplus
}
#endif

#endif /* _BLS12381_VEC_MULT_H */
