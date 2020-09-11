void *func_80a0(void *arg0, void *arg1) {
    f32 temp_f2;
    f32 temp_f2_2;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f12;
    f64 temp_f12_2;
    s32 temp_a0_3;
    s32 temp_t1;
    s32 temp_t4;
    u16 temp_a1;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u16 temp_a1_4;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u16 temp_a2_5;
    u16 temp_a3;
    u16 temp_a3_4;
    u32 temp_a1_5;
    u32 temp_a2_7;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a2_4;
    u8 temp_a2_6;
    u8 temp_a3_2;
    u8 temp_a3_3;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    s32 phi_a0;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a0_2;
    void *phi_v1_2;
    void *phi_v0_2;
    s32 phi_a0_3;
    void *phi_v1_3;
    void *phi_v0_3;
    s32 phi_a0_4;
    f64 phi_f12;
    void *phi_return;
    void *phi_return_2;
    void *phi_return_3;
    void *phi_return_4;

    phi_f12 = (bitwise f64) arg0;
    if ((*(void *)0x8008C592 & 1) == 0) {
        if ((*(void *)0x80084F10 & 1) != 0) {
            temp_f2 = *(void *)0x8007BA5C;
            *(void *)0x8007BC10 = (f32) (*(void *)0x8007BC10 + temp_f2);
            temp_f0 = (f64) *(void *)0x8007BC10;
            if (200.0 < temp_f0) {
                *(void *)0x8007BC10 = (f32) (temp_f0 - 200.0);
            }
            temp_f12 = *(void *)0x800710F8;
            *(void *)0x8007BC18 = (f32) (*(void *)0x8007BC18 + temp_f2);
            temp_f0_2 = (f64) *(void *)0x8007BC18;
            phi_f12 = temp_f12;
            if (temp_f12 < temp_f0_2) {
                *(void *)0x8007BC18 = (f32) (temp_f0_2 - temp_f12);
                temp_v0 = arg0->unk10;
                temp_v0->unk2C = (u16) (temp_v0->unk2C + 1);
                phi_f12 = temp_f12;
            }
        } else {
            temp_f2_2 = *(void *)0x8007BA5C;
            *(void *)0x8007BC14 = (f32) (*(void *)0x8007BC14 + temp_f2_2);
            temp_f0_3 = (f64) *(void *)0x8007BC14;
            if (800.0 < temp_f0_3) {
                *(void *)0x8007BC14 = (f32) (temp_f0_3 - 800.0);
            }
            temp_f12_2 = *(void *)0x80071100;
            *(void *)0x8007BC1C = (f32) (*(void *)0x8007BC1C + temp_f2_2);
            temp_f0_4 = (f64) *(void *)0x8007BC1C;
            phi_f12 = temp_f12_2;
            if (temp_f12_2 < temp_f0_4) {
                *(void *)0x8007BC1C = (f32) (temp_f0_4 - temp_f12_2);
                temp_v0_2 = arg0->unk10;
                temp_v0_2->unk2C = (u16) (temp_v0_2->unk2C + 1);
                phi_f12 = temp_f12_2;
            }
        }
    }
    if ((s32) arg1->unk64->unk6 < 0x1F4) {
        temp_v0_3 = arg0->unk10;
        temp_a1 = temp_v0_3->unk28;
        temp_a3 = *((temp_v0_3->unk30 * 2) + 0x80053ECC);
        if ((s32) temp_a1 >= (s32) temp_a3) {
            temp_v0_3->unk28 = (u16) (temp_a1 - temp_a3);
            temp_v1 = arg1->unk64;
            temp_a2 = temp_v1->unk6;
            phi_a0 = 1;
            if ((temp_a2 + 1) >= 0x1F5) {
                phi_a0 = (0x1F4 - temp_a2) & 0xFFFF;
            }
            temp_v1->unk6 = (u16) (temp_a2 + phi_a0);
            temp_v1_2 = arg1->unk64;
            temp_v1_2->unk4 = (u16) (temp_v1_2->unk4 + phi_a0);
            temp_v0_4 = arg0->unk10;
            temp_a3_2 = temp_v0_4->unk30;
            if ((s32) temp_a3_2 < 0x36) {
                temp_v0_4->unk30 = (u8) (temp_a3_2 + 1);
            }
        }
        phi_v1 = arg1->unk64;
    } else {
        arg0->unk10->unk28 = (u16)0;
        temp_v0_5 = arg0->unk10;
        phi_v1 = arg1->unk64;
        phi_v0 = temp_v0_5;
        phi_return_4 = temp_v0_5;
    }
    if ((s32) phi_v1->unkA < 0x1F4) {
        temp_a1_2 = phi_v0->unk2A;
        temp_t1 = *(0x80053ECC + (phi_v0->unk31 * 2)) * 4;
        phi_v0_2 = phi_v0;
        if ((s32) temp_a1_2 >= temp_t1) {
            phi_v0->unk2A = (u16) (temp_a1_2 - temp_t1);
            temp_v1_3 = arg1->unk64;
            temp_a2_2 = temp_v1_3->unkA;
            phi_a0_2 = 1;
            if ((temp_a2_2 + 1) >= 0x1F5) {
                phi_a0_2 = (0x1F4 - temp_a2_2) & 0xFFFF;
            }
            temp_v1_3->unkA = (u16) (temp_a2_2 + phi_a0_2);
            temp_v1_4 = arg1->unk64;
            temp_v1_4->unk8 = (u16) (temp_v1_4->unk8 + phi_a0_2);
            temp_v0_6 = arg0->unk10;
            temp_a3_3 = temp_v0_6->unk31;
            phi_v0_2 = temp_v0_6;
            phi_return_4 = temp_v0_6;
            if ((s32) temp_a3_3 < 0x36) {
                temp_v0_6->unk31 = (u8) (temp_a3_3 + 1);
                temp_v0_7 = arg0->unk10;
                phi_v0_2 = temp_v0_7;
                phi_return_4 = temp_v0_7;
            }
        }
        phi_v1_2 = arg1->unk64;
    } else {
        phi_v0->unk2A = (u16)0U;
        temp_v0_8 = arg0->unk10;
        phi_v1_2 = arg1->unk64;
        phi_v0_2 = temp_v0_8;
        phi_return_4 = temp_v0_8;
    }
    if ((s32) phi_v1_2->unkC < 0xFF) {
        temp_a2_3 = phi_v0_2->unk2C;
        temp_a3_4 = *(0x80053ECC + (phi_v0_2->unk32 * 2));
        phi_v0_3 = phi_v0_2;
        if ((s32) temp_a2_3 >= (s32) temp_a3_4) {
            phi_v0_2->unk2C = (u16) (temp_a2_3 - temp_a3_4);
            temp_v1_5 = arg1->unk64;
            temp_a1_3 = temp_v1_5->unkC;
            phi_a0_3 = 1;
            if ((temp_a1_3 + 1) >= 0x100) {
                phi_a0_3 = (0xFF - temp_a1_3) & 0xFFFF;
            }
            temp_v1_5->unkC = (u16) (temp_a1_3 + phi_a0_3);
            temp_v0_9 = arg0->unk10;
            temp_a2_4 = temp_v0_9->unk32;
            phi_v0_3 = temp_v0_9;
            phi_return_4 = temp_v0_9;
            if ((s32) temp_a2_4 < 0x36) {
                temp_v0_9->unk32 = (u8) (temp_a2_4 + 1);
                temp_v0_10 = arg0->unk10;
                phi_v0_3 = temp_v0_10;
                phi_return_4 = temp_v0_10;
            }
        }
        phi_v1_3 = arg1->unk64;
    } else {
        phi_v0_2->unk2C = (u16)0U;
        temp_v0_11 = arg0->unk10;
        phi_v1_3 = arg1->unk64;
        phi_v0_3 = temp_v0_11;
        phi_return_4 = temp_v0_11;
    }
    if ((s32) phi_v1_3->unkE < 0xFF) {
        temp_a2_5 = phi_v0_3->unk2E;
        temp_t4 = *(0x80053ECC + (phi_v0_3->unk33 * 2)) * 2;
        phi_return_3 = phi_return_4;
        if ((s32) temp_a2_5 >= temp_t4) {
            phi_v0_3->unk2E = (u16) (temp_a2_5 - temp_t4);
            temp_v1_6 = arg1->unk64;
            temp_a1_4 = temp_v1_6->unkE;
            phi_a0_4 = 1;
            if ((temp_a1_4 + 1) >= 0x100) {
                phi_a0_4 = (0xFF - temp_a1_4) & 0xFFFF;
            }
            temp_v1_6->unkE = (u16) (temp_a1_4 + phi_a0_4);
            temp_v0_12 = arg0->unk10;
            temp_a2_6 = temp_v0_12->unk33;
            phi_return_3 = temp_v0_12;
            if ((s32) temp_a2_6 < 0x36) {
                temp_v0_12->unk33 = (u8) (temp_a2_6 + 1);
                phi_return_3 = temp_v0_12;
            }
        }
    } else {
        phi_v0_3->unk2E = (u16)0U;
        phi_return_3 = phi_return_4;
    }
    phi_return_2 = phi_return_3;
    if ((*(void *)0x8007B2E4 & 8) == 0) {
        temp_a0 = arg0->unk10->unk34;
        temp_v1_7 = arg1->unk64;
        if ((s32) temp_a0 >= 0x62) {
            temp_v1_7->unk10 = 0U;
            phi_return_2 = phi_return_3;
        } else {
            temp_a2_7 = ((temp_a0 * 4) + 0x80050000)->unk3D3C;
            temp_a1_5 = temp_v1_7->unk10;
            phi_return_2 = phi_return_3;
            if (temp_a1_5 >= temp_a2_7) {
                temp_v1_7->unk10 = (u32) (temp_a1_5 - temp_a2_7);
                temp_v0_13 = arg0->unk10;
                temp_a0_2 = temp_v0_13->unk34;
                if ((s32) temp_a0_2 < 0x62) {
                    temp_v0_13->unk34 = (u8) (temp_a0_2 + 1);
                }
                temp_v1_8 = arg0->unk10 + 0x24;
                if ((((0x32 != temp_v1_8->unk0) || (0x32 != temp_v1_8->unk1)) || (0x32 != temp_v1_8->unk2)) || (0x32 != temp_v1_8->unk3)) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 8);
                    arg0->unk0 = (u16)0;
                    phi_return_2 = func_000268D4(phi_f12, 0, 1, 0xFF, (void *)0x8007B2E4);
                } else {

                }
            }
        }
    }
    phi_return = phi_return_2;
    if ((*(void *)0x8007B2E4 & 0xA) == 0) {
        temp_a0_3 = *(void *)0x8007BA70;
        phi_return = phi_return_2;
        if (temp_a0_3 != 0xFF) {
            func_000120C0(temp_a0_3, (void *)0x8007B2E4);
            func_0002E768(1);
            func_000212A0(*(void *)0x8007BA73);
            *(void *)0x8007BA70 = 0xFF;
            arg0->unk8 = (u16) (arg0->unk8 | 2);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
            phi_return = func_000268D4(0, 0x3B, 0xFF);
        }
    }
    return phi_return;
}
