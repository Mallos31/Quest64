void *func_17b88(void *arg0) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_return;

    if ((arg0->unk24->unk5E & 1) != 0) {
        arg0->unk28 = 0x8007BACC;
        return (void *)0x80080000;
    }
    phi_v1 = 6;
    phi_v0 = (void *)0x8007C998;
    phi_v1_2 = 6;
    phi_v0_2 = (void *)0x8007C998;
    phi_return = (void *)0x8007C998;
    if (-1 == *(void *)0x8007CA0C) {
loop_3:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x128;
        phi_v1_2 = temp_v1;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v1_2 = temp_v1;
            phi_v0_2 = temp_v0;
            phi_return = temp_v0;
            if (-1 == temp_v0->unk74) {
                goto loop_3;
            }
        }
    }
    if (phi_v1_2 != 0) {
        arg0->unk28 = (s32) (phi_v0_2 + 0x24);
        return phi_return;
    }
    arg0->unk28 = 0;
    return phi_return;
}
