s32 func_2f228(s32 arg0, s32 arg1) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a2;
    s32 phi_v1;
    void *phi_a2_2;
    s32 phi_v1_2;
    void *phi_a0;
    s32 phi_v1_3;

    if ((arg1 & 0xFF) == 0) {
        temp_v0 = (arg0 * 0x89C) + 0x800905E0;
        temp_v0->unk6 = (u16)0;
        temp_v0->unkA = (u16)0;
        temp_v0->unk0 = 0;
        temp_v0->unk4 = (s16) temp_v0->unk6;
        temp_v0->unk8 = (s16) temp_v0->unkA;
    }
    temp_v0_2 = (arg0 * 0x89C) + 0x800905E0;
    temp_a1 = (arg0 * 0x89C) + 0x800905E0;
    temp_v0_2->unkC = (u16)1;
    temp_v0_2->unkE = (u8)0;
    temp_v0_2->unkF = (u8)0;
    temp_v0_2->unk10 = (u8)0;
    temp_v0_2->unk12 = (u16)0;
    temp_v0_2->unk14 = (u8)0xFF;
    temp_v0_2->unk15 = (u8)0;
    temp_v0_2->unk16 = (u8)0;
    phi_a2 = temp_a1;
    phi_v1 = 0;
loop_3:
    temp_v1 = phi_v1 + 1;
    temp_a2 = phi_a2 + 1;
    temp_a2->unk16 = (u8)0xFF;
    phi_a2 = temp_a2;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x20) {
        goto loop_3;
    }
    phi_a2_2 = temp_a1;
    phi_v1_2 = 0;
loop_5:
    temp_v1_2 = phi_v1_2 + 1;
    temp_a2_2 = phi_a2_2 + 1;
    temp_a2_2->unk9B = (u8)0xFF;
    temp_a2_2->unk49B = (u8)0xFF;
    phi_a2_2 = temp_a2_2;
    phi_v1_2 = temp_v1_2;
    if (temp_v1_2 < 0x400) {
        goto loop_5;
    }
    temp_v0_2->unk38 = (u16)0;
    temp_v0_2->unk3A = (u16)0;
    phi_a0 = temp_a1;
    phi_v1_3 = 0;
loop_7:
    temp_v1_3 = phi_v1_3 + 1;
    temp_a0 = phi_a0 + 1;
    temp_a0->unk53 = (u8)0xFF;
    temp_a0->unk6B = (u8)0xFF;
    temp_a0->unk83 = (u8)0xFF;
    temp_a0->unk3B = (u8)0xFF;
    phi_a0 = temp_a0;
    phi_v1_3 = temp_v1_3;
    if (temp_v1_3 != 0x18) {
        goto loop_7;
    }
    return 0x18;
}

