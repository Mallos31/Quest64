s32 func_e738(s32 arg0) {
    s32 temp_v1;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_v0 = (void *)0x80084E60;
    phi_v1 = 4;
loop_1:
    if ((phi_v0->unk0 != 0) && (arg0 == phi_v0->unk10)) {
        phi_v1_2 = 5 - phi_v1;
    } else {
        temp_v1 = phi_v1 - 1;
        phi_v0 = phi_v0 + 0x1C;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0) {
            goto loop_1;
        }
    }
    return phi_v1_2;
}
