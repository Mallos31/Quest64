void func(void *arg0) {
    s32 temp_fp;

    *(void *)0xA4300000 = 0x2000;
    temp_fp = *saved_reg_s5;
    *(void *)0xA4300000 = 0x1000;
    *arg0 = (s8) ((((((0 | ((u32) (0x40 & temp_fp) >> 6)) | ((u32) (0x4000 & temp_fp) >> 0xD)) | ((u32) (0x400000 & temp_fp) >> 0x14)) | ((u32) (0x80 & temp_fp) >> 4)) | ((u32) (0x8000 & temp_fp) >> 0xB)) | ((u32) (0x800000 & temp_fp) >> 0x12));
}
