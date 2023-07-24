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
// ntt.h

#ifndef _BN254_NTT_H
#define _BN254_NTT_H

#ifdef __cplusplus
extern "C" {
#endif

// Incomplete declaration of BN254 projective and affine structs
typedef struct BN254_projective_t BN254_projective_t;
typedef struct BN254_affine_t BN254_affine_t;
typedef struct BN254_scalar_t BN254_scalar_t;

typedef struct BN254_g2_projective_t BN254_g2_projective_t;
typedef struct BN254_g2_affine_t BN254_g2_affine_t;

int ntt_cuda_bn254(BN254_scalar_t *arr, uint32_t n, bool inverse, size_t decimation);
int ntt_batch_cuda_bn254(BN254_scalar_t *arr, uint32_t arr_size, uint32_t batch_size, bool inverse, size_t decimation);

int ecntt_cuda_bn254(BN254_projective_t *arr, uint32_t n, bool inverse, size_t device_id);
int ecntt_batch_cuda_bn254(BN254_projective_t *arr, uint32_t arr_size, uint32_t batch_size, bool inverse, size_t device_id);


BN254_scalar_t* build_domain_cuda_bn254(uint32_t domain_size, uint32_t logn, bool inverse, size_t device_id, size_t stream);
int interpolate_scalars_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t *d_evaluations, BN254_scalar_t *d_domain, unsigned n, unsigned device_id, size_t stream);
int interpolate_scalars_batch_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_evaluations, BN254_scalar_t* d_domain, unsigned n, unsigned batch_size, size_t device_id, size_t stream);
int interpolate_points_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t *d_evaluations, BN254_scalar_t *d_domain, unsigned n, size_t device_id, size_t stream);
int interpolate_points_batch_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t* d_evaluations, BN254_scalar_t* d_domain,unsigned n, unsigned batch_size, size_t device_id, size_t stream);
int interpolate_scalars_on_coset_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_evaluations, BN254_scalar_t* d_domain, unsigned n, BN254_scalar_t* coset_powers, size_t device_id, size_t stream);
int interpolate_scalars_batch_on_coset_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_evaluations, BN254_scalar_t* d_domain, unsigned n, unsigned batch_size, BN254_scalar_t* coset_powers, size_t device_id, size_t stream);
int evaluate_scalars_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t *d_coefficients, BN254_scalar_t *d_domain, unsigned domain_size, unsigned n, unsigned device_id, size_t stream);
int evaluate_scalars_batch_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_coefficients, BN254_scalar_t* d_domain, unsigned domain_size,unsigned n, unsigned batch_size, size_t device_id, size_t stream);
int evaluate_points_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t *d_coefficients, BN254_scalar_t *d_domain, unsigned domain_size, unsigned n, size_t device_id, size_t stream);
int evaluate_points_batch_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t* d_coefficients, BN254_scalar_t* d_domain, unsigned domain_size,unsigned n, unsigned batch_size, size_t device_id, size_t stream);
int evaluate_scalars_on_coset_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t *d_coefficients, BN254_scalar_t *d_domain, unsigned domain_size,unsigned n, BN254_scalar_t *coset_powers, unsigned device_id, size_t stream);
int evaluate_scalars_on_coset_batch_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_coefficients, BN254_scalar_t* d_domain, unsigned domain_size, unsigned n, unsigned batch_size, BN254_scalar_t *coset_powers, size_t device_id, size_t stream);
int evaluate_points_on_coset_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t *d_coefficients, BN254_scalar_t *d_domain, unsigned domain_size,unsigned n, BN254_scalar_t *coset_powers, size_t device_id, size_t stream);
int evaluate_points_on_coset_batch_cuda_bn254(BN254_projective_t* d_out, BN254_projective_t* d_coefficients, BN254_scalar_t* d_domain, unsigned domain_size, unsigned n, unsigned batch_size, BN254_scalar_t *coset_powers, size_t device_id, size_t stream);
int reverse_order_scalars_cuda_bn254(BN254_scalar_t* arr, int n, size_t device_id, size_t stream);
int reverse_order_scalars_batch_cuda_bn254(BN254_scalar_t* arr, int n, int batch_size, size_t device_id, size_t stream);
int reverse_order_points_cuda_bn254(BN254_projective_t* arr, int n, size_t device_id, size_t stream);
int reverse_order_points_batch_cuda_bn254(BN254_projective_t* arr, int n, int batch_size, size_t device_id, size_t stream);
int add_scalars_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_in1, BN254_scalar_t* d_in2, unsigned n, size_t stream);
int sub_scalars_cuda_bn254(BN254_scalar_t* d_out, BN254_scalar_t* d_in1, BN254_scalar_t* d_in2, unsigned n, size_t stream);
int to_montgomery_scalars_cuda_bn254(BN254_scalar_t* d_inout, unsigned n, size_t stream);
int from_montgomery_scalars_cuda_bn254(BN254_scalar_t* d_inout, unsigned n, size_t stream);

// points g1
int to_montgomery_proj_points_cuda_bn254(BN254_projective_t* d_inout, unsigned n, size_t stream);
int from_montgomery_proj_points_cuda_bn254(BN254_projective_t* d_inout, unsigned n, size_t stream);
int to_montgomery_aff_points_cuda_bn254(BN254_affine_t* d_inout, unsigned n, size_t stream);
int from_montgomery_aff_points_cuda_bn254(BN254_affine_t* d_inout, unsigned n, size_t stream);

// points g2
int to_montgomery_proj_points_g2_cuda_bn254(BN254_g2_projective_t* d_inout, unsigned n, size_t stream);
int from_montgomery_proj_points_g2_cuda_bn254(BN254_g2_projective_t* d_inout, unsigned n, size_t stream);
int to_montgomery_aff_points_g2_cuda_bn254(BN254_g2_affine_t* d_inout, unsigned n, size_t stream);
int from_montgomery_aff_points_g2_cuda_bn254(BN254_g2_affine_t* d_inout, unsigned n, size_t stream);

#ifdef __cplusplus
}
#endif

#endif /* _BN254_NTT_H */