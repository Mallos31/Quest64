s32 func_16750(void) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;

    phi_v1 = 0xA;
    phi_v0 = (void *)0x80086F18;
    phi_v1_2 = 0xA;
    if (*(void *)0x80086F1C == 0) {
loop_1:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x3C;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v1_2 = temp_v1;
            if (temp_v0->unk4 == 0) {
                goto loop_1;
            }
        }
    }
    return phi_v1_2;
}
