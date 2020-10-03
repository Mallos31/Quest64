void *func_2e348(void) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t0_2;
    u16 temp_t4;
    u16 temp_t8;
    void *temp_t0;
    void *temp_t9;
    void *phi_t0;
    void *phi_t9;

    temp_v0 = func_000319E0(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, 0x80, 0xE0, 0x800904E0);
    temp_a0 = temp_v0;
    phi_t0 = (void *)0x800904E0;
    phi_t9 = (void *)0x80090398;
loop_1:
    temp_t0 = phi_t0 + 0xC;
    temp_t9 = phi_t9 + 0xC;
    temp_t9->unk-C = (?32) (unaligned s32) *phi_t0;
    temp_t9->unk-8 = (?32) (unaligned s32) temp_t0->unk-8;
    temp_t9->unk-4 = (?32) (unaligned s32) temp_t0->unk-4;
    phi_t0 = temp_t0;
    phi_t9 = temp_t9;
    if (temp_t0 != 0x800905A0) {
        goto loop_1;
    }
    temp_t9->unk0 = (?32) (unaligned s32) temp_t0->unk0;
    temp_t9->unk4 = (?32) (unaligned s32) temp_t0->unk4;
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_a0;
        temp_v1 = -func_00031BB0(temp_a0);
        if (temp_v1 != 1) {
            if (temp_v1 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xB;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t0_2 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t4 = temp_t0_2 | 5;
        *(void *)0x8008FD20 = temp_t0_2;
        *(void *)0x8008FD20 = temp_t4;
        *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    func_0002E404(*(void *)0x8008FD2A);
    temp_t8 = *(void *)0x8008FD20 | 0x80;
    *(void *)0x8008FD20 = temp_t8;
    *(void *)0x8008FD20 = (u16) (temp_t8 | 0x8000);
    return (void *)0x8008FD20;
}

