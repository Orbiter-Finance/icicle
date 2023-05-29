#pragma once

#include "../utils/storage.cuh"
#include "../utils/ptx.cuh"
#include "../utils/host_math.cuh"
#include <random>
#include <iostream>

#define HOST_INLINE __host__ __forceinline__
#define DEVICE_INLINE __device__ __forceinline__
#define HOST_DEVICE_INLINE __host__ __device__ __forceinline__

template <class CONFIG>
class Field
{
public:
  static constexpr unsigned TLC = CONFIG::limbs_count;
  static constexpr unsigned NBITS = CONFIG::modulus_bits_count;

  static constexpr HOST_DEVICE_INLINE Field zero()
  {
    return Field{CONFIG::zero};
  }

  static constexpr HOST_DEVICE_INLINE Field one()
  {
    return Field{CONFIG::one};
  }

  static constexpr HOST_INLINE Field omega(uint32_t log_size)
  {
    const storage<8> _omega[32] = {{0x00000000, 0xffffffff, 0xfffe5bfe, 0x53bda402, 0x09a1d805, 0x3339d808, 0x299d7d48, 0x73eda753}, {0x00000000, 0x00010000, 0x76030000, 0xec030002, 0x760304d0, 0x8d51ccce, 0x00000000, 0x00000000}, {0x97743f7a, 0x7228fd33, 0x8713b700, 0xb38b21c2, 0x70d77ce2, 0x8c0625cd, 0x03fa66e7, 0x345766f6}, {0x7742bcce, 0x53ea61d8, 0xf20b6f76, 0x17beb312, 0x34cec32c, 0xdd1c0af8, 0x40267af9, 0x20b1ce91}, {0x7369df4e, 0x360c6099, 0x4c38fb8a, 0xbf6e88fb, 0x22f55448, 0xb4bcd40e, 0x157988ba, 0x50e0903a}, {0xf0a9ee53, 0x8140d032, 0xe2f95155, 0x2d967f4b, 0x64d8fdbd, 0x14a1e271, 0xec055e4d, 0x45af6345}, {0x660125be, 0x5130c2c1, 0x87f5713c, 0x98d0caac, 0x7fdd60d0, 0xb7c68b4d, 0x13588742, 0x68981114}, {0x817f694b, 0x4935bd2f, 0x99e8deff, 0x0a0865a8, 0xac0cf4ad, 0x6b368121, 0xe2e9f12e, 0x4f9b4098}, {0x2ee0434e, 0x4541b8ff, 0x3a6000fe, 0xd697168a, 0x0d80689f, 0x39feec24, 0x5526a654, 0x09516652}, {0xa5c2d854, 0x3c28d666, 0x26fc085e, 0xea437f96, 0x0f776af3, 0x8f4de02c, 0xdebf77a1, 0x325db5c3}, {0x59cd79e5, 0x4a838b5d, 0xbe9c622d, 0x55ea6811, 0x0a08f166, 0x09f1ca61, 0x5c49c834, 0x6d031f1b}, {0xa5d36306, 0xe206da11, 0x378fbf96, 0x0ad1347b, 0xe0f8245f, 0xfc3e8acf, 0xa0f704f4, 0x564c0a11}, {0xc78c8967, 0x6fdd00bf, 0x434906ac, 0x146b58bc, 0x972e89ed, 0x2ccddea2, 0x37b1da3d, 0x485d5127}, {0x2a5ad9e1, 0x034d2ff2, 0xa9152435, 0xae4622f6, 0x0d477fa6, 0xdc86b01c, 0xb500a166, 0x56624634}, {0x1279bb6e, 0xfbd047e1, 0xb3f32699, 0xc8d5f51d, 0x7a0cbe39, 0x48340541, 0xe558b50d, 0x3291357e}, {0xcd96b8ad, 0xd7118f85, 0x1fcadc91, 0x67a665ae, 0xf1aeb578, 0x88f39a78, 0x12180caa, 0x2155379d}, {0xf3b70f10, 0x08692405, 0xd0711b7d, 0xcd7f2bd6, 0x772c33d6, 0x473a2eef, 0x2d8acbf4, 0x22426233}, {0x8ef674fb, 0x6f421a7d, 0x30ce40fd, 0xbb97a3bf, 0xe1c34bb0, 0x652f717a, 0x30794f01, 0x2d3056a5}, {0xecb38d9d, 0x194e8c62, 0x4419c750, 0xad8e16e8, 0xd0adef90, 0xdf625e80, 0x724a6955, 0x520e587a}, {0x39898d4b, 0xfece7e0e, 0x265e09d9, 0x2f69e02d, 0xcb98de4a, 0xa57a6e07, 0xcb947035, 0x03e1c54b}, {0x2d3ea03a, 0xcd397912, 0x04db5844, 0x46b3105f, 0xb0691d4e, 0xc70d0874, 0x7018af4f, 0x47c8b581}, {0xb08e3363, 0xc6e7a6ff, 0x86389bee, 0xe08fec7c, 0xfbb8d1bb, 0xf2d38f10, 0x5abcaa32, 0x0abe6a5e}, {0xe0ec9eae, 0x5616c57d, 0x585a72db, 0xc631ffb2, 0xa3b51e3c, 0x5121af06, 0xaa0655b2, 0x73560252}, {0x77bd779c, 0x92cf4deb, 0x29b7d7bc, 0x72cf6a80, 0xee762730, 0x6e0bcd91, 0x8823e687, 0x291cf6d6}, {0x4e11a51e, 0xce32ef84, 0x3da64ca5, 0xc0ba12bb, 0xdc61a1a3, 0x0454dc1e, 0xfd328739, 0x019fe632}, {0xd2d75182, 0x531a11a0, 0x02867ddc, 0x02c81184, 0xfbedc11d, 0x116168bf, 0xb1980c0d, 0x0a0a77a3}, {0x9f0319ed, 0xe2d0a786, 0xb1d7a628, 0xb94f1101, 0x4f31d25d, 0xece8ea22, 0x00f8f98b, 0x23397a93}, {0x0a4f2089, 0xd7b68883, 0xf6ac7b41, 0x6558e9e3, 0x71905a7d, 0x99e276b5, 0x2f094256, 0x52dd465e}, {0x9d8e211b, 0x47465035, 0x6214abc6, 0x84d37b82, 0xf2bb4598, 0x8da40c1e, 0x44bf1bee, 0x0c83ea77}, {0x08c9dd56, 0x694341f6, 0xabb30adc, 0xed3a181f, 0xda8b398f, 0x1339a815, 0x11657e1e, 0x2c6d4e45}, {0x06ffc93f, 0x63e7cb49, 0xe28a193d, 0xf070bb00, 0x2e5713b5, 0xad1715b0, 0x5990693f, 0x4b537149}, {0x439f0d2b, 0x3829971f, 0x8c2280b9, 0xb6368350, 0x22c813b4, 0xd09b6819, 0xdfe81f20, 0x16a2a19e}};

    // Quick fix to linking issue, permanent fix will follow
    switch (log_size)
    {
    case 0:
      return Field{CONFIG::one};
    default:
    {
      return Field{_omega[log_size - 1]};
    }
    }
  }

