void *func_21488(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x8008C668;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = (u16)0;
    phi_v0->unk1C = (u16)0;
    phi_v0->unk38 = (u16)0;
    phi_v0->unk54 = (u16)0;
    temp_v0 = phi_v0 + 0x70;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
