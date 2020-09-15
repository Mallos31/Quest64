s32 func_199b4(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x800873DC = (u16)0;
    (void *)0x800873EC->unkC = (u16)0;
    phi_v1 = (void *)0x800873EC + 0x1C;
    phi_v0 = 8;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unkC = (u16)0;
    phi_v1->unk28 = (u16)0;
    phi_v1->unk44 = (u16)0;
    phi_v1->unk60 = (u16)0;
    phi_v1 = phi_v1 + 0x70;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
