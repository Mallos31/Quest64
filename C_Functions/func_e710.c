void *func_e710(void) {
    void *temp_v0;
    void *phi_v0;
    s32 phi_a0;

    phi_v0 = (void *)0x80084E60;
    phi_a0 = 3;
loop_1:
    *phi_v0 = 0;
    temp_v0 = phi_v0 + 0x1C;
    phi_v0 = temp_v0;
    phi_a0 = phi_a0 - 1;
    if (phi_a0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
