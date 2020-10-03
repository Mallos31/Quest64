void func_2571c(void) {
    void *temp_a1;
    void *temp_s0;
    void *temp_v0;
    void *phi_s0;

    temp_s0 = (void *)0x8008F698->unk4;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        temp_v0 = phi_s0->unk0;
        if ((u32) (phi_s0->unkC + 2) < (u32) *(void *)0x800538F8) {
            if (phi_s0 == (void *)0x8008F698->unk4) {
                (void *)0x8008F698->unk4 = temp_v0;
            }
            func_00036820(phi_s0);
            temp_a1 = (void *)0x8008F698->unk8;
            if (temp_a1 != 0) {
                func_00036850(phi_s0, temp_a1);
            } else {
                (void *)0x8008F698->unk8 = phi_s0;
                phi_s0->unk0 = NULL;
                phi_s0->unk4 = 0;
            }
        }
        phi_s0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_1;
        }
    }
    *(void *)0x800538F4 = 0;
    *(void *)0x800538F8 = (u32) (*(void *)0x800538F8 + 1);
}

