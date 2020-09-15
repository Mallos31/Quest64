s32 func_15490(s32 arg0, void *arg1) {
    u8 sp1E;
    u8 sp1D;
    ? sp1C;
    ? *temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t2;
    s32 temp_t6;
    u16 temp_a1;
    u32 temp_a3;
    u8 temp_a0_3;
    u8 temp_v1;
    void *temp_a0_2;
    void *temp_t0;
    void *phi_t0;
    ? *phi_a0;
    s32 phi_a2;
    void *phi_t0_2;
    void *phi_a0_2;
    void *phi_a0_3;
    ? *phi_a1;
    void *phi_t1;
    u32 phi_a3;
    u32 phi_a3_2;
    s32 phi_a2_2;
    s32 phi_a2_3;
    s32 phi_a2_4;
    s32 phi_a2_5;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = *arg1;
    if (temp_t6 != 0) {
        temp_t2 = temp_t6 & 3;
        phi_a2_5 = 0;
        if (temp_t2 != 0) {
            phi_t0 = arg1;
            phi_a0 = &sp1C;
            phi_a2 = 0;
loop_3:
            temp_a2 = phi_a2 + 1;
            temp_a0 = phi_a0 + 1;
            temp_a0->unk-1 = (u8) *phi_t0;
            phi_t0 = phi_t0 + 1;
            phi_a0 = temp_a0;
            phi_a2 = temp_a2;
            if (temp_t2 != temp_a2) {
                goto loop_3;
            }
            phi_a2_5 = temp_a2;
            if (temp_a2 != temp_t6) {
block_5:
                phi_t0_2 = arg1 + phi_a2_5;
                phi_a0_2 = phi_a2_5 + &sp1C;
loop_6:
                temp_a0_2 = phi_a0_2 + 4;
                temp_t0 = phi_t0_2 + 4;
                temp_a0_2->unk-4 = (u8) *phi_t0_2;
                temp_a0_2->unk-3 = (u8) temp_t0->unk-3;
                temp_a0_2->unk-2 = (u8) temp_t0->unk-2;
                temp_a0_2->unk-1 = (u8) temp_t0->unk-1;
                phi_t0_2 = temp_t0;
                phi_a0_2 = temp_a0_2;
                if (temp_a0_2 != (temp_t6 + &sp1C)) {
                    goto loop_6;
                }
            }
        } else {
            goto block_5;
        }
    }
    if (temp_t6 >= 3) {
        temp_a0_3 = sp1E;
        if ((s32) temp_a0_3 < (s32) sp1D) {
            sp1E = sp1D;
            sp1D = temp_a0_3;
        }
    }
    phi_a0_3 = ((temp_v1 * 4) + 0x800C0000)->unk1B14;
    phi_a2_2 = 0xF;
loop_11:
    temp_a1 = phi_a0_3->unk4;
    if (temp_a1 == temp_t6) {
        phi_a3_2 = 0U;
        if (temp_a1 != 0) {
            phi_a1 = &sp1C;
            phi_t1 = phi_a0_3;
            phi_a3 = 0U;
loop_14:
            phi_a3_2 = phi_a3;
            if (*phi_a1 == phi_t1->unk6) {
                temp_a3 = phi_a3 + 1;
                phi_a1 = phi_a1 + 1;
                phi_t1 = phi_t1 + 1;
                phi_a3 = temp_a3;
                phi_a3_2 = temp_a3;
                if (temp_a3 < (u32) temp_a1) {
                    goto loop_14;
                }
            }
        }
        phi_a2_3 = phi_a2_2;
        if (phi_a3_2 != temp_a1) {
block_17:
            temp_a2_2 = phi_a2_2 - 1;
            phi_a0_3 = phi_a0_3 + 0x44;
            phi_a2_2 = temp_a2_2;
            phi_a2_3 = temp_a2_2;
            if (temp_a2_2 != 0) {
                goto loop_11;
            }
        }
    } else {
        goto block_17;
    }
    phi_a2_4 = phi_a2_3;
    if (phi_a2_3 == 0) {
        phi_a2_4 = 0xF;
    }
    return ((temp_v1 << 8) - phi_a2_4) + 0xF;
}
