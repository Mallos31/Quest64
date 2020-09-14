s32 func_12d70(s32 arg0) {
    s32 temp_t6;

    temp_t6 = arg0 & 0xFFFF;
    return (((temp_t6 & 7) + 0x80050000)->unk-28C0 & ((temp_t6 >> 3) + 0x80080000)->unk69D8) & 0xFF;
}
