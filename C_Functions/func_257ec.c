void func_257ec(s32 arg0) {
    ? sp1A0;
    ? sp180;
    ? sp168;
    ? sp148;
    ? sp140;
    s32 sp130;
    u32 sp128;
    s32 sp120;
    ? sp70;
    void *sp68;
    s32 sp64;
    s16 sp62;
    s16 sp60;
    s16 sp5E;
    s16 sp5C;
    f32 temp_f0;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_f18;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u32 temp_v0_4;
    void *temp_s0;
    void *temp_s1_2;
    void *temp_s6;
    void *temp_v1_2;
    s32 phi_v0;
    s32 phi_v0_2;
    s16 *phi_s0;
    s16 *phi_s2;
    s32 phi_s1;

    sp128 = 0U;
    sp68 = NULL;
    sp64 = 0;
    temp_f0 = ((f32) *(void *)0x8008F610 * 1.0f) / 60.0f;
    temp_f18 = (s32) temp_f0;
    phi_v0 = temp_f18;
    if ((f32) temp_f18 < temp_f0) {
        phi_v0 = temp_f18 + 1;
    }
    phi_v0_2 = phi_v0;
    if ((phi_v0 & 0xF) != 0) {
        phi_v0_2 = (phi_v0 & -0x10) + 0x10;
    }
    sp130 = phi_v0_2;
    func_00033F10(&sp1A0, &sp180, 8);
    func_00033F10(&sp168, &sp148, 8);
    func_000007D4(arg0, &sp140, &sp1A0);
    sp120 = func_000006F8(arg0);
loop_5:
    func_00034020(&sp1A0, &sp68, 1);
    temp_v1 = *sp68;
    if (temp_v1 == 1) {
        func_0002571C();
        if (sp64 != 1) {
            if (sp64 == 2) {
                goto loop_5;
            }
        } else {
            phi_s0 = &sp5C;
            phi_s2 = &sp60;
            phi_s1 = 0;
loop_12:
            *phi_s0 = (s16) (*phi_s0 - ((s32) *phi_s2 / 0x1C));
            if ((s32) *phi_s0 < 0) {
                *phi_s0 = (u16)0;
            }
            func_000368E0((((((((phi_s1 * 4) - phi_s1) * 4) + phi_s1) * 8) - phi_s1) * 4) + 0x8008F978 + 0x1C, *phi_s0);
            temp_s1 = phi_s1 + 1;
            phi_s0 = phi_s0 + 2;
            phi_s2 = phi_s2 + 2;
            phi_s1 = temp_s1;
            if (temp_s1 != 2) {
                goto loop_12;
            }
            if ((sp5C == 0) && (sp5E == 0)) {
                sp64 = sp64 + 1;
            }
        }
        temp_s3 = sp130 - 0x10;
        temp_a3 = *(void *)0x800538FC;
        temp_s2 = (s32) *(void *)0x80053900 % 3;
        temp_s0 = (temp_a3 * 0x58) + &sp70;
        temp_s5 = ((temp_a3 * 4) + 0x80090000)->unk-DB0;
        func_00024B1C(temp_a3);
        temp_s6 = (temp_s2 * 4) + 0x8008F260;
        temp_v0_2 = func_00034DD0(*temp_s6);
        temp_s1_2 = (temp_s2 * 2) + 0x80053904;
        *temp_s1_2 = (s16) (((sp130 - sp128) + 0x60) & 0xFFF0);
        if ((s32) *temp_s1_2 < temp_s3) {
            *temp_s1_2 = (s16) temp_s3;
        }
        temp_v0_3 = func_00036A68(temp_s5, 0x8008F928, temp_v0_2, *temp_s1_2);
        temp_a3_2 = *(void *)0x800538FC;
        temp_s0->unk0 = 0;
        temp_s0->unk50 = &sp168;
        temp_s0->unk54 = 0;
        temp_v1_2 = (temp_a3_2 * 4) + 0x8008F250;
        temp_s0->unk40 = (s32) *temp_v1_2;
        temp_s0->unk44 = (s32) (((s32) (temp_v0_3 - *temp_v1_2) >> 3) * 8);
        temp_s0->unk10 = 2;
        temp_s0->unk14 = 0;
        temp_s0->unk18 = 0x80049EF0;
        temp_s0->unk1C = (s32) (0x80049FC0 - 0x80049EF0);
        temp_s0->unk20 = 0x8004B3F0;
        temp_s0->unk28 = 0x80072BD0;
        temp_s0->unk2C = 0x800;
        temp_s0->unk30 = 0;
        temp_s0->unk34 = 0;
        temp_s0->unk38 = 0;
        temp_s0->unk3C = 0;
        temp_s0->unk48 = 0;
        temp_s0->unk4C = 0;
        func_00034200(sp120, temp_s0, 1, temp_a3_2);
        temp_v0_4 = func_00037000();
        temp_a3_3 = *(void *)0x800538FC;
        *(void *)0x80053900 = (s32) (*(void *)0x80053900 + 1);
        sp128 = temp_v0_4 >> 2;
        *(void *)0x800538FC = (s32) (temp_a3_3 ^ 1);
        func_00034020(&sp168, 0, 1, temp_a3_3);
        func_00037010(*temp_s6, *temp_s1_2 * 4);
        goto loop_5;
    }
    if (temp_v1 != 3) {
        goto loop_5;
    }
    sp64 = sp64 + 1;
    sp60 = func_000370C0(0x8008F994);
    temp_v0 = func_000370C0(0x8008FB30);
    sp5E = temp_v0;
    sp62 = temp_v0;
    sp5C = sp60;
    goto loop_5;
}

