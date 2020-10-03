s32 func_2673c(s32 arg0) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = *(void *)0x80053970;
    temp_v1 = temp_v0 * 4;
    (temp_v1 + 0x80050000)->unk390C = arg0;
    (temp_v1 + 0x80050000)->unk392C = 0;
    temp_v0 = temp_v0 + 1;
    (temp_v1 + 0x80050000)->unk394C = 0x40;
    *(void *)0x80053970 = (s32) (temp_v0 & 7);
    *(void *)0x8008FCB0 = temp_v0;
    return temp_v0;
}