  static constexpr HOST_INLINE Field omega_inv(uint32_t log_size)
  {
    const storage<8> _omega_inv[32] = {{0x00000000, 0xffffffff, 0xfffe5bfe, 0x53bda402, 0x09a1d805, 0x3339d808, 0x299d7d48, 0x73eda753}, {0x00000001, 0xfffeffff, 0x89fb5bfe, 0x67baa400, 0x939ed334, 0xa5e80b39, 0x299d7d47, 0x73eda753}, {0x5166afd3, 0x9fc8017d, 0x6b4e0c26, 0xc54913cc, 0x3f1b189f, 0x787d7d08, 0xccbc6d03, 0x60b9f524}, {0x4c887948, 0x5e544cdf, 0xccb22542, 0xfc010d53, 0x2f188612, 0x687a73c9, 0xab91194b, 0x3b25b475}, {0x1cfca2ec, 0xae34a81e, 0x0928e68f, 0x6c7876bf, 0xf6c52b2a, 0xae25b21d, 0x432405d0, 0x5e73ed8c}, {0x168bba2c, 0x8d28c143, 0xdce28e78, 0xdb872ef3, 0x7dc75b61, 0x4e84b3cd, 0x61a2eeaf, 0x640d0974}, {0x20df9d12, 0x6207cd2f, 0x578d78bf, 0x0081066e, 0x79bf9cd6, 0x725ce48f, 0x34093e9a, 0x60c7efec}, {0xdd958780, 0x7d01866a, 0x6e4caccb, 0xdf7b4ee6, 0x45e9b713, 0x67e701a9, 0x084c71a4, 0x18ba7658}, {0x3193f385, 0x16654b4e, 0x8b542a79, 0x7dd34dc4, 0xe15d3727, 0x881dab49, 0x81fc6d1c, 0x6a61dbd7}, {0xc6a47727, 0x1b561347, 0x7904d0ab, 0x9ce86248, 0x5c3ad14d, 0x942c20e4, 0xf7456c9b, 0x5164ca4c}, {0xb639eb06, 0xdc982dea, 0xf707ac89, 0xa954d02f, 0xd485b39a, 0xae65b5bd, 0x9036d62f, 0x55612c87}, {0xd8543362, 0x961a252d, 0x64183203, 0x5046d178, 0xb9dc5986, 0x4ae25ffa, 0xc609b478, 0x391b2856}, {0x325251ed, 0x68946aad, 0xcecef2df, 0x204f9476, 0x62008419, 0xd548fda2, 0x4981b177, 0x57e6990d}, {0x8f529599, 0xd7a1f5bc, 0x3fdb838c, 0xa14c3825, 0xf683bf99, 0xfd013df1, 0x0b85a216, 0x281f7479}, {0xe150df15, 0x92f8f71f, 0x9c30ac06, 0xe05594bb, 0x3f881fa4, 0xd4040730, 0xab701fe9, 0x28e112de}, {0x60bf37a0, 0x899e9d33, 0x4590e6db, 0x6f526a72, 0x307e90eb, 0xd309639c, 0x1a867293, 0x509e1281}, {0x98475e5f, 0xa8addb03, 0x3c2f23aa, 0xb5420c48, 0x623b2c68, 0x8406d479, 0xed262ea0, 0x19297f11}, {0x26d911d3, 0x52b92481, 0xbbd6a833, 0xe358c8a0, 0x51de8579, 0x706fe0e3, 0xf4008128, 0x11b71ed3}, {0x0704893a, 0x99196be3, 0xa14e79b4, 0x0d93401c, 0x6ec64c88, 0xa0e83971, 0x8029659f, 0x059d1233}, {0x3a28fc8c, 0xef97c357, 0x17dbc026, 0x0624a1bb, 0xa6f60875, 0x68ac033f, 0xade00927, 0x6c39442e}, {0x8f26d89e, 0xdf9739f7, 0x9b0029a5, 0xbebeb812, 0x7cfa536d, 0x91c8e224, 0xc5146cab, 0x5f3ed180}, {0x0a3df640, 0x7540839d, 0xfbc4a05e, 0xcc39b5c2, 0xa352f5ab, 0x4bfc37d5, 0xcb79e351, 0x2a89f520}, {0x9351b310, 0x17279167, 0x69857d69, 0x717271f7, 0xe3a99823, 0x1c2a4679, 0xf619ad8c, 0x3317cccc}, {0x2c8dc1d5, 0xea4b5e83, 0xf3e15cbc, 0xa96adcb5, 0x3f6e8cff, 0xa537f74f, 0x3b37e3bb, 0x172ed707}, {0xf3818d30, 0x7491633f, 0x949286e7, 0x7ebe376e, 0x3cc09a42, 0xd63b3e2d, 0xdc51e159, 0x6bdfb6af}, {0xc471ab8f, 0xe91c56f8, 0x74a7dff6, 0x30413995, 0x01a608ea, 0xec40785f, 0x702e4183, 0x469a312a}, {0x2d30ae8d, 0xbbb5c9fa, 0xe07a8c5f, 0x163305d2, 0x927c68f8, 0x2ada9adf, 0x8c50c2fa, 0x20036a16}, {0x5c92abb4, 0x8c0fb4ee, 0xea8d01b6, 0x29cf8bd1, 0x999fad16, 0x982109a3, 0x2a2d8918, 0x18dec92f}, {0x119b30ed, 0xcadd5a57, 0x8232e711, 0xe6f51dff, 0x9b3acdfb, 0x91b47f62, 0x35a311d6, 0x09e63694}, {0x7cc733db, 0x172ded2c, 0xcbd4abe1, 0x04d52fdc, 0xd6fe2eb2, 0x18923f8d, 0xe0417702, 0x500b7ba5}, {0x6f5c391c, 0xd81f9f02, 0xba3a77b3, 0x8e602ff1, 0x92ab73bd, 0x3991152f, 0x65acd330, 0x65483c0b}, {0x3cf19a78, 0x0fb4d6e1, 0xb566f833, 0x6f67d4a2, 0xa35d0168, 0xed4f2f74, 0x6e19c653, 0x0538a6f6}};

    // Quick fix to linking issue, permanent fix will follow
    switch (log_size)
    {
    case 0:
      return Field{CONFIG::one};
    default:
      return Field{_omega_inv[log_size - 1]};
    }
  }

