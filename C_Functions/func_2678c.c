s32 func_2678c(s32 arg0, ?32 arg1, ?32 arg2) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = *(void *)0x80053970;
    temp_v1 = temp_v0 * 4;
    (temp_v1 + 0x80050000)->unk390C = arg0;
    (temp_v1 + 0x80050000)->unk392C = arg1;
    temp_v0 = temp_v0 + 1;
    (temp_v1 + 0x80050000)->unk394C = arg2;
    *(void *)0x80053970 = (s32) (temp_v0 & 7);
    *(void *)0x8008FCB4 = temp_v0;
    return temp_v0;
}

