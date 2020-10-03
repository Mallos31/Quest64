s32 func_2e918(void) {
    s32 temp_fp;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_v0_3;
    s8 temp_a1;
    s8 temp_t0;
    s8 temp_v1;
    u16 temp_t2;
    u32 temp_s0;
    void *temp_t5;
    void *temp_t6;
    void *temp_v0;
    void *temp_v0_2;
    u32 phi_s0;
    void *phi_a0;
    s8 phi_s1;
    s32 phi_a1;
    s32 phi_a1_2;
    void *phi_s0_2;
    void *phi_t5;
    void *phi_t6;
    s32 phi_fp;
    s32 phi_s1_2;
    s32 phi_return;
    s32 phi_return_2;

    phi_s0 = 0x8008FD30U;
loop_1:
    temp_s0 = phi_s0 + 2;
    temp_s0->unk-2 = (u8)-1;
    temp_s0->unk-1 = (u8)-1;
    phi_s0 = temp_s0;
    if (temp_s0 < 0x8008FD52U) {
        goto loop_1;
    }
    temp_t0 = *(void *)0x80092870;
    phi_a0 = (temp_t0 * 0x14) + 0x80092A38;
    phi_s1 = (u8)0;
    phi_a1 = 0;
    phi_return_2 = (s32) (u8)-1;
loop_3:
    temp_v1 = phi_a0->unk2;
    phi_a1_2 = phi_a1;
    if (0x7F != temp_v1) {
        phi_a1_2 = phi_a1;
        if ((s32) temp_v1 >= 0) {
            temp_v0 = (phi_a1 * 2) + 0x8008FD30;
            temp_v0->unk0 = phi_s1;
            temp_v0->unk1 = temp_v1;
            phi_a1_2 = phi_a1 + 1;
            phi_return_2 = (s32) temp_v0;
        }
    }
    temp_s1 = phi_s1 + 1;
    phi_a0 = phi_a0 + 1;
    phi_s1 = (s8) temp_s1;
    phi_a1 = phi_a1_2;
    if (temp_s1 < 0x10) {
        goto loop_3;
    }
    phi_return = phi_return_2;
    if ((*(void *)0x8008FD0C & 4) != 0) {
        temp_v0_2 = (temp_t0 * 0x14) + 0x80092A38;
        phi_return = (s32) temp_v0_2;
        if ((s32) temp_v0_2->unk13 >= 2) {
            phi_return = (s32) temp_v0_2;
            if ((temp_v0_2->unk0 & 0x2000) == 0) {
                *((phi_a1_2 * 2) + 0x8008FD30) = (u8)-2;
                phi_return = (s32) temp_v0_2;
            }
        }
    }
    *(void *)0x8008FD2A = (u8)0;
    phi_s0_2 = (void *)0x8008FD30;
    phi_fp = 0;
    phi_s1_2 = 0;
loop_12:
    temp_a1 = *phi_s0_2;
    if ((s32) temp_a1 >= 0) {
        temp_ret = func_000319E0(*(void *)0x80092870, temp_a1, 0, 0x80, (void *)0x80090460);
        temp_v0_3 = temp_ret;
        phi_t5 = (void *)0x80090460;
        phi_t6 = (((((phi_s1_2 * 4) - phi_s1_2) * 8) + phi_s1_2) * 4) + 0x8008FD58;
loop_14:
        temp_t5 = phi_t5 + 0xC;
        temp_t6 = phi_t6 + 0xC;
        temp_t6->unk-C = (s32) *phi_t5;
        temp_t6->unk-8 = (s32) temp_t5->unk-8;
        temp_t6->unk-4 = (s32) temp_t5->unk-4;
        phi_t5 = temp_t5;
        phi_t6 = temp_t6;
        if (temp_t5 != 0x800904C0) {
            goto loop_14;
        }
        temp_t6->unk0 = (s32) temp_t5->unk0;
        phi_return = temp_ret;
        if (temp_v0_3 != 0) {
            *(void *)0x8008FD24 = phi_fp;
            temp_ret_2 = func_00031BB0(phi_fp);
            temp_fp = -temp_ret_2;
            if (temp_fp == 1) {
                *(void *)0x8008FD22 = (u8)8;
            } else {
                *(void *)0x8008FD22 = (u8)0x11;
            }
            *(void *)0x8008FD29 = (u8)0xA;
            temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
            *(void *)0x8008FD20 = temp_t2;
            *(void *)0x8008FD20 = (u16) (temp_t2 | 5);
            phi_return = temp_ret_2;
            phi_fp = temp_fp;
        }
    }
    temp_s1_2 = phi_s1_2 + 1;
    phi_s0_2 = phi_s0_2 + 2;
    phi_s1_2 = temp_s1_2;
    if (temp_s1_2 != 0x10) {
        goto loop_12;
    }
    return phi_return;
}