  static constexpr HOST_INLINE Field inv_log_size(uint32_t log_size)
  {
    const storage<8> _inv[32] = {{0x80000001, 0x7fffffff, 0x7fff2dff, 0xa9ded201, 0x04d0ec02, 0x199cec04, 0x94cebea4, 0x39f6d3a9}, {0x40000001, 0x3fffffff, 0x3ffec4ff, 0xfece3b02, 0x07396203, 0x266b6206, 0x5f361df6, 0x56f23d7e}, {0x20000001, 0x1fffffff, 0x9ffe907f, 0xa945ef82, 0x086d9d04, 0x2cd29d07, 0xc469cd9f, 0x656ff268}, {0x10000001, 0x0fffffff, 0xcffe763f, 0xfe81c9c2, 0x8907ba84, 0xb0063a87, 0xf703a573, 0x6caeccdd}, {0x08000001, 0x07ffffff, 0xe7fe691f, 0x291fb6e2, 0xc954c945, 0xf1a00947, 0x9050915d, 0x704e3a18}, {0x04000001, 0x03ffffff, 0xf3fe628f, 0x3e6ead72, 0xe97b50a5, 0x126cf0a7, 0xdcf70753, 0x721df0b5}, {0x02000001, 0x01ffffff, 0xf9fe5f47, 0x491628ba, 0xf98e9455, 0xa2d36457, 0x834a424d, 0x7305cc04}, {0x01000001, 0x00ffffff, 0xfcfe5da3, 0x4e69e65e, 0x0198362d, 0xeb069e30, 0xd673dfca, 0x7379b9ab}, {0x00800001, 0x007fffff, 0xfe7e5cd1, 0x5113c530, 0x059d0719, 0x8f203b1c, 0x8008ae89, 0x73b3b07f}, {0x00400001, 0x003fffff, 0xff3e5c68, 0x5268b499, 0x079f6f8f, 0xe12d0992, 0x54d315e8, 0x73d0abe9}, {0x00200001, 0x801fffff, 0x7f9e5c33, 0x53132c4e, 0x08a0a3ca, 0x8a3370cd, 0x3f384998, 0x73df299e}, {0x00100001, 0x400fffff, 0xbfce5c19, 0xd3686828, 0x89213de7, 0x5eb6a46a, 0xb46ae370, 0x73e66878}, {0x00080001, 0x2007ffff, 0xdfe65c0c, 0x93930615, 0x49618af6, 0x48f83e39, 0xef04305c, 0x73ea07e5}, {0x00040001, 0x9003ffff, 0x6ff25c05, 0xf3a8550c, 0xa981b17d, 0x3e190b20, 0x8c50d6d2, 0x73ebd79c}, {0x00020001, 0x4801ffff, 0xb7f85c02, 0xa3b2fc87, 0x5991c4c1, 0x38a97194, 0xdaf72a0d, 0x73ecbf77}, {0x00010001, 0xa400ffff, 0x5bfb5c00, 0x7bb85045, 0x3199ce63, 0xb5f1a4ce, 0x824a53aa, 0x73ed3365}, {0x00008001, 0xd2007fff, 0x2dfcdbff, 0x67bafa24, 0x1d9dd334, 0x7495be6b, 0x55f3e879, 0x73ed6d5c}, {0x00004001, 0x69003fff, 0x96fd9bff, 0xddbc4f13, 0x939fd59c, 0xd3e7cb39, 0xbfc8b2e0, 0x73ed8a57}, {0x00002001, 0x34801fff, 0x4b7dfbff, 0x18bcf98b, 0xcea0d6d1, 0x8390d1a0, 0x74b31814, 0x73ed98d5}, {0x00001001, 0x1a400fff, 0x25be2bff, 0x363d4ec7, 0x6c21576b, 0x5b6554d4, 0x4f284aae, 0x73eda014}, {0x00000801, 0x0d2007ff, 0x12de43ff, 0x44fd7965, 0x3ae197b8, 0x474f966e, 0xbc62e3fb, 0x73eda3b3}, {0x00000401, 0x069003ff, 0x096e4fff, 0xcc5d8eb4, 0x2241b7de, 0xbd44b73b, 0x730030a1, 0x73eda583}, {0x00000201, 0x034801ff, 0x84b655ff, 0x100d995b, 0x95f1c7f2, 0xf83f47a1, 0x4e4ed6f4, 0x73eda66b}, {0x00000101, 0x01a400ff, 0x425a58ff, 0xb1e59eaf, 0xcfc9cffb, 0x95bc8fd4, 0x3bf62a1e, 0x73eda6df}, {0x00000081, 0x00d2007f, 0x212c5a7f, 0x82d1a159, 0x6cb5d400, 0x647b33ee, 0x32c9d3b3, 0x73eda719}, {0x00000041, 0x0069003f, 0x10955b3f, 0xeb47a2ae, 0x3b2bd602, 0xcbda85fb, 0x2e33a87d, 0x73eda736}, {0x00000021, 0x0034801f, 0x8849db9f, 0x1f82a358, 0xa266d704, 0xff8a2f01, 0xabe892e2, 0x73eda744}, {0x00000011, 0x001a400f, 0xc4241bcf, 0xb9a023ad, 0xd6045784, 0x99620384, 0xeac30815, 0x73eda74b}, {0x00000009, 0x000d2007, 0x62113be7, 0x06aee3d8, 0x6fd317c5, 0xe64dedc6, 0x8a3042ae, 0x73eda74f}, {0x00000005, 0x00069003, 0xb107cbf3, 0x2d3643ed, 0x3cba77e5, 0x8cc3e2e7, 0x59e6dffb, 0x73eda751}, {0x00000003, 0x00034801, 0x588313f9, 0x4079f3f8, 0xa32e27f5, 0xdffedd77, 0x41c22ea1, 0x73eda752}, {0x00000002, 0x0001a400, 0xac40b7fc, 0x4a1bcbfd, 0xd667fffd, 0x099c5abf, 0xb5afd5f5, 0x73eda752}};

    // Quick fix to linking issue, permanent fix will follow
    return Field{_inv[log_size - 1]};
  }

