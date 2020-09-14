void func_14620(void *arg0, f32 arg1) {
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f2;
    f64 temp_f2_2;
    s32 temp_t9;
    void *temp_t3;
    void *temp_t6;
    void *temp_v0;
    void *phi_t3;
    void *phi_t6;
    f32 phi_f12;
    f64 phi_f18;
    f32 phi_f12_2;
    f32 phi_f12_3;
    f32 phi_f12_4;
    f64 phi_f14;

    if ((arg0->unk8 & 0x40) != 0) {
        temp_t9 = arg0->unk4 - 1;
        arg0->unk4 = temp_t9;
        phi_f12_4 = (bitwise f32) arg0;
        phi_f14 = (f64) arg1;
        if (temp_t9 == 0) {
            arg0->unk8 = (u16) (arg0->unk8 & 0xFFBF);
            phi_t3 = (void *)0x80086B00;
            phi_t6 = arg0;
loop_3:
            temp_t3 = phi_t3 + 0xC;
            temp_t6 = phi_t6 + 0xC;
            temp_t6->unk-C = (s32) *phi_t3;
            temp_t6->unk-8 = (s32) temp_t3->unk-8;
            temp_t6->unk-4 = (s32) temp_t3->unk-4;
            phi_t3 = temp_t3;
            phi_t6 = temp_t6;
            if (temp_t3 != 0x80086B84) {
                goto loop_3;
            }
            temp_t6->unk0 = (s32) temp_t3->unk0;
            phi_f12_4 = (bitwise f32) arg0;
            phi_f14 = (f64) arg1;
        }
    } else {
        temp_v0 = arg0->unk80;
        temp_f16 = *(void *)0x800713B0;
        temp_f12 = (f32) ((f64) func_00023210(*(void *)0x8008C59C - temp_v0->unk0, *(void *)0x8008C5A0 - temp_v0->unk8) + temp_f16);
        temp_f2 = (f64) temp_f12;
        if (temp_f16 < temp_f2) {
            phi_f12 = (f32) (temp_f2 - *(void *)0x800713B8);
            phi_f18 = *(void *)0x800713C0;
        } else {
            temp_f18 = *(void *)0x800713C8;
            phi_f12 = temp_f12;
            phi_f18 = temp_f18;
            if (temp_f2 < temp_f18) {
                phi_f12 = (f32) (temp_f2 + *(void *)0x800713D0);
                phi_f18 = temp_f18;
            }
        }
        temp_f2_2 = *(void *)0x800713D8;
        temp_f14 = *(void *)0x800713E0;
        temp_f12_2 = (f32) (((f64) (s32) ((f64) phi_f12 / temp_f2_2) * temp_f2_2) - *(void *)0x800713E8);
        temp_f0 = (f64) temp_f12_2;
        if (temp_f16 < temp_f0) {
            phi_f12_2 = (f32) (temp_f0 - temp_f14);
        } else {
            phi_f12_2 = temp_f12_2;
            if (temp_f0 < phi_f18) {
                phi_f12_2 = (f32) (temp_f0 + temp_f14);
            }
        }
        temp_f12_3 = phi_f12_2 + *(void *)0x80086EFC;
        temp_f0_2 = (f64) temp_f12_3;
        if (temp_f16 < temp_f0_2) {
            phi_f12_3 = (f32) (temp_f0_2 - temp_f14);
        } else {
            phi_f12_3 = temp_f12_3;
            if (temp_f0_2 < phi_f18) {
                phi_f12_3 = (f32) (temp_f0_2 + temp_f14);
            }
        }
        arg0->unk54 = phi_f12_3;
        phi_f12_4 = phi_f12_3;
        phi_f14 = temp_f14;
        if ((*(void *)0x80092876 & 0x20) != 0) {
            *(void *)0x80086EFC = (f32) ((f64) *(void *)0x80086EFC + *(void *)0x800713F0);
            temp_f0_3 = (f64) *(void *)0x80086EFC;
            if (temp_f16 < temp_f0_3) {
                *(void *)0x80086EFC = (f32) (temp_f0_3 - temp_f14);
                phi_f12_4 = phi_f12_3;
                phi_f14 = temp_f14;
            } else {
                phi_f12_4 = phi_f12_3;
                phi_f14 = temp_f14;
                if (temp_f0_3 < phi_f18) {
                    *(void *)0x80086EFC = (f32) (temp_f0_3 + temp_f14);
                    phi_f12_4 = phi_f12_3;
                    phi_f14 = temp_f14;
                }
            }
        }
    }
    func_00013008(phi_f12_4, phi_f14, arg0);
}
