void func_1bd9c(s32 arg0) {
    f32 spEC;
    f32 spE8;
    f32 spE4;
    ? spB4;
    ? sp74;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_v1;
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *phi_s0;
    s32 phi_s6;
    s32 phi_s5;
    s32 phi_s5_2;
    s32 phi_s6_2;

    temp_s5 = *(void *)0x80088420;
    if (temp_s5 != 0) {
        phi_s0 = (void *)0x80088428;
        phi_s6 = 0;
        phi_s5_2 = temp_s5;
loop_2:
        temp_v0 = phi_s0->unk0;
        phi_s5 = phi_s5_2;
        if (temp_v0 != 0) {
            temp_v1 = phi_s0->unk10;
            phi_s0->unk0 = (u16) (temp_v0 - 1);
            phi_s6_2 = phi_s6;
            if (phi_s6 != temp_v1) {
                func_0001B448(phi_s0->unk8, temp_v1, phi_s0->unk9, phi_s0->unkA, (?32) phi_s0->unkB, (?32) phi_s0->unkC);
                phi_s6_2 = temp_v1;
            }
            temp_v0_2 = phi_s0->unk4;
            if (temp_v0_2 != 0) {
                temp_v0_2(phi_s0);
            } else {
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk4 = 0x8004D050;
                temp_v0_3->unk0 = 0x6000000;
            }
            if ((phi_s0->unk2 & 1) != 0) {
                func_00023A08(&spB4, phi_s0->unk30, phi_s0->unk34, phi_s0->unk38);
                spE4 = phi_s0->unk18;
                spE8 = phi_s0->unk1C;
                spEC = phi_s0->unk20;
                temp_f0 = phi_s0->unk28;
                func_00023DF4(&spB4, temp_f0, temp_f0, temp_f0);
            } else {
                func_0002371C(&spB4, (bitwise s32) phi_s0->unk18, (bitwise s32) phi_s0->unk1C, (bitwise s32) phi_s0->unk20, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10, (void *)0x80086DC0->unk14);
                temp_f0_2 = phi_s0->unk24;
                if (0.0f != temp_f0_2) {
                    func_00023570(&sp74, 0.0f, 0.0f, temp_f0_2);
                    func_00035510(&sp74, &spB4, &spB4);
                }
                func_00023DF4(&spB4, (bitwise s32) phi_s0->unk28, phi_s0->unk2C, 0x3F800000);
            }
            func_00035200(&spB4, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk0 = 0x1020040;
            temp_v0_4->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
            temp_s5_2 = phi_s5_2 - 1;
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_v0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk0 = 0x6000000;
            temp_v0_5->unk4 = (s32) phi_s0->unk14;
            phi_s5 = temp_s5_2;
            phi_s6 = phi_s6_2;
            if (phi_s0->unk0 == 0) {
                *(void *)0x80088420 = (s32) (*(void *)0x80088420 - 1);
                phi_s5 = temp_s5_2;
                phi_s6 = phi_s6_2;
            }
        }
        phi_s0 = phi_s0 + 0x40;
        phi_s5_2 = phi_s5;
        if (phi_s5 != 0) {
            goto loop_2;
        }
    }
}