  static constexpr HOST_DEVICE_INLINE Field modulus()
  {
    return Field{CONFIG::modulus};
  }

private:
  typedef storage<TLC> ff_storage;
  typedef storage<2 * TLC> ff_wide_storage;

  static constexpr unsigned slack_bits = 32 * TLC - NBITS;

  struct wide
  {
    ff_wide_storage limbs_storage;

    Field HOST_DEVICE_INLINE get_lower()
    {
      Field out{};
#ifdef __CUDA_ARCH__
#pragma unroll
#endif
      for (unsigned i = 0; i < TLC; i++)
        out.limbs_storage.limbs[i] = limbs_storage.limbs[i];
      return out;
    }

    Field HOST_DEVICE_INLINE get_higher_with_slack()
    {
      Field out{};
#ifdef __CUDA_ARCH__
#pragma unroll
#endif
      for (unsigned i = 0; i < TLC; i++)
      {
#ifdef __CUDA_ARCH__
        out.limbs_storage.limbs[i] = __funnelshift_lc(limbs_storage.limbs[i + TLC - 1], limbs_storage.limbs[i + TLC], slack_bits);
#else
        out.limbs_storage.limbs[i] = (limbs_storage.limbs[i + TLC] << slack_bits) + (limbs_storage.limbs[i + TLC - 1] >> (32 - slack_bits));
#endif
      }
      return out;
    }
  };

