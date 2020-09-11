void func_7320(void *arg0) {
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_a3;
    void *temp_v0;

    temp_a3 = *(void *)0x8004C270;
    temp_v1 = arg0->unk52;
    if (temp_a3 != temp_v1) {
        temp_v0 = (temp_v1 * 8) + 0x80053F58;
        temp_a0 = temp_v0->unk0;
        *(void *)0x8004C270 = (s32) temp_v1;
        func_00024260(temp_a0, 0x80200000, temp_v0->unk4 - temp_a0, temp_a3);
    }
}
