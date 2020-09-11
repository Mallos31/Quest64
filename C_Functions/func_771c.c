u32 func_771c(void *arg0) {
    s32 temp_a2;
    s32 temp_t6;
    u16 temp_v0;
    u32 temp_t1;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_t0;
    void *temp_a3;
    u32 phi_v1;
    s32 phi_a2;
    s32 phi_a2_2;
    s32 phi_a2_3;
    s32 phi_a2_4;

    temp_a3 = arg0->unk10;
    temp_v0 = arg0->unk104;
    temp_t0 = temp_a3->unk24;
    temp_t6 = ((s32) temp_v0 >> 2) & 0xFFFF;
    temp_a2 = temp_v0 & 0xFFFF;
    phi_a2_4 = temp_a2;
    if (temp_t6 < (s32) temp_t0) {
        phi_a2_4 = ((temp_a2 - temp_t0) + temp_t6) & 0xFFFF;
    }
    temp_a1 = temp_a3->unk25;
    phi_a2_3 = phi_a2_4;
    if (temp_t6 < (s32) temp_a1) {
        phi_a2_3 = ((phi_a2_4 - temp_a1) + temp_t6) & 0xFFFF;
    }
    temp_a1_2 = temp_a3->unk26;
    phi_a2_2 = phi_a2_3;
    if (temp_t6 < (s32) temp_a1_2) {
        phi_a2_2 = ((phi_a2_3 - temp_a1_2) + temp_t6) & 0xFFFF;
    }
    temp_a1_3 = temp_a3->unk27;
    phi_a2 = phi_a2_2;
    if (temp_t6 < (s32) temp_a1_3) {
        phi_a2 = ((phi_a2_2 - temp_a1_3) + temp_t6) & 0xFFFF;
    }
    temp_t1 = ((s32) (((((s32) temp_v0 >> 1) + phi_a2) & 0xFFFF) * arg0->unk10A) >> 4) & 0xFFFF;
    phi_v1 = temp_t1;
    if ((arg0->unk80 & 1) != 0) {
        phi_v1 = (temp_t1 >> 1) & 0xFFFF;
    }
    return phi_v1;
}
