s32 func_efc4(void) {
    s32 temp_v0;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x8007D2D0 = 0;
    phi_a0 = (void *)0x80084180;
    phi_v1 = (void *)0x80084098;
    phi_v0 = 8;
loop_1:
    phi_a0->unk0 = 0;
    phi_v1->unk0 = 0;
    phi_a0->unk1C = 0;
    phi_v1->unk1C = 0;
    phi_a0->unk38 = 0;
    phi_v1->unk38 = 0;
    phi_a0->unk54 = 0;
    temp_v0 = phi_v0 - 4;
    phi_v1->unk54 = 0;
    phi_a0 = phi_a0 + 0x70;
    phi_v1 = phi_v1 + 0x70;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