  friend HOST_DEVICE_INLINE wide operator+(wide xs, const wide &ys)
  {
    wide rs = {};
    add_limbs<false>(xs.limbs_storage, ys.limbs_storage, rs.limbs_storage);
    return rs;
  }

  // an incomplete impl that assumes that xs > ys
  friend HOST_DEVICE_INLINE wide operator-(wide xs, const wide &ys)
  {
    wide rs = {};
    sub_limbs<false>(xs.limbs_storage, ys.limbs_storage, rs.limbs_storage);
    return rs;
  }

  // return modulus
  template <unsigned MULTIPLIER = 1>
  static constexpr HOST_DEVICE_INLINE ff_storage get_modulus()
  {
    switch (MULTIPLIER)
    {
    case 1:
      return CONFIG::modulus;
    case 2:
      return CONFIG::modulus_2;
    case 4:
      return CONFIG::modulus_4;
    default:
      return {};
    }
  }

  template <unsigned MULTIPLIER = 1>
  static constexpr HOST_DEVICE_INLINE ff_wide_storage modulus_wide()
  {
    return CONFIG::modulus_wide;
  }

  // return m
  static constexpr HOST_DEVICE_INLINE ff_storage get_m()
  {
    return CONFIG::m;
  }

  // return modulus^2, helpful for ab +/- cd
  template <unsigned MULTIPLIER = 1>
  static constexpr HOST_DEVICE_INLINE ff_wide_storage get_modulus_squared()
  {
    switch (MULTIPLIER)
    {
    case 1:
      return CONFIG::modulus_squared;
    case 2:
      return CONFIG::modulus_squared_2;
    case 4:
      return CONFIG::modulus_squared_4;
    default:
      return {};
    }
  }

  // add or subtract limbs
  template <bool SUBTRACT, bool CARRY_OUT>
  static constexpr DEVICE_INLINE uint32_t add_sub_limbs_device(const ff_storage &xs, const ff_storage &ys, ff_storage &rs)
  {
    const uint32_t *x = xs.limbs;
    const uint32_t *y = ys.limbs;
    uint32_t *r = rs.limbs;
    r[0] = SUBTRACT ? ptx::sub_cc(x[0], y[0]) : ptx::add_cc(x[0], y[0]);
#pragma unroll
    for (unsigned i = 1; i < (CARRY_OUT ? TLC : TLC - 1); i++)
      r[i] = SUBTRACT ? ptx::subc_cc(x[i], y[i]) : ptx::addc_cc(x[i], y[i]);
    if (!CARRY_OUT)
    {
      r[TLC - 1] = SUBTRACT ? ptx::subc(x[TLC - 1], y[TLC - 1]) : ptx::addc(x[TLC - 1], y[TLC - 1]);
      return 0;
    }
    return SUBTRACT ? ptx::subc(0, 0) : ptx::addc(0, 0);
  }

  template <bool SUBTRACT, bool CARRY_OUT>
  static constexpr DEVICE_INLINE uint32_t add_sub_limbs_device(const ff_wide_storage &xs, const ff_wide_storage &ys, ff_wide_storage &rs)
  {
    const uint32_t *x = xs.limbs;
    const uint32_t *y = ys.limbs;
    uint32_t *r = rs.limbs;
    r[0] = SUBTRACT ? ptx::sub_cc(x[0], y[0]) : ptx::add_cc(x[0], y[0]);
#pragma unroll
    for (unsigned i = 1; i < (CARRY_OUT ? 2 * TLC : 2 * TLC - 1); i++)
      r[i] = SUBTRACT ? ptx::subc_cc(x[i], y[i]) : ptx::addc_cc(x[i], y[i]);
    if (!CARRY_OUT)
    {
      r[2 * TLC - 1] = SUBTRACT ? ptx::subc(x[2 * TLC - 1], y[2 * TLC - 1]) : ptx::addc(x[2 * TLC - 1], y[2 * TLC - 1]);
      return 0;
    }
    return SUBTRACT ? ptx::subc(0, 0) : ptx::addc(0, 0);
  }

