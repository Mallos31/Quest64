void func_137e0(s32 arg0) {
    f32 sp60;
    f32 sp38;
    f32 temp_f12;
    f64 temp_f0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    s32 phi_a0;

    if (((*(void *)0x80084F1C)->unk14 & 2) != 0) {
        if ((*(void *)0x8008C592 & 1) == 0) {
            temp_a0 = ((s32) *(void *)0x8007BB2E >> 1) & 7;
            if (temp_a0 != *(void *)0x80086ED8) {
                func_00013F5C(temp_a0);
            }
        }
    }
    ((*(void *)0x80086DC0 * 4) + 0x80050000)->unk-3368(0x80086DC0);
    if ((*(void *)0x8007B2E4 & 0x82) == 0) {
        if (*(void *)0x8008C638 == 0) {
            if ((*(void *)0x8008C592 & 1) == 0) {
                if (((*(void *)0x80084F1C)->unk14 & 2) == 0) {
                    if ((*(void *)0x80092876 & 0x20) != 0) {
                        temp_v0 = *(void *)0x80086B88;
                        if (temp_v0 >= 2) {
                            temp_a0_2 = *(void *)0x80086ED8 + 1;
                            *(void *)0x80086ED8 = temp_a0_2;
                            phi_a0 = temp_a0_2;
                            if (temp_a0_2 >= temp_v0) {
                                *(void *)0x80086ED8 = 0;
                                phi_a0 = 0;
                            }
                            func_00013F5C(phi_a0);
                        }
                    }
                }
            }
        }
    }
    func_00035A00(0x80086E48, 0x80086F00, *(void *)0x80086EC8, 0x3FAAAAAB, *(void *)0x80086ECC, *(void *)0x80086ED0, 1.0f);
    func_00035C90(0x80086E88, arg0 + 0x80C0, *(void *)0x80086DCC, *(void *)0x80086DD0, *(void *)0x80086DD4, *(void *)0x80086DD8, *(void *)0x80086DDC, *(void *)0x80086DE0, 0.0f, 1.0f, 0.0f);
    func_00035200(0x80086E48, arg0);
    func_00035200(0x80086E88, arg0 + 0x80);
    if (*(void *)0x80086C2C != 0) {
        func_00036198((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, *(void *)0x80086C30, *(void *)0x80086C34, 0);
        temp_f0 = *(void *)0x80071340;
        *(void *)0x80086C2C = (s32) (*(void *)0x80086C2C - 1);
        *(void *)0x80086C30 = (f32) ((f64) (bitwise f32) *(void *)0x80086C30 * temp_f0);
        *(void *)0x80086C34 = (f32) ((f64) (bitwise f32) *(void *)0x80086C34 * temp_f0);
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk0 = 0x1030040;
        temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0x2000000;
        temp_v0_3->unk0 = 0x1010040;
    } else {
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x2000000;
        temp_v0_4->unk0 = 0x1030040;
    }
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk0 = 0x1010040;
    temp_v0_5->unk4 = 0x2000080;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk0 = 0x3840010;
    temp_v0_6->unk4 = 0x20080C0;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk0 = 0x3820010;
    temp_v0_7->unk4 = 0x20080D0;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = 0xBC00000E;
    temp_v0_8->unk4 = (?32) *(void *)0x80086F00;
    temp_f12 = (f32) (((f64) (bitwise f32) *(void *)0x80086EC8 * *(void *)0x80071348) / 2.0);
    sp60 = temp_f12;
    sp38 = func_00035680(temp_f12);
    *(void *)0x80086ED4 = (f32) (sp38 / func_000361F0(temp_f12));
}
