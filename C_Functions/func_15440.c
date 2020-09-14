u32 func_15440(void) {
    u32 temp_v1;
    u32 phi_v1;

    phi_v1 = 0x80086F18U;
loop_1:
    temp_v1 = phi_v1 + 0x3C;
    temp_v1->unk-38 = (u16)0;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x80087170U) {
        goto loop_1;
    }
    *(void *)0x80087170 = (u16)0;
    *(void *)0x80087188 = (u16)0;
    *(void *)0x800871A0 = (u16)0;
    *(void *)0x800871B8 = (u16)0;
    *(void *)0x80086F10 = 0;
    return 0x80087170U;
}
