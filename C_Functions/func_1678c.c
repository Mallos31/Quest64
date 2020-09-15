u16 func_1678c(void *arg0) {
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    ? sp50;
    ? sp3C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_4;
    f32 temp_f4;
    f32 temp_f8;
    f64 temp_f12;
    f64 temp_f2_3;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_2;
    f32 phi_f16;
    f32 phi_f18;
    f32 phi_f16_2;
    f32 phi_f14;
    f32 phi_f14_2;
    f32 phi_f16_3;
    f32 phi_f18_2;
    u16 phi_return;

    sp50.unk0 = (s32) (void *)0x8004CDA8->unk0;
    sp50.unk4 = (s32) (void *)0x8004CDA8->unk4;
    sp50.unk8 = (s32) (void *)0x8004CDA8->unk8;
    sp50.unkC = (s32) (void *)0x8004CDA8->unkC;
    sp50.unk10 = (s32) (void *)0x8004CDA8->unk10;
    sp3C.unk0 = (s32) (void *)0x8004CDBC->unk0;
    sp3C.unk4 = (s32) (void *)0x8004CDBC->unk4;
    sp3C.unk8 = (s32) (void *)0x8004CDBC->unk8;
    sp3C.unkC = (s32) (void *)0x8004CDBC->unkC;
    sp3C.unk10 = (s32) (void *)0x8004CDBC->unk10;
    temp_v1 = arg0->unkA;
    temp_v0_2 = arg0->unk28;
    phi_return = (u16) temp_v0_2;
    if ((temp_v1 & 1) == 0) {
        if (temp_v0_2 != 0) {
            if (((temp_v1 & 2) != 0) || (temp_v0_2->unk50 == -1)) {
                phi_f18 = 0.0f;
                phi_f16_2 = 0.0f;
                phi_f14 = 0.0f;
            } else {
                temp_v1_2 = temp_v0_2->unk64;
                temp_f18 = temp_v0_2->unk0 - arg0->unkC;
                if (temp_v1_2->unk0 == 1) {
                    phi_f16 = temp_v0_2->unk68->unk94 - arg0->unk10;
                } else {
                    phi_f16 = (f32) (((f64) temp_v0_2->unk4 + ((f64) (temp_v1_2->unk1C * temp_v0_2->unk24) * 0.5)) - (f64) arg0->unk10);
                }
                sp88 = temp_f18;
                temp_f14 = temp_v0_2->unk8 - arg0->unk14;
                sp84 = phi_f16;
                sp80 = temp_f14;
                temp_f0 = func_00034F60(((temp_f18 * temp_f18) + (phi_f16 * phi_f16)) + (temp_f14 * temp_f14), temp_f14);
                temp_f2 = (sp + (arg0->unk2C->unk28 * 4))->unk50;
                phi_f18 = (temp_f2 * temp_f18) / temp_f0;
                phi_f16_2 = (temp_f2 * phi_f16) / temp_f0;
                phi_f14 = (temp_f2 * temp_f14) / temp_f0;
            }
            temp_f0_2 = arg0->unk18;
            temp_f2_2 = arg0->unk1C;
            temp_f4 = arg0->unk20;
            sp88 = phi_f18;
            sp70 = temp_f4;
            sp84 = phi_f16_2;
            sp80 = phi_f14;
            sp78 = temp_f0_2;
            sp74 = temp_f2_2;
            temp_f0_3 = func_00034F60(((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2)) + (temp_f4 * temp_f4), phi_f14);
            temp_f14_2 = phi_f14;
            temp_f16 = phi_f16_2;
            temp_f18_2 = phi_f18;
            phi_f14_2 = temp_f14_2;
            phi_f16_3 = temp_f16;
            phi_f18_2 = temp_f18_2;
            if (temp_f0_3 != 0.0f) {
                temp_f2_3 = (f64) temp_f0_3;
                temp_f8 = (f32) ((f64) sp74 / temp_f2_3);
                sp74 = temp_f8;
                temp_f10 = (f32) ((f64) sp70 / temp_f2_3);
                sp70 = temp_f10;
                phi_f14_2 = temp_f14_2 + temp_f10;
                phi_f16_3 = temp_f16 + temp_f8;
                phi_f18_2 = temp_f18_2 + (f32) ((f64) sp78 / temp_f2_3);
            }
            sp80 = phi_f14_2;
            sp84 = phi_f16_3;
            sp88 = phi_f18_2;
            temp_f0_4 = func_00034F60(((phi_f18_2 * phi_f18_2) + (phi_f16_3 * phi_f16_3)) + (phi_f14_2 * phi_f14_2), phi_f14_2);
            temp_f2_4 = (sp + (arg0->unk2C->unk2E * 4))->unk3C;
            temp_f12 = *(void *)0x80071498;
            temp_f16_2 = (temp_f2_4 * phi_f16_3) / temp_f0_4;
            temp_f14_3 = (temp_f2_4 * phi_f14_2) / temp_f0_4;
            arg0->unk18 = (f32) (((f64) arg0->unk18 * temp_f12) + (f64) ((temp_f2_4 * phi_f18_2) / temp_f0_4));
            arg0->unk1C = (f32) (((f64) arg0->unk1C * temp_f12) + (f64) temp_f16_2);
            arg0->unk20 = (f32) (((f64) arg0->unk20 * temp_f12) + (f64) temp_f14_3);
        }
        if ((arg0->unk2C->unk2A & 1) != 0) {
            arg0->unk1C = (f32) ((f64) arg0->unk1C - *(void *)0x800714A0);
        }
        arg0->unkC = (f32) (arg0->unkC + arg0->unk18);
        arg0->unk10 = (f32) (arg0->unk10 + arg0->unk1C);
        arg0->unk14 = (f32) (arg0->unk14 + arg0->unk20);
        if (arg0->unk2C->unk14 != 0) {
            func_0000EE60(arg0->unkC, arg0->unk10, (bitwise s32) arg0->unk14, 0xA00, 0x800871E0);
            temp_v0 = arg0->unk2C->unk14;
            if (temp_v0 != 1) {
                if (temp_v0 != 2) {
                    return temp_v0;
                }
                arg0->unk10 = (f32) (void *)0x800871E0->unk4;
                phi_return = temp_v0;
            } else {
                phi_return = temp_v0;
                if (arg0->unk10 < (void *)0x800871E0->unk4) {
                    temp_v0_3 = arg0->unk34;
                    arg0->unk4 = (u16)8;
                    arg0->unkA = (u16) (arg0->unkA | 1);
                    arg0->unk20 = 0.0f;
                    arg0->unk1C = 0.0f;
                    arg0->unk18 = 0.0f;
                    if (temp_v0_3 != 0) {
                        temp_v0_3->unk0 = (u16)0xF;
                        temp_v0_4 = arg0->unk34;
                        temp_v0_4->unk8 = (u16) (temp_v0_4->unk8 & 0xFFFE);
                    }
                    phi_return = func_00013F20(1);
                    if ((s32) arg0->unk30->unk20 >= 0) {
                        return func_00017FA0(arg0, arg0->unk28);
                    }
                }
            }
        }
    }
    return phi_return;
}
