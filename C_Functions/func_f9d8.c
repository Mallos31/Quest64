s32 func_f9d8(void) {
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a0;
    void *phi_a0;
    s32 phi_v0;

    temp_v0_2 = *(void *)0x8004C428;
    if (temp_v0_2 >= 0) {
        *(void *)0x8004C428 = 0;
        *(void *)0x8008286A = (u16) *(void *)0x80082868;
        phi_a0 = (void *)0x80082866;
        phi_v0 = 0xC8;
loop_2:
        temp_v0 = phi_v0 - 4;
        temp_a0 = phi_a0 - 8;
        temp_a0->unkA = (u16) phi_a0->unk0;
        temp_a0->unk8 = (u16) phi_a0->unk-2;
        temp_a0->unk6 = (u16) phi_a0->unk-4;
        temp_a0->unk4 = (u16) phi_a0->unk-6;
        phi_a0 = temp_a0;
        phi_v0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_2;
        }
        (void *)0x800826D8->unk0 = (u16) (void *)0x800826D8->unk192;
        return temp_v0;
    }
    temp_v0_2 = temp_v0_2 + 1;
    *(void *)0x8004C428 = temp_v0_2;
    return temp_v0_2;
}
