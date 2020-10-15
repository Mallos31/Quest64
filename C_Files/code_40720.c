void *func_8003FB20(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a2;
    void *temp_v0;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a2;

    phi_v1 = arg1;
    phi_v0 = arg0;
    phi_a2 = arg2;
    if (arg2 != 0) {
loop_1:
        temp_a2 = phi_a2 - 1;
        temp_v0 = phi_v0 + 1;
        temp_v0->unk-1 = (u8) *phi_v1;
        phi_v1 = phi_v1 + 1;
        phi_v0 = temp_v0;
        phi_a2 = temp_a2;
        if (temp_a2 != 0) {
            goto loop_1;
        }
    }
    return arg0;
}

s32 func_8003FB4C(void *arg0) {
    void *temp_v1;
    void *phi_v1;
    void *phi_v1_2;

    phi_v1 = arg0;
    phi_v1_2 = arg0;
    if (*arg0 != 0) {
loop_1:
        temp_v1 = phi_v1 + 1;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (phi_v1->unk1 != 0) {
            goto loop_1;
        }
    }
    return phi_v1_2 - arg0;
}

void *func_8003FB74(void *arg0, s32 arg1) {
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_a0;
    u8 phi_v1;
    void *phi_a0;
    void *phi_a0_2;

    temp_v1 = *arg0;
    phi_v1 = temp_v1;
    phi_a0 = arg0;
    phi_a0_2 = arg0;
    if ((arg1 & 0xFF) != temp_v1) {
loop_1:
        if (phi_v1 == 0) {
            return NULL;
        }
        temp_v1_2 = phi_a0->unk1;
        temp_a0 = phi_a0 + 1;
        phi_v1 = temp_v1_2;
        phi_a0 = temp_a0;
        phi_a0_2 = temp_a0;
        if ((arg1 & 0xFF) != temp_v1_2) {
            goto loop_1;
        }
    }
    return phi_a0_2;
}
