void *func_11b0c(s32 arg0) {
    s32 temp_s1;
    s32 temp_s2;
    u16 temp_t0;
    u16 temp_t4;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_v0;
    void *phi_v1;
    void *phi_a1;
    s32 phi_a0;
    void *phi_v0_2;
    void *phi_a1_2;
    s32 phi_a0_2;
    void *phi_return;

    temp_v0_2 = *(void *)0x80085394;
    temp_a1 = *(void *)0x80085398;
    if (arg0 != 0) {
        phi_return = temp_v0_2;
        if (0x100 != 0) {
            phi_v0 = temp_v0_2;
            phi_v1 = (void *)0x800853A0;
            phi_a1 = temp_a1;
            phi_a0 = 0xFF;
loop_3:
            temp_t0 = *phi_v0;
            temp_s1 = *(void *)0x80085390;
            temp_t4 = *phi_v1;
            temp_s2 = temp_s1 - arg0;
            temp_v0 = phi_v0 + 2;
            temp_a1_2 = phi_a1 + 2;
            temp_a1_2->unk-2 = (s16) ((((((s32) (((((s32) (temp_t0 & 0xF800) >> 0xB) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0xF800) >> 0xB) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) << 0xB) | ((((s32) (((((s32) (temp_t0 & 0x7C0) >> 6) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0x7C0) >> 6) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) << 6)) | ((((s32) (((((s32) (temp_t0 & 0x3E) >> 1) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0x3E) >> 1) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) * 2));
            phi_v0 = temp_v0;
            phi_v1 = phi_v1 + 2;
            phi_a1 = temp_a1_2;
            phi_a0 = phi_a0 - 1;
            if (phi_a0 != 0) {
                goto loop_3;
            }
            return temp_v0;
        }
    } else {
        phi_v0_2 = temp_v0_2;
        phi_a1_2 = temp_a1;
        phi_a0_2 = 0xFF;
        phi_return = temp_v0_2;
        if (0x100 != 0) {
loop_6:
            temp_v0_3 = phi_v0_2 + 2;
            temp_a1_3 = phi_a1_2 + 2;
            temp_a1_3->unk-2 = (u16) *phi_v0_2;
            phi_v0_2 = temp_v0_3;
            phi_a1_2 = temp_a1_3;
            phi_a0_2 = phi_a0_2 - 1;
            phi_return = temp_v0_3;
            if (phi_a0_2 != 0) {
                goto loop_6;
            }
        }
    }
    return phi_return;
}
