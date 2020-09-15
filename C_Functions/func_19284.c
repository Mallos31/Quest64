s32 func_19284(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    phi_v1 = (void *)0x80087210;
    phi_v0 = 8;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = 0;
    phi_v1->unk8 = 0;
    phi_v1->unk10 = 0;
    phi_v1->unk18 = 0;
    phi_v1 = phi_v1 + 0x20;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
