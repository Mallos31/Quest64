s32 func_21e40(s32 arg0) {
    void *temp_a2;
    void *phi_a2;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_a2 = (void *)0x8008D00D;
    phi_v1_2 = 0;
loop_1:
    temp_a2 = phi_a2 - 1;
    phi_v1 = phi_v1_2;
    if ((arg0 & 0xFF) == *phi_a2) {
        phi_v1 = phi_v1_2 + 1;
    }
    if (temp_a2 != 0x8008CF77) {
        phi_a2 = temp_a2;
        phi_v1_2 = phi_v1;
        if (phi_v1 == 0) {
            goto loop_1;
        }
    }
    return phi_v1;
}
