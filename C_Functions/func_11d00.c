s32 func_11d00(void) {
    s32 temp_a0;
    void *temp_v1;
    s32 phi_a0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_a0_2;

    phi_a0 = 7;
    phi_v1 = (void *)0x80085B38;
    phi_v1_2 = (void *)0x80085B38;
    phi_a0_2 = 7;
    if (*(void *)0x80085B38 != 0) {
loop_1:
        temp_a0 = phi_a0 - 1;
        temp_v1 = phi_v1 - 0x30;
        phi_v1_2 = temp_v1;
        phi_a0_2 = temp_a0;
        if (temp_a0 != 0) {
            phi_a0 = temp_a0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_a0_2 = temp_a0;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unk0 = 1;
    phi_v1_2->unk4 = 0;
    phi_v1_2->unk18 = 0;
    phi_v1_2->unk2C = 0;
    return phi_a0_2;
}
