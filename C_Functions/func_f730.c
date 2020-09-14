s32 func_f730(void) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    u16 temp_s1;
    u16 temp_t1;
    u16 temp_v1;
    void *temp_a1;
    void *temp_a1_2;
    void *phi_a1;
    void *phi_a1_2;
    void *phi_a2;
    void *phi_a3;
    void *phi_a1_3;
    s32 phi_t2;
    s32 phi_return;

    phi_a1_2 = (void *)0x8004C3F8;
    if (0xFF != (void *)0x8004C3F8->unk6) {
        temp_v0 = *(void *)0x800859D0;
        phi_a1 = (void *)0x8004C3F8;
loop_2:
        if ((temp_v0 >= phi_a1->unk0) && (temp_v0 < phi_a1->unk8)) {
            *(void *)0x8004C3EC = (s32) phi_a1->unk6;
            phi_a1_2 = phi_a1;
        } else {
            temp_a1 = phi_a1 + 8;
            phi_a1 = temp_a1;
            phi_a1_2 = temp_a1;
            if (0xFF != phi_a1->unkE) {
                goto loop_2;
            }
        }
    }
    temp_a0 = *(void *)0x8004C3EC;
    temp_a2 = *(void *)0x8004C3F4;
    if (temp_a0 != temp_a2) {
        *(void *)0x80083C88 = (void *) ((temp_a2 << 9) + 0x800820D8);
        temp_v1 = phi_a1_2->unk4;
        *(void *)0x80084090 = (void *) ((temp_a0 << 9) + 0x800820D8);
        *(void *)0x80084178 = (void *)0x80081CD8;
        *(void *)0x8004C3F0 = (s32) temp_v1;
        *(void *)0x80083480 = (s32) temp_v1;
    }
    temp_v0_2 = *(void *)0x8004C3F0;
    temp_v1_2 = *(void *)0x80083480;
    phi_return = temp_v0_2;
    if (temp_v0_2 != 0) {
        temp_t0 = temp_v1_2 - temp_v0_2;
        phi_a2 = *(void *)0x80083C88;
        phi_a3 = *(void *)0x80084090;
        phi_a1_3 = *(void *)0x80084178;
        phi_t2 = 0xFF;
loop_10:
        temp_t1 = *phi_a2;
        temp_s1 = *phi_a3;
        temp_a1_2 = phi_a1_3 + 2;
        temp_a1_2->unk-2 = (s16) (((((s32) (((((s32) (temp_t1 & 0xF800) >> 0xB) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0xF800) >> 0xB) & 0xFFFF) * temp_t0)) / temp_v1_2) << 0xB) | (((s32) (((((s32) (temp_t1 & 0x7C0) >> 6) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0x7C0) >> 6) & 0xFFFF) * temp_t0)) / temp_v1_2) << 6)) | (((s32) (((((s32) (temp_t1 & 0x3E) >> 1) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0x3E) >> 1) & 0xFFFF) * temp_t0)) / temp_v1_2) * 2));
        phi_a2 = phi_a2 + 2;
        phi_a3 = phi_a3 + 2;
        phi_a1_3 = temp_a1_2;
        phi_t2 = phi_t2 - 1;
        if (phi_t2 != 0) {
            goto loop_10;
        }
        *(void *)0x80083480 = temp_v1_2;
        temp_v0_2 = temp_v0_2 - 1;
        *(void *)0x8004C3F0 = temp_v0_2;
        phi_return = temp_v0_2;
    }
    *(void *)0x8004C3EC = temp_a0;
    *(void *)0x8004C3F4 = temp_a0;
    return phi_return;
}
