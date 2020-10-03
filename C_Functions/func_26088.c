void func_26088(s32 arg0, s32 arg1, ? arg2) {
    s32 sp10;
    s32 temp_s0;
    u32 temp_s2;
    void *temp_t1;
    void *temp_t9;
    void *temp_v0;
    s32 phi_s1;
    s32 phi_s0;
    u32 phi_s2;

    temp_s0 = arg1 - arg0;
    sp10 = temp_s0;
    temp_v0 = func_00036660(0, 0, 0x8008F240, 1);
    *(void *)0x800538EC = temp_v0;
    func_00024690(arg0, temp_v0, temp_s0);
    (void *)0x8008F678->unk0 = 0x50;
    (void *)0x8008F678->unk4 = 0x20;
    (void *)0x8008F678->unk8 = 0x8008F240;
    func_000396D4(0x8008F620, (void *)0x8008F678);
    func_00038404(*(void *)0x800538EC, arg2);
    temp_t9 = (*(void *)0x800538EC)->unk4;
    *(void *)0x8008F688 = temp_t9;
    temp_t1 = temp_t9->unkC;
    *(void *)0x8008F684 = temp_t1;
    sp10 = temp_t1->unkE * 2;
    *(void *)0x8008F68C = func_00036660(0, 0, 0x8008F240, 1);
    *(void *)0x8008F690 = 0;
    if ((*(void *)0x8008F684)->unkE != 0) {
        phi_s1 = 0;
        phi_s0 = 0;
        phi_s2 = 0U;
loop_2:
        *(*(void *)0x8008F68C + phi_s0) = func_00039810(0x8008F620, (*(void *)0x8008F684 + phi_s1)->unk10);
        if (-1 != *(*(void *)0x8008F68C + phi_s0)) {
            *(void *)0x8008F690 = (s32) (*(void *)0x8008F690 + 1);
        }
        temp_s2 = phi_s2 + 1;
        phi_s1 = phi_s1 + 4;
        phi_s0 = phi_s0 + 2;
        phi_s2 = temp_s2;
        if (temp_s2 < (u32) (*(void *)0x8008F684)->unkE) {
            goto loop_2;
        }
    }
}

