? func_22f00(s32 arg0, void *arg1) {
    ? phi_v1;

    phi_v1 = 1;
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        phi_v1 = 1;
        if ((*arg1 & 8) != 0) {
            phi_v1 = 0;
        }
    }
    return phi_v1;
}