  template <bool SUBTRACT, bool CARRY_OUT>
  static constexpr HOST_INLINE uint32_t add_sub_limbs_host(const ff_storage &xs, const ff_storage &ys, ff_storage &rs)
  {
    const uint32_t *x = xs.limbs;
    const uint32_t *y = ys.limbs;
    uint32_t *r = rs.limbs;
    uint32_t carry = 0;
    host_math::carry_chain<TLC, false, CARRY_OUT> chain;
    for (unsigned i = 0; i < TLC; i++)
      r[i] = SUBTRACT ? chain.sub(x[i], y[i], carry) : chain.add(x[i], y[i], carry);
    return CARRY_OUT ? carry : 0;
  }

  template <bool SUBTRACT, bool CARRY_OUT>
  static constexpr HOST_INLINE uint32_t add_sub_limbs_host(const ff_wide_storage &xs, const ff_wide_storage &ys, ff_wide_storage &rs)
  {
    const uint32_t *x = xs.limbs;
    const uint32_t *y = ys.limbs;
    uint32_t *r = rs.limbs;
    uint32_t carry = 0;
    host_math::carry_chain<2 * TLC, false, CARRY_OUT> chain;
    for (unsigned i = 0; i < 2 * TLC; i++)
      r[i] = SUBTRACT ? chain.sub(x[i], y[i], carry) : chain.add(x[i], y[i], carry);
    return CARRY_OUT ? carry : 0;
  }

  template <bool CARRY_OUT, typename T>
  static constexpr HOST_DEVICE_INLINE uint32_t add_limbs(const T &xs, const T &ys, T &rs)
  {
#ifdef __CUDA_ARCH__
    return add_sub_limbs_device<false, CARRY_OUT>(xs, ys, rs);
#else
    return add_sub_limbs_host<false, CARRY_OUT>(xs, ys, rs);
#endif
  }

  template <bool CARRY_OUT, typename T>
  static constexpr HOST_DEVICE_INLINE uint32_t sub_limbs(const T &xs, const T &ys, T &rs)
  {
#ifdef __CUDA_ARCH__
    return add_sub_limbs_device<true, CARRY_OUT>(xs, ys, rs);
#else
    return add_sub_limbs_host<true, CARRY_OUT>(xs, ys, rs);
#endif
  }

  static DEVICE_INLINE void mul_n(uint32_t *acc, const uint32_t *a, uint32_t bi, size_t n = TLC)
  {
#pragma unroll
    for (size_t i = 0; i < n; i += 2)
    {
      acc[i] = ptx::mul_lo(a[i], bi);
      acc[i + 1] = ptx::mul_hi(a[i], bi);
    }
  }

  static DEVICE_INLINE void cmad_n(uint32_t *acc, const uint32_t *a, uint32_t bi, size_t n = TLC)
  {
    acc[0] = ptx::mad_lo_cc(a[0], bi, acc[0]);
    acc[1] = ptx::madc_hi_cc(a[0], bi, acc[1]);
#pragma unroll
    for (size_t i = 2; i < n; i += 2)
    {
      acc[i] = ptx::madc_lo_cc(a[i], bi, acc[i]);
      acc[i + 1] = ptx::madc_hi_cc(a[i], bi, acc[i + 1]);
    }
  }

  static DEVICE_INLINE void mad_row(uint32_t *odd, uint32_t *even, const uint32_t *a, uint32_t bi, size_t n = TLC)
  {
    cmad_n(odd, a + 1, bi, n - 2);
    odd[n - 2] = ptx::madc_lo_cc(a[n - 1], bi, 0);
    odd[n - 1] = ptx::madc_hi(a[n - 1], bi, 0);
    cmad_n(even, a, bi, n);
    odd[n - 1] = ptx::addc(odd[n - 1], 0);
  }

  static DEVICE_INLINE void multiply_raw_device(const ff_storage &as, const ff_storage &bs, ff_wide_storage &rs)
  {
    const uint32_t *a = as.limbs;
    const uint32_t *b = bs.limbs;
    uint32_t *even = rs.limbs;
    __align__(8) uint32_t odd[2 * TLC - 2];
    mul_n(even, a, b[0]);
    mul_n(odd, a + 1, b[0]);
    mad_row(&even[2], &odd[0], a, b[1]);
    size_t i;
#pragma unroll
    for (i = 2; i < TLC - 1; i += 2)
    {
      mad_row(&odd[i], &even[i], a, b[i]);
      mad_row(&even[i + 2], &odd[i], a, b[i + 1]);
    }
    // merge |even| and |odd|
    even[1] = ptx::add_cc(even[1], odd[0]);
    for (i = 1; i < 2 * TLC - 2; i++)
      even[i + 1] = ptx::addc_cc(even[i + 1], odd[i]);
    even[i + 1] = ptx::addc(even[i + 1], 0);
  }

