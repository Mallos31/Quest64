void *func_178b0(s32 arg0, void *arg1) {
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a0;
    void *phi_return;

    temp_a0 = arg1;
    temp_v0 = temp_a0->unk68;
    phi_return = temp_v0;
    if (*temp_v0 != 0) {
        *temp_v0 = (u16)0U;
        phi_a0 = temp_a0;
        if ((temp_a0->unk5E & 1) != 0) {
            arg1 = temp_a0;
            func_0000B140(temp_a0);
            phi_a0 = arg1;
        }
        phi_a0->unk68->unk8A = (u16)0x10;
        phi_a0->unk68->unk88 = (u16) phi_a0->unk64->unkE;
        phi_a0->unk68->unk86 = (u16) phi_a0->unk64->unkC;
        phi_a0->unk68->unk90 = 1.0f;
        phi_return = (void *)0x80080000;
        if ((phi_a0->unk5E & 1) == 0) {
            temp_v0_2 = *(void *)0x8007BAC8;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_return = temp_v0_2;
        }
    }
    return phi_return;
}
