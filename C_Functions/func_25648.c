? func_25648(void *arg0) {
    s32 temp_s1;
    void *temp_s0;
    s32 phi_s1;
    void *phi_s0;

    if ((void *)0x8008F698->unk0 == 0) {
        (void *)0x8008F698->unk8 = 0x8008F6A8;
        (void *)0x8008F698->unk4 = 0;
        phi_s1 = 0x8008F6BC;
        phi_s0 = (void *)0x8008F6A8;
loop_2:
        func_00036850(phi_s1, phi_s0);
        temp_s1 = phi_s1 + 0x14;
        temp_s0 = phi_s0 + 0x14;
        temp_s0->unk-4 = func_00036660(0, 0, 0x8008F240, 1, 0x500);
        phi_s1 = temp_s1;
        phi_s0 = temp_s0;
        if (temp_s1 != 0x8008F928) {
            goto loop_2;
        }
        (void *)0x8008F698->unk0 = (u8)1U;
    }
    *arg0 = (void *)0x8008F698;
    return 0x800248C8;
}

