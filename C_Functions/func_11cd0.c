void *func_11cd0(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x800859E8;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = 0;
    phi_v0->unk30 = 0;
    phi_v0->unk60 = 0;
    phi_v0->unk90 = 0;
    temp_v0 = phi_v0 + 0xC0;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