  static HOST_INLINE void multiply_raw_host(const ff_storage &as, const ff_storage &bs, ff_wide_storage &rs)
  {
    const uint32_t *a = as.limbs;
    const uint32_t *b = bs.limbs;
    uint32_t *r = rs.limbs;
    for (unsigned i = 0; i < TLC; i++)
    {
      uint32_t carry = 0;
      for (unsigned j = 0; j < TLC; j++)
        r[j + i] = host_math::madc_cc(a[j], b[i], r[j + i], carry);
      r[TLC + i] = carry;
    }
  }

  static HOST_DEVICE_INLINE void multiply_raw(const ff_storage &as, const ff_storage &bs, ff_wide_storage &rs)
  {
#ifdef __CUDA_ARCH__
    return multiply_raw_device(as, bs, rs);
#else
    return multiply_raw_host(as, bs, rs);
#endif
  }

public:
  ff_storage limbs_storage;

  HOST_DEVICE_INLINE uint32_t *export_limbs()
  {
    return (uint32_t *)limbs_storage.limbs;
  }

  HOST_DEVICE_INLINE unsigned get_scalar_digit(unsigned digit_num, unsigned digit_width)
  {
    const uint32_t limb_lsb_idx = (digit_num * digit_width) / 32;
    const uint32_t shift_bits = (digit_num * digit_width) % 32;
    unsigned rv = limbs_storage.limbs[limb_lsb_idx] >> shift_bits;
    // printf("get_scalar_func digit %u rv %u\n",digit_num,rv);
    // if (shift_bits + digit_width > 32) {
    if ((shift_bits + digit_width > 32) && (limb_lsb_idx + 1 < TLC))
    {
      rv += limbs_storage.limbs[limb_lsb_idx + 1] << (32 - shift_bits);
    }
    rv &= ((1 << digit_width) - 1);
    return rv;
  }

  static HOST_INLINE Field rand_host()
  {
    std::random_device rd;
    std::mt19937_64 generator(rd());
    std::uniform_int_distribution<unsigned> distribution;
    Field value{};
    for (unsigned i = 0; i < TLC; i++)
      value.limbs_storage.limbs[i] = distribution(generator);
    while (lt(modulus(), value))
      value = value - modulus();
    return value;
  }

  template <unsigned REDUCTION_SIZE = 1>
  static constexpr HOST_DEVICE_INLINE Field reduce(const Field &xs)
  {
    if (REDUCTION_SIZE == 0)
      return xs;
    const ff_storage modulus = get_modulus<REDUCTION_SIZE>();
    Field rs = {};
    return sub_limbs<true>(xs.limbs_storage, modulus, rs.limbs_storage) ? xs : rs;
  }

  friend std::ostream &operator<<(std::ostream &os, const Field &xs)
  {
    os << "{";
    for (int i = 0; i < TLC; i++)
      os << xs.limbs_storage.limbs[i] << ", ";
    os << "}";
    return os;
  }

  friend HOST_DEVICE_INLINE Field operator+(Field xs, const Field &ys)
  {
    Field rs = {};
    add_limbs<false>(xs.limbs_storage, ys.limbs_storage, rs.limbs_storage);
    return reduce<1>(rs);
  }

  friend HOST_DEVICE_INLINE Field operator-(Field xs, const Field &ys)
  {
    Field rs = {};
    uint32_t carry = sub_limbs<true>(xs.limbs_storage, ys.limbs_storage, rs.limbs_storage);
    if (carry == 0)
      return rs;
    const ff_storage modulus = get_modulus<1>();
    add_limbs<false>(rs.limbs_storage, modulus, rs.limbs_storage);
    return rs;
  }

  template <unsigned MODULUS_MULTIPLE = 1>
  static constexpr HOST_DEVICE_INLINE wide mul_wide(const Field &xs, const Field &ys)
  {
    wide rs = {};
    multiply_raw(xs.limbs_storage, ys.limbs_storage, rs.limbs_storage);
    return rs;
  }

  friend HOST_DEVICE_INLINE Field operator*(const Field &xs, const Field &ys)
  {
    wide xy = mul_wide(xs, ys);
    Field xy_hi = xy.get_higher_with_slack();
    wide l = {};
    multiply_raw(xy_hi.limbs_storage, get_m(), l.limbs_storage);
    Field l_hi = l.get_higher_with_slack();
    wide lp = {};
    multiply_raw(l_hi.limbs_storage, get_modulus(), lp.limbs_storage);
    wide r_wide = xy - lp;
    wide r_wide_reduced = {};
    uint32_t reduced = sub_limbs<true>(r_wide.limbs_storage, modulus_wide(), r_wide_reduced.limbs_storage);
    r_wide = reduced ? r_wide : r_wide_reduced;
    Field r = r_wide.get_lower();
    return reduce<1>(r);
  }

