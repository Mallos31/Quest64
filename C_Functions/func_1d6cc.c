u16 func_1d6cc(void) {
    f32 sp1C;
    void *sp18;
    f32 temp_f0;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f2_2;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_5;
    f64 temp_f12;
    f64 temp_f16;
    f64 temp_f16_2;
    f64 temp_f2;
    u16 temp_t4;
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    f32 phi_f14;
    f32 phi_f14_2;
    f32 phi_f14_3;
    u16 phi_return;

    temp_v0 = *(void *)0x8008C58C;
    if (temp_v0 == 0) {
        temp_v1_2 = ((*(void *)0x8008C590 * 0x128) + 0x24) + 0x8007C998;
        sp18 = temp_v1_2;
        sp1C = func_00023210(temp_v1_2->unk0 - (void *)0x8007BAB8->unk14, temp_v1_2->unk8 - (void *)0x8007BAB8->unk1C);
        phi_f14_2 = sp1C;
        if (func_00022FD0(0x64) >= 0x33U) {
            temp_f16_2 = *(void *)0x80071620;
            temp_f14_2 = (f32) ((f64) sp1C + temp_f16_2);
            temp_f0_2 = (f64) temp_f14_2;
            if (temp_f0_2 < *(void *)0x80071628) {
                phi_f14_2 = (f32) (temp_f0_2 + *(void *)0x80071630);
            } else {
                phi_f14_2 = temp_f14_2;
                if (temp_f16_2 < temp_f0_2) {
                    phi_f14_2 = (f32) (temp_f0_2 - *(void *)0x80071638);
                }
            }
        }
        temp_f12 = *(void *)0x80071640;
        temp_f14_3 = (f32) ((f64) phi_f14_2 + *(void *)0x80071650);
        temp_f0_3 = (f64) temp_f14_3;
        if (temp_f0_3 < *(void *)0x80071658) {
            phi_f14_3 = (f32) (temp_f0_3 + temp_f12);
        } else {
            phi_f14_3 = temp_f14_3;
            if (*(void *)0x80071648 < temp_f0_3) {
                phi_f14_3 = (f32) (temp_f0_3 - temp_f12);
            }
        }
        (void *)0x8008C580->unk0 = 0.0f;
        temp_v0_2 = temp_v1_2->unk64;
        temp_f2_2 = temp_v0_2->unk1C;
        temp_f12_2 = temp_v0_2->unk18;
        if (temp_f2_2 < temp_f12_2) {
            temp_f0_4 = (f64) (temp_f12_2 * temp_v1_2->unk24);
            (void *)0x8008C580->unk4 = (f32) ((temp_f0_4 + temp_f0_4) + 15.0);
        } else {
            temp_f0_5 = (f64) (temp_f2_2 * temp_v1_2->unk24);
            (void *)0x8008C580->unk4 = (f32) ((temp_f0_5 + temp_f0_5) + 15.0);
        }
        sp18 = temp_v1_2;
        (void *)0x80086DC0->unk4C = (f32) ((f64) (void *)0x8008C580->unk4 * 1.5);
        func_000232F4(phi_f14_3, phi_f14_3, (void *)0x8008C580);
        (void *)0x80086DC0->unkC = (f32) (temp_v1_2->unk0 + (void *)0x8008C580->unk0);
        (void *)0x80086DC0->unk14 = (f32) (temp_v1_2->unk8 + (void *)0x8008C580->unk4);
        (void *)0x80086DC0->unk10 = (f32) ((f64) temp_v1_2->unk4 + 15.0);
        temp_f0 = *(void *)0x8007BAD0;
        if ((void *)0x80086DC0->unk10 < temp_f0) {
            (void *)0x80086DC0->unk10 = temp_f0;
        }
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk0 = 0;
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk58 = 15.0f;
        (void *)0x80086DC0->unk80 = temp_v1_2;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80071660;
        *(void *)0x80086EF0 = (f32) (void *)0x80086DC0->unk2C;
        *(void *)0x8008C58E = (u16)0x3CU;
        *(void *)0x8008C58C = (u16) (*(void *)0x8008C58C + 1);
        return (bitwise u16) temp_f0;
    }
    if (temp_v0 != 1) {
        return temp_v0;
    }
    temp_t4 = *(void *)0x8008C58E - 1;
    *(void *)0x8008C58E = temp_t4;
    phi_return = temp_v0;
    if ((temp_t4 & 0xFFFF) == 0) {
        *(void *)0x8008C592 = (u16) (*(void *)0x8008C592 & 0xFDFF);
        func_00013F5C(*(void *)0x80086ED8);
        temp_f16 = *(void *)0x80071668;
        temp_f14 = (f32) ((f64) func_00023210(*(void *)0x8008C59C - (void *)0x8007BAB8->unk14, *(void *)0x8008C5A0 - (void *)0x8007BAB8->unk1C) + temp_f16);
        temp_f2 = (f64) temp_f14;
        if (temp_f16 < temp_f2) {
            phi_f14 = (f32) (temp_f2 - *(void *)0x80071670);
        } else {
            phi_f14 = temp_f14;
            if (temp_f2 < *(void *)0x80071678) {
                phi_f14 = (f32) (temp_f2 + *(void *)0x80071680);
            }
        }
        (void *)0x8008C580->unk0 = 0.0f;
        (void *)0x8008C580->unk4 = 50.0f;
        func_000232F4(phi_f14, phi_f14, (void *)0x8008C580);
        (void *)0x80086DC0->unkC = (f32) ((void *)0x8007BAB8->unk14 + (void *)0x8008C580->unk0);
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk10 = (f32) ((f64) (void *)0x8007BAB8->unk18 + 30.0);
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk0 = 4;
        (void *)0x80086DC0->unk8 = (u16) ((void *)0x80086DC0->unk8 | 0x10);
        (void *)0x80086DC0->unk14 = (f32) ((void *)0x8007BAB8->unk1C + (void *)0x8008C580->unk4);
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        if (((*(void *)0x8008C592 & 0x100) != 0) && (*(void *)0x8008C570 == 8)) {
            (void *)0x80086DC0->unk58 = 50.0f;
            (void *)0x80086DC0->unk5C = 28.0f;
            (void *)0x80086DC0->unk4C = 180.0f;
        } else {
            temp_v1 = (*(void *)0x80084EE4 * 0xC) + 0x8004D0A0;
            (void *)0x80086DC0->unk58 = (f32) ((void *)0x80086DC0->unk58 + temp_v1->unk0);
            (void *)0x80086DC0->unk4C = (f32) ((void *)0x80086DC0->unk4C + temp_v1->unk4);
        }
        (void *)0x80086DC0->unk80 = (void *)0x8007BACC;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80071688;
        *(void *)0x80086EFC = 0.0f;
        phi_return = (u16) (void *)0x80086DC0;
    }
    return phi_return;
}
