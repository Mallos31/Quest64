? func_8003EDA0(s32 arg0) {
    s32 phi_v0;

    ERROR(unknown instruction: mfc0 $t0, $10);
    ERROR(unknown instruction: mtc0 $t1, $10);
    ERROR(unknown instruction: tlbp );
    if ((ERROR(unknown instruction: mfc0 $t3, $0) & 0x80000000) == 0) {
        ERROR(unknown instruction: tlbr );
        if ((((u32) (ERROR(unknown instruction: mfc0 $t3, $5) + 0x2000) >> 1) & arg0) == 0) {
            phi_v0 = ERROR(unknown instruction: mfc0 $v0, $2);
        } else {
            phi_v0 = ERROR(unknown instruction: mfc0 $v0, $3);
        }
        if ((phi_v0 & 2) != 0) {
            ERROR(unknown instruction: mtc0 $t0, $10);
            return ERROR(unknown instruction: add $v0, $v0, $t5);
        }
    }
    ERROR(unknown instruction: mtc0 $t0, $10);
    return -1;
}
