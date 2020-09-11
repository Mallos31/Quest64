void func_9b6c(void) {
    s32 temp_s1;
    void *temp_s2;
    void *phi_s0;
    s32 phi_s1;

    phi_s0 = (void *)0x8007C998;
    phi_s1 = 6;
loop_1:
    temp_s2 = phi_s0 + 0x24;
    if ((u16)-1 != phi_s0->unk74) {
        func_000202E4(temp_s2);
        temp_s2->unk50 = (u16)-1;
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x128;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    *(void *)0x8007C990 = 0;
}
