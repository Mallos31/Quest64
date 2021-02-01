void func_80034E50(u32 arg0, s32 arg1) {
    u32 temp_t1;
    u32 phi_t0;
    u32 phi_t0_2;

    if (arg1 <= 0) {
        return;
    }
    if ((u32) arg1 < 0x2000U) {
        temp_t1 = arg0 + arg1;
        if (arg0 < temp_t1) {
            phi_t0 = arg0 - (arg0 & 0xF);
loop_4:
            ERROR(unknown instruction: cache 0x19, ($t0));
            phi_t0 = phi_t0 + 0x10;
            if (phi_t0 < (u32) (temp_t1 - 0x10)) {
                goto loop_4;
            }
        }
        return;
    }
    phi_t0_2 = 0x80000000U;
loop_7:
    ERROR(unknown instruction: cache 0x1, ($t0));
    phi_t0_2 = phi_t0_2 + 0x10;
    if (phi_t0_2 < 0x80001FF0U) {
        goto loop_7;
    }
}
