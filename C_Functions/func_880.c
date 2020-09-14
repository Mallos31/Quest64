? func_880(void) {
    s32 phi_t4;

    phi_t4 = 0;
loop_1:
    if (phi_t4 < 0x40) {
        if (func_0400090C(phi_t4) > 0) {

        }
        phi_t4 = ERROR(Read from unset register $t4) + 1;
        if (ERROR(Read from unset register $t1) < 0x50) {
            goto loop_1;
        }
        return func_04000980((((((ERROR(Read from unset register $t3) * 4) - ERROR(Read from unset register $t3)) * 4) - ERROR(Read from unset register $t3)) * 2) - 0x370);
    }
    return 0;
}
