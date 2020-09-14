u32 func_980(s32 arg0) {
    u8 sp27;
    s32 sp20;
    s32 temp_k0;
    s32 temp_lo;
    s32 temp_t6;
    s32 phi_t6;
    s32 phi_k0;

    sp20 = arg0;
    sp27 = (u8)0U;
    phi_t6 = 0;
loop_1:
    if (phi_t6 >= 0x40) {
        return 0U;
    }
    func_04000A40(phi_t6, 1);
    func_04000AD0(&sp27);
    func_04000AD0(&sp27);
    temp_lo = sp27 * 0x320;
    temp_k0 = temp_lo - sp20;
    phi_k0 = temp_k0;
    if (temp_k0 < 0) {
        phi_k0 = sp20 - temp_lo;
    }
    if (phi_k0 < ERROR(Read from unset register $t5)) {

    }
    if (temp_lo < sp20) {
        temp_t6 = ERROR(Read from unset register $t6) + 1;
        phi_t6 = temp_t6;
        if (temp_t6 < 0x41) {
            goto loop_1;
        }
    }
    return (u32) (ERROR(Read from unset register $t2) + ERROR(Read from unset register $t6)) >> 1;
}
