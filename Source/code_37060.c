Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void func_80036460(u32 arg0, s32 arg1) {
    s32 temp_t2;
    s32 temp_t2_2;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 phi_t0;
    u32 phi_t0_2;
    u32 phi_t1;
    u32 phi_t0_3;

    if (arg1 <= 0) {
        return;
    }
    if ((u32) arg1 < 0x2000U) {
        temp_t1 = arg0 + arg1;
        if (arg0 < temp_t1) {
            temp_t2 = arg0 & 0xF;
            temp_t1_2 = temp_t1 - 0x10;
            phi_t0 = arg0;
            if (temp_t2 != 0) {
                temp_t0 = arg0 - temp_t2;
                ERROR(unknown instruction: cache 0x15, ($t0));
                if (temp_t0 < temp_t1_2) {
                    phi_t0 = temp_t0 + 0x10;
block_6:
                    temp_t2_2 = temp_t1_2 & 0xF;
                    phi_t0_2 = phi_t0;
                    phi_t1 = temp_t1_2;
                    if (((temp_t2_2 != 0) && (temp_t1_2 = temp_t1_2 - temp_t2_2, ERROR(unknown instruction: cache 0x15, 0x10($t1)), phi_t0_2 = phi_t0, phi_t1 = temp_t1_2, ((temp_t1_2 < phi_t0) == 0))) && (ERROR(unknown instruction: cache 0x11, ($t0)), phi_t0_2 = phi_t0_2 + 0x10, ((phi_t0_2 < phi_t1) == 0))) {

                    } else {
loop_8:
                        ERROR(unknown instruction: cache 0x11, ($t0));
                        phi_t0_2 = phi_t0_2 + 0x10;
                        if (phi_t0_2 < phi_t1) {
                            goto loop_8;
                        }
                    }
                }
            } else {
                goto block_6;
            }
        }
        return;
    }
    phi_t0_3 = 0x80000000U;
loop_11:
    ERROR(unknown instruction: cache 0x1, ($t0));
    phi_t0_3 = phi_t0_3 + 0x10;
    if (phi_t0_3 < 0x80001FF0U) {
        goto loop_11;
    }
}
