void func(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 phi_t7;

    temp_a0 = (arg0 & 0xFF) ^ 0x3F;
    phi_t7 = 0x46000000;
    if (arg1 == 1) {
        phi_t7 = 0x46000000 | 0x80000000;
    }
    *saved_reg_s5 = (s32) ((((((phi_t7 | ((temp_a0 & 1) << 6)) | ((temp_a0 & 2) << 0xD)) | ((temp_a0 & 4) << 0x14)) | ((temp_a0 & 8) * 0x10)) | ((temp_a0 & 0x10) << 0xB)) | ((temp_a0 & 0x20) << 0x12));
    if (arg1 == 1) {
        *(void *)0xA4300000 = 0;
    }
}
