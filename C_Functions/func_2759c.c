void func_2759c(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a3;

    temp_a0 = (s32) (arg0 << 0x18) >> 0x18;
    temp_a3 = arg1 & 0xFF;
    func_00025B8C(temp_a0, (u32) ((temp_a0 + 0x80050000)->unk3CAC * temp_a3 * *(void *)0x8008FCC6) >> 0x10, 0x40, temp_a3);
}

