s32 func_1ae38(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    phi_v1 = (void *)0x800875A8;
    phi_v0 = 0x20;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = (u16)0;
    phi_v1->unk58 = (u16)0;
    phi_v1->unkB0 = (u16)0;
    phi_v1->unk108 = (u16)0;
    phi_v1 = phi_v1 + 0x160;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
