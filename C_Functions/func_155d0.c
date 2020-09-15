s32 func_155d0(u32 arg0, s32 arg1) {
    s32 temp_t7;
    void *temp_a2;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;

    temp_t7 = (arg0 >> 8) & 0xF;
    temp_a2 = ((temp_t7 * 4) + 0x800C0000)->unk1B14 + ((arg0 & 0xFF) * 0x44);
    phi_v1_3 = 0;
    if ((s32) (*(void *)0x8007BAC8 + temp_t7)->unk24 < (s32) temp_a2->unk0) {
        phi_v1_3 = 4;
    }
    phi_v0 = 2;
    if ((*(void *)0x8008C592 & 1) != 0) {
        phi_v0 = 1;
    }
    phi_v1_2 = phi_v1_3;
    if ((phi_v0 & temp_a2->unk2) == 0) {
        phi_v1_2 = phi_v1_3 | 2;
    }
    phi_v1 = phi_v1_2;
    if ((arg1 & 0xFFFF) < (s32) ((temp_a2->unk4 * 2) + 0x800C0000)->unk1B26) {
        phi_v1 = phi_v1_2 | 1;
    }
    return phi_v1;
}
