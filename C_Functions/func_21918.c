s32 func_21918(void *arg0) {
    s32 temp_v1;
    void *phi_a0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_a0 = arg0 + 1;
    phi_v1 = 0;
    phi_v1_2 = 0;
    if (*arg0 != 0) {
loop_1:
        temp_v1 = phi_v1_2 + 1;
        phi_a0 = phi_a0 + 1;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (*phi_a0 != 0) {
            goto loop_1;
        }
    }
    return phi_v1;
}
