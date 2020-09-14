void func_10d50(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_t6;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v1;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_2;
    s32 phi_a0;
    void *phi_a1;
    s32 phi_a0_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0_3;
    void *phi_a1_2;

    temp_t6 = *(void *)0x8004C454;
    *(void *)0x80085384 = temp_t6;
    temp_v1 = *(void *)0x800859D0;
    phi_a0 = 3;
    phi_a1 = (void *)0x8004C454;
    phi_a0_2 = 3;
    phi_a1_2 = (void *)0x8004C454;
    if (temp_v1 < temp_t6) {
loop_1:
        temp_a1 = phi_a1 - 0xC;
        temp_a0 = phi_a0 - 1;
        phi_a0_2 = temp_a0;
        phi_a1_2 = temp_a1;
        if (phi_a0 != 0) {
            phi_a0 = temp_a0;
            phi_a1 = temp_a1;
            phi_a0_2 = temp_a0;
            phi_a1_2 = temp_a1;
            if (temp_v1 < *temp_a1) {
                goto loop_1;
            }
        }
    }
    if (phi_a0_2 < 0) {
        *(void *)0x80085380 = 3;
        phi_a1_2 = (void *)0x8004C454;
    } else {
        *(void *)0x80085380 = phi_a0_2;
    }
    phi_v0 = (phi_a1_2->unk4 << 9) + 0x800814D8;
    phi_v1 = (void *)0x800812D8;
    phi_a0_3 = 0x100;
loop_7:
    temp_a0_2 = phi_a0_3 - 4;
    temp_v1_2 = phi_v1 + 8;
    temp_v1_2->unk-8 = (u16) phi_v0->unk0;
    temp_v0 = phi_v0 + 8;
    temp_v1_2->unk-6 = (u16) phi_v0->unk2;
    temp_v1_2->unk-4 = (u16) temp_v0->unk-4;
    temp_v1_2->unk-2 = (u16) temp_v0->unk-2;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1_2;
    phi_a0_3 = temp_a0_2;
    if (temp_a0_2 != 0) {
        goto loop_7;
    }
    *(void *)0x8008538C = 0;
    temp_t9 = *(void *)0x80085380 + 1;
    *(void *)0x80085380 = temp_t9;
    if (temp_t9 >= 4) {
        *(void *)0x80085380 = 0;
    }
    if ((*(void *)0x80084F12 & 2) != 0) {
        *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
        *(void *)0x800859DC = (s32) *(void *)0x800859D4;
    } else {
        temp_v0_2 = *(void *)0x800859E4;
        *(void *)0x800859D8 = 0;
        temp_t9_2 = (temp_v0_2->unk0 + (temp_v0_2->unk4 * 0x3C))->unk-3C;
        *(void *)0x800859DC = temp_t9_2;
    }
    func_000110D0(temp_a0_2, phi_a1_2, (void *)0x80085380, (void *)0x8004C454);
    *(void *)0x80085388 = (u16)0;
}
