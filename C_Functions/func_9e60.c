u32 func_9e60(void) {
    ? sp18;
    ? *temp_a2;
    ? *temp_a2_2;
    s32 temp_a0;
    u16 temp_a3;
    u16 temp_t0;
    u16 temp_t4;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    void *temp_a1;
    s16 phi_v0;
    void *phi_a1;
    void *phi_a3;
    ? *phi_a2;
    ? *phi_a2_2;
    u32 phi_v0_2;
    s32 phi_v1;
    u32 phi_return;
    s32 phi_v1_2;
    s32 phi_v1_3;

    temp_v1 = *(void *)0x8007C990;
    phi_return = (u32) (u16)0;
    if (temp_v1 != 0) {
        phi_v0 = (u16)0;
        phi_a1 = (void *)0x8007D0B0;
        phi_a3 = (void *)0x8007C998;
        phi_a2 = &sp18;
loop_2:
        *phi_a1 = phi_v0;
        temp_v0 = phi_v0 + 1;
        temp_a2 = phi_a2 + 2;
        temp_a2->unk-2 = (u16) phi_a3->unk20->unkC;
        phi_v0 = (s16) temp_v0;
        phi_a1 = phi_a1 + 2;
        phi_a3 = phi_a3 + 0x128;
        phi_a2 = temp_a2;
        phi_return = temp_v0;
        if (temp_v0 < temp_v1) {
            goto loop_2;
        }
    }
    temp_a0 = temp_v1 - 1;
loop_4:
    phi_v1 = 0;
    if (temp_a0 != 0) {
        phi_a2_2 = &sp18;
        phi_v0_2 = 0U;
        phi_v1_3 = 0;
loop_6:
        temp_a3 = phi_a2_2->unk0;
        temp_t0 = phi_a2_2->unk2;
        temp_a1 = phi_v0_2 + 0x8007D0B0;
        phi_v1_2 = phi_v1_3;
        if ((s32) temp_a3 < (s32) temp_t0) {
            temp_t4 = temp_a1->unk2;
            phi_a2_2->unk0 = temp_t0;
            phi_a2_2->unk2 = temp_a3;
            temp_a1->unk2 = (u16) temp_a1->unk0;
            temp_a1->unk0 = temp_t4;
            phi_v1_2 = phi_v1_3 + 1;
        }
        temp_a2_2 = phi_a2_2 + 2;
        temp_v0_2 = phi_v0_2 + 2;
        phi_a2_2 = temp_a2_2;
        phi_v0_2 = temp_v0_2;
        phi_v1 = phi_v1_2;
        phi_return = temp_v0_2;
        phi_v1_3 = phi_v1_2;
        if ((u32) temp_a2_2 < (u32) ((temp_a0 * 2) + &sp18)) {
            goto loop_6;
        }
    }
    if (phi_v1 != 0) {
        goto loop_4;
    }
    return phi_return;
}
