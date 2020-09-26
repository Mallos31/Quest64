void *func_23740(void *arg0, void *arg1, s32 arg2) {
    void *spD8;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    s32 sp94;
    f32 sp90;
    f64 sp58;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14_2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2_2;
    f64 temp_f10;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f2;
    f64 temp_f4;
    s32 temp_s1;
    s32 temp_t3;
    s32 temp_v1;
    s32 temp_v1_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v0_6;
    u16 temp_v0_7;
    u16 temp_v1_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_a0;
    void *phi_a0_2;
    u16 phi_v0_3;
    void *phi_a2;
    void *phi_a3;
    f32 phi_f16;
    f32 phi_f12;
    void *phi_a1;
    s32 phi_v1_3;
    void *phi_return;

    if (arg0->unk4 == 1) {
        temp_v0_2 = arg1 + 4;
        *arg1 = (f32) arg0->unk0->unk0;
        phi_v1 = 4;
        phi_v0 = temp_v0_2;
        phi_v1_2 = 4;
        phi_v0_2 = temp_v0_2;
        if (4 != 0x14) {
loop_2:
            temp_v0_3 = phi_v0 + 0x10;
            temp_v0_3->unk-10 = (f32) *(arg0->unk0 + phi_v1);
            temp_v0_3->unk-C = (f32) (arg0->unk0 + phi_v1)->unk4;
            temp_v0_3->unk-8 = (f32) (arg0->unk0 + phi_v1)->unk8;
            temp_v1 = phi_v1 + 0x10;
            temp_v0_3->unk-4 = (f32) (arg0->unk0 + phi_v1)->unkC;
            phi_v1 = temp_v1;
            phi_v0 = temp_v0_3;
            phi_v1_2 = temp_v1;
            phi_v0_2 = temp_v0_3;
            if (temp_v1 != 0x14) {
                goto loop_2;
            }
        }
        temp_v0 = phi_v0_2 + 0x10;
        temp_v0->unk-10 = (f32) *(arg0->unk0 + phi_v1_2);
        temp_v0->unk-C = (f32) (arg0->unk0 + phi_v1_2)->unk4;
        temp_v0->unk-8 = (f32) (arg0->unk0 + phi_v1_2)->unk8;
        temp_v0->unk-4 = (f32) (arg0->unk0 + phi_v1_2)->unkC;
        return temp_v0;
    }
    temp_a0 = arg0->unk0;
    temp_v0_4 = temp_a0->unk66;
    temp_a0 = temp_a0 + 0x34;
    phi_a0 = temp_a0;
    phi_a0_2 = temp_a0;
    phi_v0_3 = temp_v0_4;
    if ((s32) temp_v0_4 < arg2) {
loop_5:
        temp_v0_5 = phi_a0->unk66;
        temp_a0_2 = phi_a0 + 0x34;
        phi_a0 = temp_a0_2;
        phi_a0_2 = temp_a0_2;
        phi_v0_3 = temp_v0_5;
        if ((s32) temp_v0_5 < arg2) {
            goto loop_5;
        }
    }
    temp_v1_2 = phi_a0_2->unk-2;
    temp_s1 = arg2 - temp_v1_2;
    temp_t3 = phi_v0_3 - temp_v1_2;
    if (phi_a0_2->unk30 == 0) {
        temp_f0 = (f32) temp_t3;
        sp90 = temp_f0;
        spD8 = phi_a0_2;
        sp94 = temp_t3;
        func_00022F60((f32) temp_s1 / temp_f0, phi_a0_2, &spD0, &spCC, &spC8, &spC4);
        temp_a0_3 = phi_a0_2;
        temp_t1 = temp_a0_3 - 0x34;
        temp_f18 = (f64) temp_t1->unk28;
        temp_f16 = 1.0 - (f64) temp_t1->unk24;
        temp_f4 = (f64) temp_t1->unk2C;
        sp58 = temp_f4;
        temp_f10 = temp_f4;
        temp_v0_6 = temp_t1->unk32;
        temp_f20 = (f32) ((temp_f16 * (1.0 + temp_f18)) * (1.0 + temp_f4));
        temp_f12 = (f64) temp_a0_3->unk28;
        temp_f2 = 1.0 - (f64) temp_a0_3->unk24;
        temp_f22 = (f32) ((temp_f16 * (1.0 - temp_f18)) * (1.0 - temp_f10));
        temp_f14 = (f64) temp_a0_3->unk2C;
        temp_f24 = (f32) ((temp_f2 * (1.0 - temp_f12)) * (1.0 + temp_f14));
        temp_f26 = (f32) ((temp_f2 * (1.0 + temp_f12)) * (1.0 - temp_f14));
        if (temp_v0_6 != 0) {
            spA8 = sp90 / (f32) (temp_a0_3->unk32 - temp_t1->unk-2);
        }
        spB8 = temp_f20;
        spB4 = temp_f22;
        spB0 = temp_f24;
        spAC = temp_f26;
        if (arg0->unk6 != temp_a0_3->unk32) {
            spAC = temp_f26;
            spB0 = temp_f24;
            spB4 = temp_f22;
            spB8 = temp_f20;
            spA4 = sp90 / (f32) (temp_a0_3->unk66 - temp_v0_6);
        }
    }
    temp_t1_2 = phi_a0_2 - 0x34;
    phi_a2 = phi_a0_2;
    phi_a3 = temp_t1_2;
    phi_a1 = arg1;
    phi_v1_3 = 0;
loop_12:
    temp_f14_2 = phi_a2->unk0;
    temp_f2_2 = phi_a3->unk0;
    temp_v1_3 = phi_v1_3 + 4;
    temp_f0_2 = temp_f14_2 - temp_f2_2;
    if (phi_a0_2->unk30 == 0) {
        temp_v0_7 = phi_a0_2->unk32;
        if (temp_t1_2->unk32 == 0) {
            phi_f16 = (f32) (((f64) (spB8 + spB4) * 0.5) * (f64) temp_f0_2);
        } else {
            phi_f16 = (((temp_f2_2 - phi_a3->unk-34) * spB8) + (spB4 * temp_f0_2)) * spA8;
        }
        if (arg0->unk6 == temp_v0_7) {
            phi_f12 = (f32) (((f64) (spB0 + spAC) * 0.5) * (f64) temp_f0_2);
        } else {
            phi_f12 = (((phi_a2->unk34 - temp_f14_2) * spAC) + (spB0 * temp_f0_2)) * spA4;
        }
        *phi_a1 = (f32) ((((temp_f14_2 * spCC) + (temp_f2_2 * spD0)) + (phi_f16 * spC8)) + (phi_f12 * spC4));
        phi_return = (void *) temp_v0_7;
    } else {
        *phi_a1 = (f32) (temp_f2_2 + (((f32) temp_s1 / (f32) (phi_v0_3 - temp_v1_2)) * temp_f0_2));
        phi_return = (bitwise void *) temp_f0_2;
    }
    phi_a2 = phi_a2 + 4;
    phi_a3 = phi_a3 + 4;
    phi_a1 = phi_a1 + 4;
    phi_v1_3 = temp_v1_3;
    if (temp_v1_3 != 0x24) {
        goto loop_12;
    }
    return phi_return;
}
