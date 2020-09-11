s32 func_5a58(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    f32 sp38;
    f32 sp34;
    f32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_5;
    f32 temp_f0_7;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f2;
    f32 temp_f4;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_6;
    f64 temp_f12;
    f64 temp_f12_2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 temp_f2_4;
    s32 temp_a3;
    s32 temp_f6;
    s32 temp_f6_2;
    s32 temp_ret;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    f32 phi_f16;
    f32 phi_f14;
    f64 phi_f2;
    f32 phi_f12;
    f64 phi_f2_2;
    f32 phi_f6;
    f32 phi_f14_2;
    void *phi_a0;
    s32 phi_a2;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_return;
    f32 phi_f12_2;
    f32 phi_f12_3;

    temp_a0 = arg2;
    temp_f0 = temp_a0->unk18;
    temp_f2 = temp_a0->unk20;
    temp_f4 = temp_f0 * temp_f0;
    arg2 = temp_a0;
    temp_f0_2 = func_00034F60(temp_f4 + (temp_f2 * temp_f2), temp_a0);
    temp_a0_2 = arg2;
    temp_f14 = arg1;
    sp34 = temp_f0_2;
    sp48 = 0;
    if ((arg0 != 0.0f) || (temp_f14 != 0.0f)) {
        arg2 = temp_a0_2;
        arg1 = temp_f14;
        temp_a0_3 = arg2;
        temp_f16 = (f32) ((f64) func_00034F60((arg0 * arg0) + (temp_f14 * temp_f14), temp_f14, temp_a0_2) * *(void *)0x80070FD8);
        temp_f12_2 = (f64) temp_f16;
        phi_f16 = temp_f16;
        phi_f14 = arg1;
        if (2.0 < temp_f12_2) {
            temp_f0_4 = (f64) arg0;
            temp_f2_3 = (f64) arg1;
            arg0 = (f32) ((temp_f0_4 + temp_f0_4) / temp_f12_2);
            phi_f16 = 2.0f;
            phi_f14 = (f32) ((temp_f2_3 + temp_f2_3) / temp_f12_2);
        }
        arg2 = temp_a0_3;
        sp38 = phi_f16;
        temp_f0_5 = func_00023210(arg0, phi_f14, temp_a0_3);
        temp_a0_4 = arg2;
        sp24 = temp_a0_4->unk10;
        temp_f12_3 = temp_f0_5 - sp24;
        temp_f2_4 = (f64) temp_f12_3;
        if (*(void *)0x80070FE0 < temp_f2_4) {
            phi_f12_2 = (f32) (temp_f2_4 - *(void *)0x80070FE8);
block_8:
            phi_f2 = (f64) phi_f12_2;
            phi_f12 = phi_f12_2;
        } else {
            phi_f2 = temp_f2_4;
            phi_f12 = temp_f12_3;
            if (temp_f2_4 < *(void *)0x80070FF0) {
                phi_f12_2 = (f32) (temp_f2_4 + *(void *)0x80070FF8);
                goto block_8;
            }
        }
        if (*(void *)0x80071000 < phi_f2) {
            phi_f12_3 = *(void *)0x80071008;
block_13:
            phi_f12 = phi_f12_3;
            phi_f2_2 = (f64) phi_f12_3;
        } else {
            phi_f2_2 = phi_f2;
            if (phi_f2 < *(void *)0x80071010) {
                phi_f12_3 = *(void *)0x80071018;
                goto block_13;
            }
        }
        if (0.0f <= phi_f12) {
            phi_f14_2 = phi_f12;
        } else {
            phi_f14_2 = -phi_f12;
        }
        temp_f16_2 = (f32) ((f64) phi_f16 * (1.0 - ((f64) phi_f14_2 / *(void *)0x80071020)));
        temp_a0_4->unk10 = (f32) ((f64) sp24 + (phi_f2_2 * 0.5));
        temp_f0_6 = (f64) temp_a0_4->unk10;
        if (*(void *)0x80071028 < temp_f0_6) {
            phi_f6 = (f32) (temp_f0_6 - *(void *)0x80071030);
block_21:
            temp_a0_4->unk10 = phi_f6;
        } else {
            if (temp_f0_6 < *(void *)0x80071038) {
                phi_f6 = (f32) (temp_f0_6 + *(void *)0x80071040);
                goto block_21;
            }
        }
        (void *)0x8007BC30->unk0 = 0.0f;
        temp_f0_7 = (f32) ((f64) sp34 + ((f64) (temp_f16_2 - sp34) * *(void *)0x80071048));
        (void *)0x8007BC30->unk4 = temp_f0_7;
        temp_f12_4 = temp_a0_4->unk10;
        sp38 = temp_f16_2;
        sp24 = temp_f0_7;
        arg2 = temp_a0_4;
        func_000232F4(temp_f12_4, phi_f14_2, temp_a0_4, (void *)0x8007BC30);
        arg2->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg2->unk20 = (f32) (void *)0x8007BC30->unk4;
        sp54 = 1;
        temp_f6_2 = (s32) ((temp_f16_2 * 14.0f) + 3.0f);
        if ((1.5 < (f64) temp_f16_2) || (phi_a0 = arg2, phi_a2 = temp_f6_2, phi_a3 = 1, phi_v0 = 0, phi_return = 0, (1.5 < (f64) temp_f0_7))) {
            arg3->unk0 = (u16)2;
            arg3->unk4 = (u16)0x1E;
            *(void *)0x8007BC28 = (u16)0;
            phi_a0 = arg2;
            phi_a2 = temp_f6_2;
            phi_a3 = 1;
            phi_v0 = 0;
            phi_return = 0;
        } else {

        }
    } else {
        temp_f12 = *(void *)0x80071050;
        temp_f2_2 = (f64) temp_f0_2;
        temp_a0_2->unk18 = (f32) ((f64) temp_a0_2->unk18 * temp_f12);
        temp_a0_2->unk20 = (f32) ((f64) temp_a0_2->unk20 * temp_f12);
        if (1.0 < temp_f2_2) {
            temp_f0_3 = *(void *)0x80071058;
            temp_a3 = *(void *)0x8007BC2C;
            sp54 = 0xF;
            sp48 = 3;
            arg3->unk0 = (u16)4;
            arg3->unk4 = (u16)8;
            temp_a0_2->unkC = 0.0f;
            temp_a0_2->unk14 = 0.0f;
            temp_a0_2->unk18 = (f32) ((f64) temp_a0_2->unk18 * temp_f0_3);
            temp_a0_2->unk20 = (f32) ((f64) temp_a0_2->unk20 * temp_f0_3);
            sp4C = 1;
            arg2 = temp_a0_2;
            sp44 = 1;
            sp50 = temp_a3;
            func_000186B4(temp_f12, temp_f14, temp_a0_2, 1, temp_a3);
            phi_a0 = arg2;
            phi_a2 = 1;
            phi_a3 = temp_a3;
            phi_v0 = 1;
            phi_return = 1;
        } else {
            sp54 = 1;
            temp_f6 = (s32) ((temp_f0_2 * 14.0f) + 3.0f);
            phi_a0 = temp_a0_2;
            phi_a2 = temp_f6;
            phi_a3 = 1;
            phi_v0 = 0;
            phi_return = 0;
            if (temp_f2_2 < *(void *)0x80071060) {
                arg3->unk0 = (u16)0;
                temp_a0_2->unk18 = 0.0f;
                temp_a0_2->unk20 = 0.0f;
                phi_a0 = temp_a0_2;
                phi_a2 = temp_f6;
                phi_a3 = 1;
                phi_v0 = 0;
                phi_return = 0;
            }
        }
    }
    if (sp54 != phi_a0->unk52) {
        if (sp54 != phi_a0->unk5A) {
            arg2 = phi_a0;
            temp_ret = func_0001D8B0(phi_a0, sp54, phi_a2, phi_a3, phi_a2, phi_v0);
            arg2->unk54 = (s16) sp48;
            return temp_ret;
        }
    }
    phi_a0->unk58 = (s16) phi_a2;
    return phi_return;
}
