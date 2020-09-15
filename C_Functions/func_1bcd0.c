void *func_1bcd0(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x80088428;
    phi_v1 = 0x100;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = (u16)0;
    phi_v0->unk40 = (u16)0;
    phi_v0->unk80 = (u16)0;
    phi_v0->unkC0 = (u16)0;
    temp_v0 = phi_v0 + 0x100;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    *(void *)0x80088420 = 0;
    return temp_v0;
}
