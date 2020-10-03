s32 func_5f4c(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp40;
    f32 sp3C;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_5;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f2;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f12;
    f64 temp_f18;
    f64 temp_f2_2;
    f64 temp_f2_3;
    s32 temp_a3;
    s32 temp_f10;
    s32 temp_ret;
    f32 phi_f16;
    f32 phi_f14;
    f64 phi_f2;
    f32 phi_f4;
    s32 phi_a2;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_return;
    f32 phi_f12;

    temp_f0 = arg2->unk18;
    temp_f2 = arg2->unk20;
    temp_f14 = arg1;
    sp3C = func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    if ((arg0 != 0.0f) || (temp_f14 != 0.0f)) {
        arg1 = temp_f14;
        temp_f16 = (f32) ((f64) func_00034F60((arg0 * arg0) + (temp_f14 * temp_f14), temp_f14) * *(void *)0x80071068);
        temp_f12 = (f64) temp_f16;
        if (!(2.0 < temp_f12)) {
            phi_f16 = temp_f16;
            phi_f14 = arg1;
        } else {
            temp_f0_3 = (f64) arg0;
            temp_f2_2 = (f64) arg1;
            arg0 = (f32) ((temp_f0_3 + temp_f0_3) / temp_f12);
            phi_f16 = 2.0f;
            phi_f14 = (f32) ((temp_f2_2 + temp_f2_2) / temp_f12);
        }
        sp40 = phi_f16;
        temp_f14_2 = arg2->unk10;
        temp_f18 = *(void *)0x80071070;
        temp_f16_2 = phi_f16;
        temp_f2_3 = (f64) (func_00023210(arg0, phi_f14) - temp_f14_2);
        if (temp_f18 < temp_f2_3) {
            phi_f12 = (f32) (temp_f2_3 - *(void *)0x80071078);
block_9:
            phi_f2 = (f64) phi_f12;
        } else {
            phi_f2 = temp_f2_3;
            if (temp_f2_3 < *(void *)0x80071080) {
                phi_f12 = (f32) (temp_f2_3 + *(void *)0x80071088);
                goto block_9;
            }
        }
        arg2->unk10 = (f32) ((f64) temp_f14_2 + (phi_f2 * *(void *)0x80071090));
        temp_f0_4 = (f64) arg2->unk10;
        if (temp_f18 < temp_f0_4) {
            phi_f4 = (f32) (temp_f0_4 - *(void *)0x80071098);
block_14:
            arg2->unk10 = phi_f4;
        } else if (temp_f0_4 < *(void *)0x800710A0) {
            phi_f4 = (f32) (temp_f0_4 + *(void *)0x800710A8);
            goto block_14;
        }
        (void *)0x8007BC30->unk0 = 0.0f;
        temp_f0_5 = (f32) ((f64) sp3C + ((f64) (temp_f16_2 - sp3C) * *(void *)0x800710B0));
        (void *)0x8007BC30->unk4 = temp_f0_5;
        sp40 = temp_f16_2;
        sp2C = temp_f0_5;
        func_000232F4(arg2->unk10, temp_f14_2, (void *)0x8007BC30);
        arg2->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg2->unk20 = (f32) (void *)0x8007BC30->unk4;
        sp5C = 2;
        temp_f10 = (s32) ((temp_f16_2 * 14.0f) + 3.0f);
        sp50 = 0;
        phi_a2 = temp_f10;
        phi_a3 = 2;
        phi_v0 = 0;
        phi_return = 0;
        if ((f64) temp_f0_5 < 1.0) {
            phi_a2 = temp_f10;
            phi_a3 = 2;
            phi_v0 = 0;
            phi_return = 0;
            if ((f64) temp_f16_2 < 1.0) {
                arg3->unk0 = (u16)1;
                phi_a2 = temp_f10;
                phi_a3 = 2;
                phi_v0 = 0;
                phi_return = 0;
            }
        }
    } else {
        temp_f0_2 = *(void *)0x800710B8;
        temp_a3 = *(void *)0x8007BC2C;
        sp5C = 0xF;
        sp50 = 3;
        arg3->unk0 = (u16)4;
        arg3->unk4 = (u16)8;
        arg2->unkC = 0.0f;
        arg2->unk14 = 0.0f;
        arg2->unk18 = (f32) ((f64) arg2->unk18 * temp_f0_2);
        arg2->unk20 = (f32) ((f64) arg2->unk20 * temp_f0_2);
        sp54 = 1;
        sp4C = 1;
        sp58 = temp_a3;
        func_000186B4(temp_f14, arg2, 1, temp_a3);
        phi_a2 = 1;
        phi_a3 = temp_a3;
        phi_v0 = 1;
        phi_return = 1;
    }
    if ((sp5C != arg2->unk52) && (sp5C != arg2->unk5A)) {
        temp_ret = func_0001D8B0(arg2, sp5C, phi_a2, phi_a3, phi_a2, phi_v0);
        arg2->unk54 = (s16) sp50;
        return temp_ret;
    }
    arg2->unk58 = (s16) phi_a2;
    return phi_return;
}

