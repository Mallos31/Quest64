void *func_96d8(s32 arg0, void *arg1) {
    s32 temp_v1;
    s32 temp_v1_2;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a1;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_a0;

    phi_a1 = arg1;
    phi_v0 = (void *)0x8007C570;
    phi_v1 = 0x400;
loop_1:
    temp_v1 = phi_v1 - 1;
    temp_v0_2 = phi_v0 + 1;
    temp_v0_2->unk-1 = (u8) *phi_a1;
    phi_a1 = phi_a1 + 1;
    phi_v0 = temp_v0_2;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    temp_v0 = (arg0 * 0x84) + 0x8007BD30;
    if (temp_v0->unk80->unk14 != 0) {
        phi_v1_2 = 0;
        phi_a0 = (void *)0x8007C970;
loop_4:
        temp_a0 = phi_a0 + 4;
        temp_a0->unk-4 = (u8) *(temp_v0->unk80->unk14 + phi_v1_2);
        temp_a0->unk-3 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk1;
        temp_a0->unk-2 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk2;
        temp_v1_2 = phi_v1_2 + 4;
        temp_a0->unk-1 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk3;
        phi_v1_2 = temp_v1_2;
        phi_a0 = temp_a0;
        if (temp_v1_2 != 0x20) {
            goto loop_4;
        }
        return temp_v0;
    }
    *(void *)0x8007C970 = (u8)0xFF;
    return temp_v0;
}
