void func_13340(s32 arg0) {
    s32 temp_t6;
    void *temp_v1;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 >> 3) + 0x80086AE8;
    *temp_v1 = (u8) (*temp_v1 | ((temp_t6 & 7) + 0x80050000)->unk-28C0);
}
