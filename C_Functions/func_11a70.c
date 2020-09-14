void *func_11a70(s32 arg0, ?32 arg1, void *arg2) {
    void *temp_v0;
    void *phi_a2;
    void *phi_v0;
    s32 phi_a3;

    *(void *)0x80085390 = arg0;
    *(void *)0x8008538C = arg0;
    *(void *)0x80085394 = arg1;
    *(void *)0x80085398 = arg2;
    phi_a2 = arg2;
    phi_v0 = (void *)0x800853A0;
    phi_a3 = 0xFF;
loop_1:
    temp_v0 = phi_v0 + 2;
    temp_v0->unk-2 = (u16) *phi_a2;
    phi_a2 = phi_a2 + 2;
    phi_v0 = temp_v0;
    phi_a3 = phi_a3 - 1;
    if (phi_a3 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
