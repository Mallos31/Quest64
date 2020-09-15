s32 func_192b4(s32 arg0) {
    s32 temp_v0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_return;

    phi_v0 = 7;
    phi_v1 = (void *)0x80087210;
    phi_v1_2 = (void *)0x80087210;
    phi_return = 7;
    if (*(void *)0x80087210 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 8;
        phi_v1_2 = temp_v1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_return = temp_v0;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unk0 = 4;
    phi_v1_2->unk4 = arg0;
    return phi_return;
}
