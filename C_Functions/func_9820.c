void func_9820(void) {
    s32 temp_s1;
    void *temp_a0;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_s1_2;

    temp_s1 = *(void *)0x8007C990;
    if (temp_s1 != 0) {
        if (temp_s1 != 0) {
            phi_s0 = (void *)0x8007C998;
            phi_s1_2 = temp_s1;
loop_3:
            temp_a0 = phi_s0 + 0x24;
            phi_s1 = phi_s1_2;
            if (-1 != phi_s0->unk74) {
                *((phi_s0->unk0 * 4) + 0x8004C290)(temp_a0, phi_s0, *(*(void *)0x8007D0A8 + (temp_a0->unk50 * 4)));
                phi_s1 = phi_s1_2 - 1;
            }
            phi_s0 = phi_s0 + 0x128;
            phi_s1_2 = phi_s1;
            if (phi_s1 != 0) {
                goto loop_3;
            }
        }
    }
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        func_0000B300();
    }
}
