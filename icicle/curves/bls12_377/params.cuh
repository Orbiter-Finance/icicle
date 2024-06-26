#pragma once
#include "../../utils/storage.cuh"

namespace PARAMS_BLS12_377 {
  struct fp_config {
    static constexpr unsigned limbs_count = 8;
    static constexpr unsigned omegas_count = 32;

    static constexpr storage<limbs_count> modulus = {0x00000001, 0x0a118000, 0xd0000001, 0x59aa76fe,
                                                     0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e};
    static constexpr storage<limbs_count> modulus_2 = {0x00000002, 0x14230000, 0xa0000002, 0xb354edfd,
                                                       0xb86f6002, 0xc1689a3c, 0x34594aac, 0x2556cabd};
    static constexpr storage<limbs_count> modulus_4 = {0x00000004, 0x28460000, 0x40000004, 0x66a9dbfb,
                                                       0x70dec005, 0x82d13479, 0x68b29559, 0x4aad957a};
    static constexpr storage<2 * limbs_count> modulus_wide = {
      0x00000001, 0x0a118000, 0xd0000001, 0x59aa76fe, 0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e,
      0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<2 * limbs_count> modulus_squared = {
      0x00000001, 0x14230000, 0xe0000002, 0xc7dd4d2f, 0x8585d003, 0x08ee1bd4, 0xe57fc56e, 0x7e7557e3,
      0x483a709d, 0x1fdebb41, 0x5678f4e6, 0x8ea77334, 0xc19c3ec5, 0xd717de29, 0xe2340781, 0x015c8d01};
    static constexpr storage<2 * limbs_count> modulus_squared_2 = {
      0x00000002, 0x28460000, 0xc0000004, 0x8fba9a5f, 0x0b0ba007, 0x11dc37a9, 0xcaff8adc, 0xfceaafc7,
      0x9074e13a, 0x3fbd7682, 0xacf1e9cc, 0x1d4ee668, 0x83387d8b, 0xae2fbc53, 0xc4680f03, 0x02b91a03};
    static constexpr storage<2 * limbs_count> modulus_squared_4 = {
      0x00000004, 0x508c0000, 0x80000008, 0x1f7534bf, 0x1617400f, 0x23b86f52, 0x95ff15b8, 0xf9d55f8f,
      0x20e9c275, 0x7f7aed05, 0x59e3d398, 0x3a9dccd1, 0x0670fb16, 0x5c5f78a7, 0x88d01e07, 0x05723407};
    static constexpr unsigned modulus_bit_count = 253;
    static constexpr storage<limbs_count> m = {0x151e79ea, 0xf5204c21, 0x8d69e258, 0xfd0a180b,
                                               0xfaa80548, 0xe4e51e49, 0xc40b2c9e, 0x36d9491e};
    static constexpr storage<limbs_count> one = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> zero = {0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                  0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> montgomery_r = {0xfffffff3, 0x7d1c7fff, 0x6ffffff2, 0x7257f50f,
                                                          0x512c0fee, 0x16d81575, 0x2bbb9a9d, 0x0d4bda32};
    static constexpr storage<limbs_count> montgomery_r_inv = {0x1beeec02, 0x4122dd1a, 0x74fee875, 0xbd1eae95,
                                                              0x27b28e2f, 0x838557e2, 0x2290c02c, 0x07b30191};

    static constexpr storage<limbs_count> omega1 = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                    0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> omega2 = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                    0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> omega3 = {0x00000000, 0x0a118000, 0xd0000001, 0x59aa76fe,
                                                    0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e};
    static constexpr storage<limbs_count> omega4 = {0x00000001, 0x8f1a4000, 0xb0000001, 0xcf664765,
                                                    0x970dec00, 0x23ed1347, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> omega5 = {0x0405f600, 0xfa8e7081, 0xf8a89660, 0x38b1c291,
                                                    0x6bda5fce, 0xefab9005, 0x92a3c754, 0x0b6b0756};
    static constexpr storage<limbs_count> omega6 = {0xaf0a50c8, 0xc5b2c78e, 0x4636deb3, 0x72e32a34,
                                                    0xb6f97778, 0x3d775d15, 0x2b16be6e, 0x0c4c070d};
    static constexpr storage<limbs_count> omega7 = {0x7a1ade2c, 0x3f5a4e73, 0x0120d1db, 0x71e5bca1,
                                                    0x3b2866fd, 0xbcb44162, 0x89c38db1, 0x06ed1a90};
    static constexpr storage<limbs_count> omega8 = {0xbd2cd25e, 0x61c5510e, 0x2b0d531c, 0xe2d70111,
                                                    0x94c3bd4b, 0x738f9894, 0x53182695, 0x0b1e0f1d};
    static constexpr storage<limbs_count> omega9 = {0x8cb9508c, 0xcfb2f75e, 0xf491e401, 0x4c14f244,
                                                    0x23c16afb, 0xc8f5265f, 0x70f3ff2a, 0x0cda7e27};
    static constexpr storage<limbs_count> omega10 = {0x0bdc32ee, 0xca77feb9, 0xd957f5a9, 0xf36ddfd4,
                                                     0x61ba14c4, 0x491c58f5, 0x93e8f339, 0x0618d3c9};
    static constexpr storage<limbs_count> omega11 = {0x2d89d82f, 0x68c3242e, 0x832a3729, 0xf9559645,
                                                     0xbceb62cc, 0x5c803c5e, 0x99ffa2f8, 0x1177cf5d};
    static constexpr storage<limbs_count> omega12 = {0x6932851a, 0xb6ed40f2, 0x1e0da12e, 0x79cbe7fb,
                                                     0x2a7d8f87, 0x8d408575, 0x7505d049, 0x11867341};
    static constexpr storage<limbs_count> omega13 = {0x07146cbf, 0x8cf7d87a, 0x109c4d23, 0x14ac37dc,
                                                     0x883e9660, 0x082d15f0, 0xad9ea9b8, 0x003719b1};
    static constexpr storage<limbs_count> omega14 = {0xfd0aee77, 0x2260e0dd, 0x1e33b6db, 0xc0cbbc3f,
                                                     0xfe7e1b36, 0xc8bf6747, 0x4cb802c1, 0x129e4fd5};
    static constexpr storage<limbs_count> omega15 = {0x8ac75741, 0x22f6fca2, 0xdd37b519, 0x8101b557,
                                                     0x1036226a, 0xf493bb8a, 0xfce05c2c, 0x06dbad6c};
    static constexpr storage<limbs_count> omega16 = {0x56733f8b, 0x7d246c24, 0xff70b46a, 0xbc3c4112,
                                                     0x6f13530b, 0x2c159b40, 0xc55d287b, 0x0c13137a};
    static constexpr storage<limbs_count> omega17 = {0xec8af73d, 0x8d24de3c, 0xcf722b45, 0x50f778d4,
                                                     0x15bc7dd7, 0xf4506bc3, 0xf94a16e1, 0x0e43ba91};
    static constexpr storage<limbs_count> omega18 = {0xd4405b8f, 0x0baa7b44, 0xee0f1394, 0xf8f3c7fe,
                                                     0xef0dfe6d, 0x46b153c0, 0x2dde6b95, 0x0ea2bcd9};
    static constexpr storage<limbs_count> omega19 = {0x3d1fa34e, 0x5f4dc975, 0x15af81db, 0xc28e54ee,
                                                     0x04947d99, 0x83d9a55f, 0x54a2b488, 0x08ec7ccf};
    static constexpr storage<limbs_count> omega20 = {0x0cac0ee8, 0x0d8fa7b3, 0x82ef38e4, 0x756284ed,
                                                     0xac8f90d2, 0x7014b194, 0x634e5d50, 0x092488f8};
    static constexpr storage<limbs_count> omega21 = {0x6d34ed69, 0xd85399bf, 0x09e49cef, 0x4d9012ba,
                                                     0xca00ae5d, 0x020142ee, 0x3bdfebfd, 0x12772e57};
    static constexpr storage<limbs_count> omega22 = {0x2eb41723, 0x676c8fc7, 0x5dd895bd, 0xe20380e2,
                                                     0x9bf22dde, 0x09dc8be8, 0x42638176, 0x12822f94};
    static constexpr storage<limbs_count> omega23 = {0x81a6d2de, 0x1f1df770, 0xcf29c812, 0x5d33b2da,
                                                     0x134f0e7e, 0x1bf162de, 0x1e2877a8, 0x045162c4};
    static constexpr storage<limbs_count> omega24 = {0xfecda1b6, 0x24f4503b, 0xded67d3c, 0x0e5d7ed3,
                                                     0x40cf20af, 0x2b7b7e5e, 0x4faad6af, 0x0d472650};
    static constexpr storage<limbs_count> omega25 = {0x584b9eb1, 0xcc6c474c, 0x15a8d886, 0x47670804,
                                                     0xbb8654c5, 0x07736d2f, 0xeb207a4b, 0x0d14ce7a};
    static constexpr storage<limbs_count> omega26 = {0xed25924a, 0xd1c6471c, 0x6bc312c3, 0xd98bb374,
                                                     0xfeae1a41, 0x50be0848, 0x3265c719, 0x04b07dea};
    static constexpr storage<limbs_count> omega27 = {0x618241e3, 0xab13f73e, 0x166ca902, 0x571c9267,
                                                     0x5e828a6d, 0x8586443a, 0x6daba50b, 0x093fdf2f};
    static constexpr storage<limbs_count> omega28 = {0xee11c34f, 0xe688e66b, 0xeacecf5a, 0xdc232eae,
                                                     0xb95ae685, 0x4fc35094, 0x7c1d31dc, 0x0273b5bd};
    static constexpr storage<limbs_count> omega29 = {0x1a9057bd, 0x8a8a5a77, 0x41834fbb, 0xdcbfae1d,
                                                     0xb34ede6e, 0x534f5b97, 0xb78bbd3e, 0x07313ac5};
    static constexpr storage<limbs_count> omega30 = {0x2be70731, 0x287abbb1, 0x7c35c5aa, 0x5cbcfd1e,
                                                     0x1671f4df, 0x7585b3fe, 0xb899c011, 0x08350ecf};
    static constexpr storage<limbs_count> omega31 = {0x09f7c5e2, 0x3400c14e, 0x0a649ea1, 0xc112e60c,
                                                     0x067ce95e, 0xf7510758, 0xf9daf17c, 0x040a66a5};
    static constexpr storage<limbs_count> omega32 = {0x43efecd3, 0x89d65957, 0x3bd6c318, 0x29246adc,
                                                     0xce01533c, 0xf9fb5ef6, 0x849078c3, 0x020410e4};

    static constexpr storage_array<omegas_count, limbs_count> omega = {
      omega1,  omega2,  omega3,  omega4,  omega5,  omega6,  omega7,  omega8,  omega9,  omega10, omega11,
      omega12, omega13, omega14, omega15, omega16, omega17, omega18, omega19, omega20, omega21, omega22,
      omega23, omega24, omega25, omega26, omega27, omega28, omega29, omega30, omega31, omega32,
    };

    static constexpr storage<limbs_count> omega_inv1 = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                        0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> omega_inv2 = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                        0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> omega_inv3 = {0x00000000, 0x0a118000, 0xd0000001, 0x59aa76fe,
                                                        0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e};
    static constexpr storage<limbs_count> omega_inv4 = {0x00000000, 0x7af74000, 0x1fffffff, 0x8a442f99,
                                                        0xc529c400, 0x3cc739d6, 0x9a2ca556, 0x12ab655e};
    static constexpr storage<limbs_count> omega_inv5 = {0x29f04fbb, 0x401766f3, 0x0a4b98b2, 0x7e4e5f63,
                                                        0x9fbc28da, 0x35887f12, 0xdabe3b97, 0x045cb225};
    static constexpr storage<limbs_count> omega_inv6 = {0xac4ce534, 0xf3883827, 0x7c4940f0, 0x9f9a114f,
                                                        0x32cc3182, 0xe48527ee, 0x2877f4c2, 0x02d4450c};
    static constexpr storage<limbs_count> omega_inv7 = {0x4afbf0bb, 0xd2533833, 0x1d646d56, 0x20987ba6,
                                                        0xb8ae7d61, 0xf2c34c11, 0xb53ae995, 0x09962e74};
    static constexpr storage<limbs_count> omega_inv8 = {0x34f5271a, 0xd6aeb755, 0x493bb125, 0xc0e24cfd,
                                                        0x35cf1879, 0xc9d2a1ad, 0x19000e58, 0x0f3570fa};
    static constexpr storage<limbs_count> omega_inv9 = {0xbec3ee61, 0x2601423e, 0xb5252af1, 0x94f5ab4b,
                                                        0x205d09ca, 0xa1184628, 0x82a1fba2, 0x0e305e1e};
    static constexpr storage<limbs_count> omega_inv10 = {0x7e3320f2, 0x3cbad3a7, 0x4269c624, 0x7866653a,
                                                         0xa2fc13a2, 0xaf6d742d, 0xfe24db2a, 0x03ed8246};
    static constexpr storage<limbs_count> omega_inv11 = {0x30cff7d3, 0xcb6ab09e, 0xd88db7e6, 0x29949e69,
                                                         0x24db3cd4, 0xb9117dc6, 0xca8d11b5, 0x01b2aadd};
    static constexpr storage<limbs_count> omega_inv12 = {0x433b851c, 0x1c8fbc5d, 0x545e622f, 0x0ccc3b8c,
                                                         0x5c624e0f, 0x0fba9df2, 0x0496ddf9, 0x02d54c5d};
    static constexpr storage<limbs_count> omega_inv13 = {0x0a176838, 0x2ddbbfdd, 0xc4c77f0f, 0xb7a1e4f3,
                                                         0x41cad032, 0x645b4383, 0xbfb123c4, 0x0f3fe2e3};
    static constexpr storage<limbs_count> omega_inv14 = {0x9ff30538, 0x1d6d50fe, 0x8576b6fa, 0xca07f2d2,
                                                         0x720da6d2, 0x587839fa, 0xe9ebd753, 0x0038d5aa};
    static constexpr storage<limbs_count> omega_inv15 = {0x8e30fb24, 0xaeac713d, 0x21906459, 0xd004e9e3,
                                                         0xa60b0a33, 0x2fc54303, 0x14e545a6, 0x039063f8};
    static constexpr storage<limbs_count> omega_inv16 = {0x74d36c47, 0x112559bd, 0x4154b77a, 0x87db7016,
                                                         0x3843df80, 0x9e779ae5, 0x297077d0, 0x024424f2};
    static constexpr storage<limbs_count> omega_inv17 = {0x65953c15, 0xd649ae5e, 0x56accc60, 0x879fe571,
                                                         0xa3ba1e39, 0xba914f52, 0xd6ea78a2, 0x01b74920};
    static constexpr storage<limbs_count> omega_inv18 = {0x3d8a82b4, 0x319dea45, 0x8fc703de, 0x49468894,
                                                         0xc6b00817, 0x703f710f, 0xe862bc53, 0x007762fd};
    static constexpr storage<limbs_count> omega_inv19 = {0x5bae083f, 0x4f433336, 0x27612fe3, 0x485e079c,
                                                         0x7f8f0a07, 0xf83b6572, 0xca91a4d4, 0x06bdcaaf};
    static constexpr storage<limbs_count> omega_inv20 = {0xb2fb63eb, 0x4a0bf5e7, 0x996004d9, 0x6f64f8ec,
                                                         0x67519c5e, 0x0fecd781, 0x1cab2760, 0x04475eb3};
    static constexpr storage<limbs_count> omega_inv21 = {0xcd83d14f, 0xadbd6ce4, 0x750b194a, 0xc664d3bc,
                                                         0x89c9f437, 0x3034dfed, 0xcc2e643b, 0x03d502b8};
    static constexpr storage<limbs_count> omega_inv22 = {0x2272320b, 0xf89478a9, 0xd2e658b7, 0x3adac024,
                                                         0x94b25831, 0xf38d840f, 0x37dc6c4c, 0x04540b1f};
    static constexpr storage<limbs_count> omega_inv23 = {0xa6d411fe, 0x19d969b1, 0xf544a648, 0x973f00f7,
                                                         0xc9ed9f93, 0xb18f166c, 0xe7f21124, 0x02fba68e};
    static constexpr storage<limbs_count> omega_inv24 = {0x94921227, 0x78b96b20, 0x23b35b65, 0x07cd90db,
                                                         0xc843f1c3, 0x111f4fd9, 0xff729f23, 0x0ec4b820};
    static constexpr storage<limbs_count> omega_inv25 = {0x4879d823, 0x53eb200b, 0x93095f4a, 0x1971fac3,
                                                         0x86989a58, 0x8467ffe6, 0x306ed29d, 0x0af20231};
    static constexpr storage<limbs_count> omega_inv26 = {0xd4793454, 0x71c907bd, 0x7700defb, 0xc11aa47e,
                                                         0xbac11769, 0xf03e0873, 0x97419136, 0x0353190d};
    static constexpr storage<limbs_count> omega_inv27 = {0xa81a701c, 0x61a3deb6, 0x91bbbecf, 0xd8a4eda1,
                                                         0x6feb65df, 0x3f5339b1, 0x8b5421f2, 0x108adc5b};
    static constexpr storage<limbs_count> omega_inv28 = {0xe7bf5a41, 0x7d6c573a, 0xfa83b1f7, 0x8038b697,
                                                         0xa6718ce9, 0x2a988bee, 0x1239b708, 0x0846f362};
    static constexpr storage<limbs_count> omega_inv29 = {0xe3373548, 0x89a068a4, 0x78a6c4e5, 0xf31284cf,
                                                         0x6e9396d6, 0x9eed5c8d, 0x7e4342f9, 0x01643c65};
    static constexpr storage<limbs_count> omega_inv30 = {0x123a81f6, 0xc03a3272, 0x115b15e8, 0x377e6d2f,
                                                         0x2d6d7206, 0xed5575e4, 0x714004f2, 0x0b1e37e4};
    static constexpr storage<limbs_count> omega_inv31 = {0xdde8ffc5, 0x62a29589, 0x618c5d62, 0xfb6716e8,
                                                         0x88d61f25, 0x787e561c, 0xd2b21c7e, 0x0e351761};
    static constexpr storage<limbs_count> omega_inv32 = {0x7aca7fbe, 0xc9fea0e9, 0xb41a8854, 0x965ff314,
                                                         0x810eea7e, 0x743415d4, 0x8275bbd1, 0x0431c01b};

    static constexpr storage_array<omegas_count, limbs_count> omega_inv = {
      omega_inv1,  omega_inv2,  omega_inv3,  omega_inv4,  omega_inv5,  omega_inv6,  omega_inv7,  omega_inv8,
      omega_inv9,  omega_inv10, omega_inv11, omega_inv12, omega_inv13, omega_inv14, omega_inv15, omega_inv16,
      omega_inv17, omega_inv18, omega_inv19, omega_inv20, omega_inv21, omega_inv22, omega_inv23, omega_inv24,
      omega_inv25, omega_inv26, omega_inv27, omega_inv28, omega_inv29, omega_inv30, omega_inv31, omega_inv32,
    };

    static constexpr storage<limbs_count> inv1 = {0x00000001, 0x8508c000, 0x68000000, 0xacd53b7f,
                                                  0x2e1bd800, 0x305a268f, 0x4d1652ab, 0x0955b2af};
    static constexpr storage<limbs_count> inv2 = {0x00000001, 0xc78d2000, 0x1c000000, 0x033fd93f,
                                                  0xc529c401, 0xc88739d6, 0xf3a17c00, 0x0e008c06};
    static constexpr storage<limbs_count> inv3 = {0x00000001, 0xe8cf5000, 0xf6000000, 0x2e75281e,
                                                  0x90b0ba01, 0x949dc37a, 0xc6e710ab, 0x1055f8b2};
    static constexpr storage<limbs_count> inv4 = {0x00000001, 0xf9706800, 0xe3000000, 0x440fcf8e,
                                                  0x76743501, 0xfaa9084c, 0xb089db00, 0x1180af08};
    static constexpr storage<limbs_count> inv5 = {0x00000001, 0x01c0f400, 0xd9800001, 0x4edd2346,
                                                  0x6955f281, 0xadaeaab5, 0xa55b402b, 0x12160a33};
    static constexpr storage<limbs_count> inv6 = {0x00000001, 0x05e93a00, 0xd4c00001, 0x5443cd22,
                                                  0xe2c6d141, 0x07317be9, 0x1fc3f2c1, 0x1260b7c9};
    static constexpr storage<limbs_count> inv7 = {0x00000001, 0x07fd5d00, 0xd2600001, 0x56f72210,
                                                  0x1f7f40a1, 0xb3f2e484, 0xdcf84c0b, 0x12860e93};
    static constexpr storage<limbs_count> inv8 = {0x00000001, 0x09076e80, 0xd1300001, 0x5850cc87,
                                                  0x3ddb7851, 0x0a5398d1, 0x3b9278b1, 0x1298b9f9};
    static constexpr storage<limbs_count> inv9 = {0x00000001, 0x098c7740, 0x50980001, 0x58fda1c3,
                                                  0xcd099429, 0xb583f2f7, 0xeadf8f03, 0x12a20fab};
    static constexpr storage<limbs_count> inv10 = {0x00000001, 0x09cefba0, 0x104c0001, 0x59540c61,
                                                   0x14a0a215, 0x0b1c200b, 0x42861a2d, 0x12a6ba85};
    static constexpr storage<limbs_count> inv11 = {0x00000001, 0x09f03dd0, 0xf0260001, 0x597f41af,
                                                   0xb86c290b, 0xb5e83694, 0xee595fc1, 0x12a90ff1};
    static constexpr storage<limbs_count> inv12 = {0x00000001, 0x0a00dee8, 0x60130001, 0x5994dc57,
                                                   0x8a51ec86, 0x0b4e41d9, 0x4443028c, 0x12aa3aa8};
    static constexpr storage<limbs_count> inv13 = {0x00000001, 0x0a092f74, 0x18098001, 0xd99fa9ab,
                                                   0xf344ce43, 0x3601477b, 0x6f37d3f1, 0x12aad003};
    static constexpr storage<limbs_count> inv14 = {0x00000001, 0x0a0d57ba, 0xf404c001, 0x99a51054,
                                                   0x27be3f22, 0xcb5aca4d, 0x04b23ca3, 0x12ab1ab1};
    static constexpr storage<limbs_count> inv15 = {0x00000001, 0x0a0f6bdd, 0xe2026001, 0xf9a7c3a9,
                                                   0xc1faf791, 0x16078bb5, 0xcf6f70fd, 0x12ab4007};
    static constexpr storage<limbs_count> inv16 = {0x80000001, 0x0a1075ee, 0x59013001, 0xa9a91d54,
                                                   0x0f1953c9, 0xbb5dec6a, 0x34ce0b29, 0x12ab52b3};
    static constexpr storage<limbs_count> inv17 = {0x40000001, 0x0a10faf7, 0x94809801, 0x81a9ca29,
                                                   0x35a881e5, 0x0e091cc4, 0xe77d5840, 0x12ab5c08};
    static constexpr storage<limbs_count> inv18 = {0xa0000001, 0x0a113d7b, 0x32404c01, 0x6daa2094,
                                                   0x48f018f3, 0x375eb4f1, 0xc0d4fecb, 0x12ab60b3};
    static constexpr storage<limbs_count> inv19 = {0xd0000001, 0x0a115ebd, 0x81202601, 0x63aa4bc9,
                                                   0xd293e47a, 0xcc098107, 0x2d80d210, 0x12ab6309};
    static constexpr storage<limbs_count> inv20 = {0xe8000001, 0x0a116f5e, 0x28901301, 0xdeaa6164,
                                                   0x1765ca3d, 0x965ee713, 0xe3d6bbb3, 0x12ab6433};
    static constexpr storage<limbs_count> inv21 = {0x74000001, 0x0a1177af, 0x7c480981, 0x9c2a6c31,
                                                   0xb9cebd1f, 0xfb899a18, 0x3f01b084, 0x12ab64c9};
    static constexpr storage<limbs_count> inv22 = {0xba000001, 0x0a117bd7, 0x262404c1, 0x7aea7198,
                                                   0x8b033690, 0xae1ef39b, 0xec972aed, 0x12ab6513};
    static constexpr storage<limbs_count> inv23 = {0xdd000001, 0x0a117deb, 0x7b120261, 0xea4a744b,
                                                   0xf39d7348, 0x0769a05c, 0x4361e822, 0x12ab6539};
    static constexpr storage<limbs_count> inv24 = {0xee800001, 0x0a117ef5, 0x25890131, 0x21fa75a5,
                                                   0xa7ea91a5, 0x340ef6bd, 0xeec746bc, 0x12ab654b};
    static constexpr storage<limbs_count> inv25 = {0xf7400001, 0x0a117f7a, 0xfac48099, 0x3dd27651,
                                                   0x021120d3, 0x4a61a1ee, 0x4479f609, 0x12ab6555};
    static constexpr storage<limbs_count> inv26 = {0x7ba00001, 0x0a117fbd, 0x6562404d, 0x4bbe76a8,
                                                   0x2f24686a, 0xd58af786, 0xef534daf, 0x12ab6559};
    static constexpr storage<limbs_count> inv27 = {0xbdd00001, 0x0a117fde, 0x9ab12027, 0xd2b476d3,
                                                   0x45ae0c35, 0x1b1fa252, 0x44bff983, 0x12ab655c};
    static constexpr storage<limbs_count> inv28 = {0x5ee80001, 0x0a117fef, 0x35589014, 0x962f76e9,
                                                   0x50f2de1b, 0xbde9f7b8, 0x6f764f6c, 0x12ab655d};
    static constexpr storage<limbs_count> inv29 = {0xaf740001, 0x8a117ff7, 0x02ac480a, 0x77ecf6f4,
                                                   0x5695470e, 0x8f4f226b, 0x04d17a61, 0x12ab655e};
    static constexpr storage<limbs_count> inv30 = {0xd7ba0001, 0xca117ffb, 0x69562405, 0xe8cbb6f9,
                                                   0xd9667b87, 0xf801b7c4, 0x4f7f0fdb, 0x12ab655e};
    static constexpr storage<limbs_count> inv31 = {0xebdd0001, 0x6a117ffd, 0x1cab1203, 0xa13b16fc,
                                                   0x9acf15c4, 0x2c5b0271, 0x74d5da99, 0x12ab655e};
    static constexpr storage<limbs_count> inv32 = {0xf5ee8001, 0x3a117ffe, 0x76558902, 0xfd72c6fd,
                                                   0xfb8362e2, 0xc687a7c7, 0x87813ff7, 0x12ab655e};

    static constexpr storage_array<omegas_count, limbs_count> inv = {
      inv1,  inv2,  inv3,  inv4,  inv5,  inv6,  inv7,  inv8,  inv9,  inv10, inv11, inv12, inv13, inv14, inv15, inv16,
      inv17, inv18, inv19, inv20, inv21, inv22, inv23, inv24, inv25, inv26, inv27, inv28, inv29, inv30, inv31, inv32,
    };
  };

  struct fq_config {
    static constexpr unsigned limbs_count = 12;
    static constexpr storage<limbs_count> modulus = {0x00000001, 0x8508c000, 0x30000000, 0x170b5d44,
                                                     0xba094800, 0x1ef3622f, 0x00f5138f, 0x1a22d9f3,
                                                     0x6ca1493b, 0xc63b05c0, 0x17c510ea, 0x01ae3a46};
    static constexpr storage<limbs_count> modulus_2 = {0x00000002, 0x0a118000, 0x60000001, 0x2e16ba88,
                                                       0x74129000, 0x3de6c45f, 0x01ea271e, 0x3445b3e6,
                                                       0xd9429276, 0x8c760b80, 0x2f8a21d5, 0x035c748c};
    static constexpr storage<limbs_count> modulus_4 = {0x00000004, 0x14230000, 0xc0000002, 0x5c2d7510,
                                                       0xe8252000, 0x7bcd88be, 0x03d44e3c, 0x688b67cc,
                                                       0xb28524ec, 0x18ec1701, 0x5f1443ab, 0x06b8e918};
    static constexpr storage<2 * limbs_count> modulus_wide = {
      0x00000001, 0x8508c000, 0x30000000, 0x170b5d44, 0xba094800, 0x1ef3622f, 0x00f5138f, 0x1a22d9f3,
      0x6ca1493b, 0xc63b05c0, 0x17c510ea, 0x01ae3a46, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
      0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<2 * limbs_count> modulus_squared = {
      0x00000001, 0x0a118000, 0xf0000001, 0x7338d254, 0x2e1bd800, 0x4ada268f, 0x35f1c09a, 0x6bcbfbd2,
      0x58638c9d, 0x318324b9, 0x8bb70ae0, 0x460aaaaa, 0x502a4d6c, 0xc014e712, 0xb90660cd, 0x09d018af,
      0x3dda4d5c, 0x1f5e7141, 0xa4aee93f, 0x4bb8b87d, 0xb361263c, 0x2256913b, 0xd0bbaffb, 0x0002d307};
    static constexpr storage<2 * limbs_count> modulus_squared_2 = {
      0x00000002, 0x14230000, 0xe0000002, 0xe671a4a9, 0x5c37b000, 0x95b44d1e, 0x6be38134, 0xd797f7a4,
      0xb0c7193a, 0x63064972, 0x176e15c0, 0x8c155555, 0xa0549ad8, 0x8029ce24, 0x720cc19b, 0x13a0315f,
      0x7bb49ab8, 0x3ebce282, 0x495dd27e, 0x977170fb, 0x66c24c78, 0x44ad2277, 0xa1775ff6, 0x0005a60f};
    static constexpr storage<2 * limbs_count> modulus_squared_4 = {
      0x00000004, 0x28460000, 0xc0000004, 0xcce34953, 0xb86f6001, 0x2b689a3c, 0xd7c70269, 0xaf2fef48,
      0x618e3275, 0xc60c92e5, 0x2edc2b80, 0x182aaaaa, 0x40a935b1, 0x00539c49, 0xe4198337, 0x274062be,
      0xf7693570, 0x7d79c504, 0x92bba4fc, 0x2ee2e1f6, 0xcd8498f1, 0x895a44ee, 0x42eebfec, 0x000b4c1f};
    static constexpr unsigned modulus_bit_count = 377;
    static constexpr storage<limbs_count> m = {0x5e4daffc, 0x1f9fd58c, 0x89c42a59, 0xd0ed6877, 0xd85a6d02, 0x6af2d488,
                                               0x6776b1a0, 0x3bbad0de, 0x582ef4f7, 0x976c3ca0, 0x0cc4060e, 0x0261508d};
    static constexpr storage<limbs_count> one = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> zero = {0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                  0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                  0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> montgomery_r = {0xffffff,   0xf73fffff, 0xffffff7a, 0xf4a2bbcf,
                                                          0xf6b7ffe8, 0x0c9dd045, 0x0aec70e1, 0xdd260cff,
                                                          0x5eb6c4e5, 0xc4fa3f93, 0x3aef1539, 0x51c5b9e8};
    static constexpr storage<limbs_count> montgomery_r_inv = {0x934f3a1,  0xb0909a28, 0xc1cfac62, 0x3264aa55,
                                                              0x2a491ae8, 0xaccd49ca, 0xe80e9a61, 0x28b2dce9,
                                                              0x26f7c08a, 0x4d313ea1, 0x36254563, 0x161de1ee};
    // i^2, the square of the imaginary unit for the extension field
    static constexpr uint32_t i_squared = 5;
    // true if i^2 is negative
    static constexpr bool i_squared_is_negative = true;
    // G1 and G2 generators
    static constexpr storage<limbs_count> g1_gen_x = {0xb21be9ef, 0xeab9b16e, 0xffcd394e, 0xd5481512,
                                                      0xbd37cb5c, 0x188282c8, 0xaa9d41bb, 0x85951e2c,
                                                      0xbf87ff54, 0xc8fc6225, 0xfe740a67, 0x008848de};
    static constexpr storage<limbs_count> g1_gen_y = {0x559c8ea6, 0xfd82de55, 0x34a9591a, 0xc2fe3d36,
                                                      0x4fb82305, 0x6d182ad4, 0xca3e52d9, 0xbd7fb348,
                                                      0x30afeec4, 0x1f674f5d, 0xc5102eff, 0x01914a69};
    static constexpr storage<limbs_count> g2_gen_x_re = {0x7c005196, 0x74e3e48f, 0xbb535402, 0x71889f52,
                                                         0x57db6b9b, 0x7ea501f5, 0x203e5031, 0xc565f071,
                                                         0xa3841d01, 0xc89630a2, 0x71c785fe, 0x018480be};
    static constexpr storage<limbs_count> g2_gen_x_im = {0x6ea16afe, 0xb26bfefa, 0xbff76fe6, 0x5cf89984,
                                                         0x0799c9de, 0xe7223ece, 0x6651cecb, 0x532777ee,
                                                         0xb1b140d5, 0x70dc5a51, 0xe7004031, 0x00ea6040};
    static constexpr storage<limbs_count> g2_gen_y_re = {0x09fd4ddf, 0xf0940944, 0x6d8c7c2e, 0xf2cf8888,
                                                         0xf832d204, 0xe458c282, 0x74b49a58, 0xde03ed72,
                                                         0xcbb2efb4, 0xd960736b, 0x5d446f7b, 0x00690d66};
    static constexpr storage<limbs_count> g2_gen_y_im = {0x85eb8f93, 0xd9a1cdd1, 0x5e52270b, 0x4279b83f,
                                                         0xcee304c2, 0x2463b01a, 0x3d591bf1, 0x61ef11ac,
                                                         0x151a70aa, 0x9e549da3, 0xd2835518, 0x00f8169f};
  };

  static constexpr storage<fq_config::limbs_count> weierstrass_b = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                                    0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                                    0x00000000, 0x00000000, 0x00000000, 0x00000000};
  static constexpr storage<fq_config::limbs_count> weierstrass_b_g2_re = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
  static constexpr storage<fq_config::limbs_count> weierstrass_b_g2_im = {
    0x9999999a, 0x1c9ed999, 0x1ccccccd, 0x0dd39e5c, 0x3c6bf800, 0x129207b6,
    0xcd5fd889, 0xdc7b4f91, 0x7460c589, 0x43bd0373, 0xdb0fd6f3, 0x010222f6};
} // namespace PARAMS_BLS12_377
