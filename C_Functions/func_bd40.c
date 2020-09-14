s32 func_bd40(s32 arg0) {
    s32 temp_v1;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_v0 = 0x8007C9BC;
    phi_v1 = 0;
loop_1:
    phi_v1_2 = phi_v1;
    if (arg0 != phi_v0) {
        temp_v1 = phi_v1 + 1;
        phi_v0 = phi_v0 + 0x128;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 6) {
            goto loop_1;
        }
    }
    return phi_v1_2;
}
