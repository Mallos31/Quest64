s32 func_31268(s32 arg0) {
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_v0;
    u8 temp_t1;
    void *temp_a0;
    void *temp_a3;
    void *phi_t0;
    s32 phi_t1;
    void *phi_a0;
    s32 phi_v0;
    s32 phi_a2;
    s32 phi_a1;
    s32 phi_v0_2;
    s32 phi_return;
    s32 phi_v0_3;
    s32 phi_a2_2;
    s32 phi_return_2;
    s32 phi_a2_3;

    temp_v1 = ((arg0 * 0x89C) + 0x80090000)->unk618;
    (void *)0x8005F9F8->unk6 = (s16) ((temp_v1 * 0xA) + 0xC);
    phi_v0_2 = 0;
    phi_return = 0;
    if ((s32) temp_v1 > 0) {
        temp_a3 = (arg0 * 0x89C) + 0x800905E0;
        phi_t0 = temp_a3;
        phi_v0 = 0;
        phi_a1 = 0;
        phi_return_2 = 0;
loop_2:
        phi_a2 = 0;
        if (0xFF != phi_t0->unk3C) {
            temp_a0 = temp_a3 + ((phi_a1 * 4) - phi_a1);
            phi_t1 = (s32) temp_a0->unk3C;
            phi_a0 = temp_a0;
            phi_a2_3 = 0;
loop_4:
            phi_a2_2 = phi_a2_3;
            if (phi_t1 < 0x80) {
                phi_a2_2 = phi_a2_3 + 1;
            }
            temp_t1 = phi_a0->unk3D;
            phi_t1 = (s32) temp_t1;
            phi_a0 = phi_a0 + 1;
            phi_a2 = phi_a2_2;
            phi_a2_3 = phi_a2_2;
            if (0xFF != temp_t1) {
                goto loop_4;
            }
        }
        temp_a1 = phi_a1 + 1;
        phi_v0_3 = phi_v0;
        if (phi_v0 < phi_a2) {
            temp_v0 = phi_a2;
            phi_v0_3 = temp_v0;
            phi_return_2 = temp_v0;
        }
        phi_t0 = phi_t0 + 0x18;
        phi_v0 = phi_v0_3;
        phi_a1 = temp_a1;
        phi_v0_2 = phi_v0_3;
        phi_return = phi_return_2;
        if (temp_a1 != temp_v1) {
            goto loop_2;
        }
    }
    (void *)0x8005F9F8->unk4 = (s16) ((phi_v0_2 * 8) + 0x1C);
    return phi_return;
}

