s32 func_12734(void) {
    void *temp_v1;
    void *phi_v1;

    phi_v1 = (void *)0x800869D8;
loop_1:
    temp_v1 = phi_v1 + 4;
    temp_v1->unk-3 = (u8)0;
    temp_v1->unk-2 = (u8)0;
    temp_v1->unk-1 = (u8)0;
    temp_v1->unk-4 = (u8)0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0x800869F8) {
        goto loop_1;
    }
    return 0x800869F8;
}
