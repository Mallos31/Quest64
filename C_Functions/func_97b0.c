void *func_97b0(void) {
    void *phi_return;

    *(void *)0x8007C990 = 0;
    *(void *)0x8007D08C = 0;
    *(void *)0x8007CA0C = (u16)-1;
    (void *)0x8007CAC0->unk74 = (u16)-1;
    (void *)0x8007CAC0->unk19C = (u16)-1;
    (void *)0x8007CAC0->unk514 = (u16)-1;
    (void *)0x8007CAC0->unk3EC = (u16)-1;
    (void *)0x8007CAC0->unk2C4 = (u16)-1;
    phi_return = (void *)0x8007CAC0 + 0x4A0;
    if ((*(void *)0x80084F10 & 1) != 0) {
        phi_return = func_00008EF4();
    }
    return phi_return;
}
