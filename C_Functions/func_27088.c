void func_27088(void) {
    s32 temp_a0;
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;
    void *phi_s1;

    phi_s0 = (void *)0x80053994;
    phi_s1 = (void *)0x800539A8;
loop_1:
    temp_a0 = *phi_s0;
    if (temp_a0 != 0xFF) {
        func_0002568C(temp_a0);
    }
    temp_s1 = phi_s1 + 4;
    temp_s0 = phi_s0 + 4;
    temp_s1->unk-4 = 0;
    temp_s0->unk-4 = 0xFF;
    phi_s0 = temp_s0;
    phi_s1 = temp_s1;
    if (temp_s1 != 0x800539BC) {
        goto loop_1;
    }
}

