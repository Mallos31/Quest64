void func_13c08(void *arg0) {
    u8 sp47;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp2C;
    f32 sp24;
    void *sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_9;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f12_8;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f6;
    f32 temp_f8;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_7;
    f64 temp_f0_8;
    f64 temp_f12_4;
    f64 temp_f12_5;
    f64 temp_f14_3;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    f64 phi_f0;
    f32 phi_f2;
    f64 phi_f0_2;
    f32 phi_f6;
    f64 phi_f12;
    f32 phi_f14;
    f32 phi_f2_2;
    f32 phi_f2_3;
    f32 phi_f16;
    f64 phi_f0_3;
    void *phi_a0;
    f32 phi_f2_4;

    sp20 = arg0->unk80;
    func_00013D30();
    temp_a0 = arg0;
    if ((((*(void *)0x8007B2E4 & 0x82) == 0) && ((*(void *)0x8008C592 & 0x200) == 0)) && (temp_v0 = temp_a0->unk8, ((temp_v0 & 0x40) == 0))) {
        if (((*(void *)0x80092874 & 0x4000) != 0) || (temp_a0->unk0 == 2)) {
            temp_a0->unk8 = (u16) (temp_v0 | 0x24);
        } else {
            temp_a0->unk8 = (u16) (temp_v0 & 0xFFDB);
        }
    } else {
        temp_a0->unk8 = (u16) (temp_a0->unk8 & 0xFFDB);
    }
    temp_f6 = temp_a0->unkC;
    temp_f10 = temp_a0->unk14;
    arg0 = temp_a0;
    temp_f0 = sp20->unk0 - temp_f6;
    temp_f2 = sp20->unk8 - temp_f10;
    sp40 = temp_f0;
    sp38 = temp_f2;
    temp_f0_2 = func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2), temp_a0);
    temp_a0_2 = arg0;
    if (temp_f0_2 != 0.0f) {
        temp_f14 = temp_a0_2->unk4C;
        if (temp_f14 < temp_f0_2) {
            temp_f2_2 = temp_f14 / temp_f0_2;
            temp_f12 = temp_a0_2->unk70;
            sp2C = (sp40 - (sp40 * temp_f2_2)) * temp_f12;
            sp24 = (sp38 - (sp38 * temp_f2_2)) * temp_f12;
        } else {
            if (temp_f0_2 <= temp_f14) {
                temp_f2_3 = temp_f14 / temp_f0_2;
                temp_f12_2 = temp_a0_2->unk70;
                sp2C = (f32) ((f64) ((sp40 - (sp40 * temp_f2_3)) * temp_f12_2) * 0.5);
                sp24 = (f32) ((f64) ((sp38 - (sp38 * temp_f2_3)) * temp_f12_2) * 0.5);
            }
        }
    } else {
        sp24 = 0.0f;
        sp2C = 0.0f;
    }
    temp_f14_2 = temp_a0_2->unk74;
    temp_a0_2->unk40 = (f32) (temp_a0_2->unk40 + sp2C);
    temp_f2_4 = temp_a0_2->unk40;
    temp_a0_2->unk48 = (f32) (temp_a0_2->unk48 + sp24);
    temp_f12_3 = temp_a0_2->unk48;
    temp_a0_2->unkC = (f32) (temp_a0_2->unkC + temp_f2_4);
    temp_a0_2->unk14 = (f32) (temp_a0_2->unk14 + temp_f12_3);
    temp_a0_2->unk40 = (f32) (temp_f2_4 * temp_f14_2);
    temp_a0_2->unk48 = (f32) (temp_f12_3 * temp_f14_2);
    sp47 = (u8)0U;
    if ((temp_f0_2 < 25.0f) && ((*(void *)0x8007B2E4 & 0x80) == 0)) {
        temp_f16 = sp20->unk10;
        temp_f2_5 = temp_f16 - temp_a0_2->unk28;
        temp_f0_3 = (f64) temp_f2_5;
        if (*(void *)0x80071350 < temp_f0_3) {
            phi_f2_4 = (f32) (temp_f0_3 - *(void *)0x80071358);
block_20:
            phi_f0 = (f64) phi_f2_4;
            phi_f2 = phi_f2_4;
        } else {
            phi_f0 = temp_f0_3;
            phi_f2 = temp_f2_5;
            if (temp_f0_3 < *(void *)0x80071360) {
                phi_f2_4 = (f32) (temp_f0_3 + *(void *)0x80071368);
                goto block_20;
            }
        }
        temp_f12_4 = *(void *)0x80071370;
        phi_f14 = temp_f14_2;
        if (phi_f0 < temp_f12_4) {
            temp_f14_3 = *(void *)0x80071378;
            phi_f14 = (f32) temp_f14_3;
            if (temp_f14_3 < phi_f0) {
                if (phi_f2 < 0.0f) {
                    phi_f0_2 = temp_f12_4;
                } else {
                    phi_f0_2 = temp_f14_3;
                }
                temp_a0_2->unk54 = (f32) (phi_f0_2 + (f64) temp_f16);
                phi_f14 = (f32) temp_f14_3;
            }
        }
        temp_a0_2->unk8 = (u16) (temp_a0_2->unk8 | 4);
        sp47 = (u8)1U;
        phi_f12 = temp_f12_4;
    } else {
        phi_f12 = (f64) temp_f12_3;
        phi_f14 = temp_f14_2;
        if ((temp_a0_2->unk8 & 0x20) != 0) {
            temp_f12_5 = *(void *)0x80071380;
            temp_a0_2->unk54 = (f32) ((f64) sp20->unk10 + temp_f12_5);
            temp_f0_4 = (f64) temp_a0_2->unk54;
            if (temp_f12_5 < temp_f0_4) {
                phi_f6 = (f32) (temp_f0_4 - *(void *)0x80071388);
block_33:
                temp_a0_2->unk54 = phi_f6;
                phi_f12 = temp_f12_5;
                phi_f14 = temp_f14_2;
            } else {
                phi_f12 = temp_f12_5;
                phi_f14 = temp_f14_2;
                if (temp_f0_4 < *(void *)0x80071390) {
                    phi_f6 = (f32) (temp_f0_4 + *(void *)0x80071398);
                    goto block_33;
                }
            }
        }
    }
    arg0 = temp_a0_2;
    func_00013DE0(phi_f12, phi_f14, temp_a0_2, sp20);
    (void *)0x80086BA0->unk0 = 4.0f;
    func_0000EE60(arg0->unkC, arg0->unk10, arg0, arg0->unk14, 0x602, (void *)0x80086BA0);
    temp_a0_3 = arg0;
    temp_a0_3->unkC = (f32) (void *)0x80086BA0->unk0;
    temp_a0_3->unk14 = (f32) (void *)0x80086BA0->unk8;
    temp_v1 = (void *)0x80086BA0->unk18;
    if ((temp_v1 & 0x8000) != 0) {
        phi_f2_2 = sp20->unk4;
    } else {
        sp3C = (void *)0x80086BA0->unk4;
        phi_f2_2 = sp3C;
    }
    *(void *)0x80086BBC = temp_v1;
    temp_f0_5 = sp20->unk4 + temp_a0_3->unk58;
    phi_f2_3 = phi_f2_2;
    if (phi_f2_2 < temp_f0_5) {
        phi_f2_3 = temp_f0_5;
    }
    arg0 = temp_a0_3;
    temp_f0_6 = func_00014720(temp_a0_3, phi_f2_3);
    temp_a0_4 = arg0;
    phi_f16 = temp_f0_6;
    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_f2_6 = *(void *)0x8007BAD0;
        phi_f16 = temp_f0_6;
        if (temp_f0_6 < temp_f2_6) {
            phi_f16 = temp_f2_6;
        }
    }
    temp_f14_4 = temp_a0_4->unk10;
    temp_f12_6 = phi_f16 - temp_f14_4;
    if (temp_f12_6 < 0.0f) {
        phi_f0_3 = *(void *)0x800713A0;
    } else {
        phi_f0_3 = *(void *)0x800713A8;
    }
    temp_f12_7 = (f32) ((f64) temp_f12_6 * ((f64) temp_a0_4->unk70 * phi_f0_3));
    temp_a0_4->unk44 = (f32) (temp_a0_4->unk44 + temp_f12_7);
    temp_f2_7 = temp_a0_4->unk44;
    temp_a0_4->unk10 = (f32) (temp_f14_4 + temp_f2_7);
    temp_a0_4->unk44 = (f32) (temp_f2_7 * temp_a0_4->unk74);
    arg0 = temp_a0_4;
    func_00013D3C(temp_f12_7, temp_f14_4, temp_a0_4, sp20);
    temp_a0_5 = arg0;
    temp_f2_8 = temp_a0_5->unkC;
    temp_f16_2 = temp_f2_8 - temp_a0_5->unk18;
    temp_f0_7 = (f64) temp_f16_2;
    sp3C = temp_a0_5->unk10 - temp_a0_5->unk1C;
    temp_f12_8 = temp_a0_5->unk14;
    temp_f18 = temp_f12_8 - temp_a0_5->unk20;
    if (-0.5 < temp_f0_7) {
        if (temp_f0_7 < 0.5) {
            temp_f0_8 = (f64) temp_f18;
            if (-0.5 < temp_f0_8) {
                if (temp_f0_8 < 0.5) {
                    temp_a0_5->unkC = (f32) ((f64) temp_f2_8 + 0.5);
                    temp_a0_5->unk14 = (f32) ((f64) temp_f12_8 + 0.5);
                }
            }
        }
    }
    temp_f8 = temp_f16_2 * temp_f16_2;
    arg0 = temp_a0_5;
    sp40 = temp_f16_2;
    sp38 = temp_f18;
    temp_f0_9 = func_00034F60(temp_f8 + (temp_f18 * temp_f18), 0, temp_a0_5);
    temp_a0_6 = arg0;
    temp_f14_5 = temp_f0_9;
    if ((sp3C != 0.0f) || (phi_a0 = temp_a0_6, (temp_f0_9 != 0.0f))) {
        arg0 = temp_a0_6;
        arg0->unk24 = func_00023210(sp3C, temp_f14_5, temp_a0_6);
        phi_a0 = arg0;
    } else {

    }
    if ((sp40 != 0.0f) || (sp38 != 0.0f)) {
        arg0 = phi_a0;
        arg0->unk2C = func_00023210(sp40, sp38, phi_a0);
        if (sp47 == 0) {
            arg0->unk28 = (f32) arg0->unk2C;
        }
    } else {

    }
}
