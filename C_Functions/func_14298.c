f32 func_14298(void *arg0) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_ret;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f32 temp_ret_4;
    f32 temp_ret_5;
    f32 temp_ret_6;
    f32 temp_ret_7;
    f32 temp_ret_8;
    f32 temp_ret_9;
    f32 phi_f16;
    f32 phi_f16_2;
    f32 phi_return;

    sp24 = arg0->unk80;
    func_00013D30(arg0);
    func_00013D3C(arg0, sp24);
    temp_f0 = arg0->unkC - arg0->unk18;
    sp30 = arg0->unk10 - arg0->unk1C;
    sp34 = temp_f0;
    temp_f2 = arg0->unk14 - arg0->unk20;
    sp2C = temp_f2;
    temp_ret = func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    temp_f0_2 = temp_ret;
    sp28 = temp_f0_2;
    if ((sp30 != 0.0f) || (phi_return = temp_ret, (temp_f0_2 != 0.0f))) {
        temp_ret_2 = func_00023210(sp30, sp28);
        arg0->unk24 = temp_ret_2;
        phi_return = temp_ret_2;
    } else {

    }
    if ((sp34 != 0.0f) || (phi_f16 = 0.0f, (sp2C != 0.0f))) {
        temp_ret_3 = func_00023210(sp34, sp2C);
        arg0->unk28 = temp_ret_3;
        phi_f16 = 0.0f;
        phi_return = temp_ret_3;
    } else {

    }
    temp_f12 = arg0->unk60;
    if ((phi_f16 != temp_f12) || (phi_f16_2 = phi_f16, (phi_f16 != arg0->unk64))) {
        temp_f0_3 = arg0->unk24;
        if (temp_f0_3 < temp_f12) {
            arg0->unk24 = temp_f12;
            sp34 = sp28 / func_000361F0(temp_f12);
            temp_ret_4 = func_00035680(arg0->unk60);
            arg0->unk1C = (f32) (arg0->unk10 - (temp_ret_4 * sp34));
            phi_f16_2 = 0.0f;
            phi_return = temp_ret_4;
        } else {
            temp_f12_2 = arg0->unk64;
            phi_f16_2 = phi_f16;
            phi_return = temp_f0_3;
            if (temp_f12_2 < temp_f0_3) {
                arg0->unk24 = temp_f12_2;
                sp34 = sp28 / func_000361F0(temp_f12_2);
                temp_ret_5 = func_00035680(arg0->unk64);
                arg0->unk1C = (f32) (arg0->unk10 - (temp_ret_5 * sp34));
                phi_f16_2 = 0.0f;
                phi_return = temp_ret_5;
            }
        }
    } else {

    }
    temp_f2_2 = arg0->unk68;
    temp_f14 = arg0->unk6C;
    if (temp_f2_2 < temp_f14) {
        temp_f0_4 = arg0->unk28;
        if (temp_f0_4 < temp_f2_2) {
            arg0->unk28 = temp_f2_2;
            (void *)0x80086B90->unk0 = phi_f16_2;
            (void *)0x80086B90->unk4 = (f32) -sp28;
            temp_ret_6 = func_000232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
            arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
            arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
            phi_return = temp_ret_6;
        } else {
            phi_return = temp_f0_4;
            if (temp_f14 < temp_f0_4) {
                arg0->unk28 = temp_f14;
                (void *)0x80086B90->unk0 = phi_f16_2;
                (void *)0x80086B90->unk4 = (f32) -sp28;
                temp_ret_7 = func_000232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                phi_return = temp_ret_7;
            }
        }
    } else {
        if (temp_f14 < temp_f2_2) {
            temp_f0_5 = arg0->unk28;
            if ((f64) temp_f0_5 < 0.0) {
                phi_return = temp_f0_5;
                if (temp_f14 < temp_f0_5) {
                    arg0->unk28 = temp_f14;
                    (void *)0x80086B90->unk0 = phi_f16_2;
                    (void *)0x80086B90->unk4 = (f32) -sp28;
                    temp_ret_8 = func_000232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                    arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                    arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                    phi_return = temp_ret_8;
                }
            } else {
                phi_return = temp_f0_5;
                if (temp_f0_5 < temp_f2_2) {
                    arg0->unk28 = temp_f2_2;
                    (void *)0x80086B90->unk0 = phi_f16_2;
                    (void *)0x80086B90->unk4 = (f32) -sp28;
                    temp_ret_9 = func_000232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                    arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                    arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                    phi_return = temp_ret_9;
                }
            }
        }
    }
    arg0->unk2C = (f32) arg0->unk28;
    return phi_return;
}
