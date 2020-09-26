s32 func_21ea0(s32 arg0) {
    void *temp_v1;
    void *phi_v1;
    void *phi_v1_2;

    phi_v1 = (void *)0x8008CF78;
loop_1:
    phi_v1_2 = phi_v1;
    if (0xFF != *phi_v1) {
        temp_v1 = phi_v1 + 1;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0x8008D00E) {
            goto loop_1;
        }
    }
    *phi_v1_2 = (s8) (arg0 & 0xFF);
    return 0xFF;
}