  friend HOST_DEVICE_INLINE bool operator==(const Field &xs, const Field &ys)
  {
#ifdef __CUDA_ARCH__
    const uint32_t *x = xs.limbs_storage.limbs;
    const uint32_t *y = ys.limbs_storage.limbs;
    uint32_t limbs_or = x[0] ^ y[0];
#pragma unroll
    for (unsigned i = 1; i < TLC; i++)
      limbs_or |= x[i] ^ y[i];
    return limbs_or == 0;
#else
    for (unsigned i = 0; i < TLC; i++)
      if (xs.limbs_storage.limbs[i] != ys.limbs_storage.limbs[i])
        return false;
    return true;
#endif
  }

  friend HOST_DEVICE_INLINE bool operator!=(const Field &xs, const Field &ys)
  {
    return !(xs == ys);
  }

  template <unsigned REDUCTION_SIZE = 1>
  static constexpr HOST_DEVICE_INLINE Field mul(const unsigned scalar, const Field &xs)
  {
    Field rs = {};
    Field temp = xs;
    unsigned l = scalar;
    bool is_zero = true;
#ifdef __CUDA_ARCH__
#pragma unroll
#endif
    for (unsigned i = 0; i < 32; i++)
    {
      if (l & 1)
      {
        rs = is_zero ? temp : (rs + temp);
        is_zero = false;
      }
      l >>= 1;
      if (l == 0)
        break;
      temp = temp + temp;
    }
    return rs;
  }

  template <unsigned MODULUS_MULTIPLE = 1>
  static constexpr HOST_DEVICE_INLINE wide sqr_wide(const Field &xs)
  {
    // TODO: change to a more efficient squaring
    return mul_wide<MODULUS_MULTIPLE>(xs, xs);
  }

  template <unsigned MODULUS_MULTIPLE = 1>
  static constexpr HOST_DEVICE_INLINE Field sqr(const Field &xs)
  {
    // TODO: change to a more efficient squaring
    return xs * xs;
  }

  template <unsigned MODULUS_MULTIPLE = 1>
  static constexpr HOST_DEVICE_INLINE Field neg(const Field &xs)
  {
    const ff_storage modulus = get_modulus<MODULUS_MULTIPLE>();
    Field rs = {};
    sub_limbs<false>(modulus, xs.limbs_storage, rs.limbs_storage);
    return rs;
  }

  template <unsigned MODULUS_MULTIPLE = 1>
  static constexpr HOST_DEVICE_INLINE Field div2(const Field &xs)
  {
    const uint32_t *x = xs.limbs_storage.limbs;
    Field rs = {};
    uint32_t *r = rs.limbs_storage.limbs;
#ifdef __CUDA_ARCH__
#pragma unroll
#endif
    for (unsigned i = 0; i < TLC - 1; i++)
    {
#ifdef __CUDA_ARCH__
      r[i] = __funnelshift_rc(x[i], x[i + 1], 1);
#else
      r[i] = (x[i] >> 1) | (x[i + 1] << 31);
#endif
    }
    r[TLC - 1] = x[TLC - 1] >> 1;
    return reduce<MODULUS_MULTIPLE>(rs);
  }

  static constexpr HOST_DEVICE_INLINE bool lt(const Field &xs, const Field &ys)
  {
    ff_storage dummy = {};
    uint32_t carry = sub_limbs<true>(xs.limbs_storage, ys.limbs_storage, dummy);
    return carry;
  }

  static constexpr HOST_DEVICE_INLINE bool is_odd(const Field &xs)
  {
    return xs.limbs_storage.limbs[0] & 1;
  }

  static constexpr HOST_DEVICE_INLINE bool is_even(const Field &xs)
  {
    return ~xs.limbs_storage.limbs[0] & 1;
  }

  // inverse assumes that xs is nonzero
  static constexpr HOST_DEVICE_INLINE Field inverse(const Field &xs)
  {
    constexpr Field one = Field{CONFIG::one};
    constexpr ff_storage modulus = CONFIG::modulus;
    Field u = xs;
    Field v = Field{modulus};
    Field b = one;
    Field c = {};
    while (!(u == one) && !(v == one))
    {
      while (is_even(u))
      {
        u = div2(u);
        if (is_odd(b))
          add_limbs<false>(b.limbs_storage, modulus, b.limbs_storage);
        b = div2(b);
      }
      while (is_even(v))
      {
        v = div2(v);
        if (is_odd(c))
          add_limbs<false>(c.limbs_storage, modulus, c.limbs_storage);
        c = div2(c);
      }
      if (lt(v, u))
      {
        u = u - v;
        b = b - c;
      }
      else
      {
        v = v - u;
        c = c - b;
      }
    }
    return (u == one) ? b : c;
  }
};
