s32 func_30730(s32 arg0) {
    s32 sp68;
    u32 sp50;
    s32 sp40;
    s32 sp3C;
    s16 temp_a1;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_v0_2;
    void *temp_s2;
    s32 phi_s0;
    s32 phi_s1;

    temp_s2 = (arg0 * 0x89C) + 0x800905E0;
    temp_v1 = temp_s2->unk8;
    temp_a1 = temp_s2->unkA;
    sp68 = 0;
    if ((temp_s2->unk0 & 0x10000000) != 0) {
        temp_v0 = temp_s2->unkC;
        sp50 = 0xCU;
        phi_s0 = temp_v0 * ((u32) temp_v1 / 0xCU);
        phi_s1 = temp_v0 * ((u32) temp_a1 / 0xCU);
    } else {
        temp_v0_2 = 0xB - temp_s2->unkC;
        sp50 = 0xAU;
        phi_s0 = temp_v0_2 * ((u32) temp_v1 / 0xAU);
        phi_s1 = temp_v0_2 * ((u32) temp_a1 / 0xAU);
    }
    temp_s4 = ((s32) ((temp_s2->unk6 + ((s32) temp_a1 >> 1)) << 0x10) >> 0x10) - (phi_s1 >> 1);
    temp_s3 = ((s32) ((temp_s2->unk4 + ((s32) temp_v1 >> 1)) << 0x10) >> 0x10) - (phi_s0 >> 1);
    func_000307D8(0, temp_s3, temp_s4, phi_s0, phi_s1);
    temp_a1_2 = temp_s3 + phi_s0;
    sp40 = temp_a1_2;
    func_000307D8(3, temp_a1_2, temp_s4 + 3, 3, phi_s1);
    temp_a2 = temp_s4 + phi_s1;
    sp3C = temp_a2;
    func_000307D8(3, temp_s3 + 3, temp_a2, phi_s0, 3);
    func_000307D8(3, temp_s3, temp_s4, phi_s0, 1);
    func_000307D8(3, temp_s3, temp_a2 - 1, phi_s0, 1);
    func_000307D8(3, temp_s3, temp_s4, 1, phi_s1);
    func_000307D8(3, temp_a1_2 - 1, temp_s4, 1, phi_s1);
    temp_s2->unkC = (s16) (temp_s2->unkC + 1);
    if (sp50 < (u32) temp_s2->unkC) {
        sp68 = -1;
    }
    return sp68;
}

