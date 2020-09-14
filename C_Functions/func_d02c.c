void *func_d02c(void) {
    s32 temp_v0;
    u16 temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    s32 phi_v0;
    void *phi_return;

    *(void *)0x8007D2D4 = 0;
    phi_return = (void *)0x80120000;
    if (*(void *)0x80084EE4 == 0x1D) {
        temp_a0 = *(void *)0x80124E24;
        *(void *)0x80124E24 = (u16) (void *)0x80124E22->unk0;
        temp_v1 = (void *)0x80124E22 - 2;
        temp_v1->unk2 = (u16) (void *)0x80124E22->unk-2;
        phi_v1 = temp_v1;
        phi_v0 = 0x10;
loop_2:
        temp_v0 = phi_v0 - 4;
        temp_v1_2 = phi_v1 - 8;
        temp_v1_2->unk8 = (u16) phi_v1->unk-2;
        temp_v1_2->unk6 = (u16) phi_v1->unk-4;
        temp_v1_2->unk4 = (u16) phi_v1->unk-6;
        temp_v1_2->unk2 = (u16) phi_v1->unk-8;
        phi_v1 = temp_v1_2;
        phi_v0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_2;
        }
        temp_v1_2->unk0 = temp_a0;
        *(void *)0x80084ED0 = (u16) (*(void *)0x80084ED0 + 1);
        phi_return = (void *)0x80084ED0;
    }
    return phi_return;
}
