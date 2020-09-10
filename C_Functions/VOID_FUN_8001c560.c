void *test(void) {
    s32 temp_a0;
    s32 temp_v1;
    void *temp_v0;
    void *phi_return;

    *(void *)0x8008C592 = (u16) (*(void *)0x8008C592 & 0x8000);
    *(void *)0x8008C574 = 0.0f;
    *(void *)0x8008C578 = (u16)0;
    phi_return = (void *)0x8008C592;
    if ((*(void *)0x80084F10 & 1) != 0) {
        temp_v0 = *(void *)0x80084F18;
        temp_v1 = temp_v0->unk30;
        if (temp_v1 != 0) {
            temp_a0 = *(void *)0x80084EE8;
            *(void *)0x8008C560 = (s32) (temp_v1 + (temp_a0 * 8));
            *(void *)0x8008C564 = (s32) (temp_v0->unk34 + (temp_a0 * 0x10));
            return temp_v0;
        }
        *(void *)0x8008C560 = 0;
        *(void *)0x8008C564 = 0;
        phi_return = temp_v0;
    }
    return phi_return;
}
