s32 func_194c4(void) {
    s32 temp_v0;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x80087208 = 0;
    phi_a0 = (void *)0x80087310;
    phi_v1 = (void *)0x80087250;
    phi_v0 = 8;
loop_1:
    phi_a0->unk0 = 0;
    phi_v1->unk0 = 0;
    phi_a0->unk18 = 0;
    phi_v1->unk18 = 0;
    phi_a0->unk30 = 0;
    phi_v1->unk30 = 0;
    phi_a0->unk48 = 0;
    temp_v0 = phi_v0 - 4;
    phi_v1->unk48 = 0;
    phi_a0 = phi_a0 + 0x60;
    phi_v1 = phi_v1 + 0x60;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
