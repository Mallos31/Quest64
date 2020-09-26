void func_21fd8(s32 arg0, ? arg1) {
    s32 temp_a2;
    void *temp_a1;

    temp_a2 = arg0 & 0xFF;
    temp_a1 = (temp_a2 * 0xC) + 0x803A91F0;
    ((temp_a1->unk2 * 4) + 0x80050000)->unk-2B70(arg1, temp_a1, temp_a2, arg1);
}
