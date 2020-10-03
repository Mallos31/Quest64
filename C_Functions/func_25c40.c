void func_25c40(s32 arg0) {
    s32 sp24;
    s32 temp_v0_2;
    void *temp_v0;
    void *temp_v0_3;

    temp_v0 = func_00036660(0, 0, 0x8008F240, 1, 4);
    *(void *)0x800538F0 = temp_v0;
    func_00024690(arg0, temp_v0, 4);
    temp_v0_2 = ((*(void *)0x800538F0)->unk2 * 8) + 4;
    sp24 = temp_v0_2;
    temp_v0_3 = func_00036660(0, 0, 0x8008F240, 1, temp_v0_2);
    *(void *)0x800538F0 = temp_v0_3;
    func_00024690(arg0, temp_v0_3, sp24);
}

