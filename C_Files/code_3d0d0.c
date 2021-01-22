s32 __osDisableInt(void) {
    ERROR(unknown instruction: mtc0 $t1, $12);
    return ERROR(unknown instruction: mfc0 $t0, $12) & 1;
}

void __osRestoreInt(s32 arg0) {
    ERROR(unknown instruction: mfc0 $t0, $12);
    ERROR(unknown instruction: mtc0 $t0, $12);
}
