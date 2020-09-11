void func_9af4(void) {
    s32 temp_a0;
    void *temp_t0;

    temp_t0 = ((*(void *)0x80084F1C)->unk12 * 0x14) + 0x80054160;
    *(void *)0x8007D0BC = temp_t0;
    *(void *)0x8007D0A8 = (s32) temp_t0->unk8;
    *(void *)0x8007D0AC = (s32) temp_t0->unk10;
    temp_a0 = temp_t0->unk0;
    func_00024260(temp_a0, 0x8020E6F0, temp_t0->unk4 - temp_a0, (void *)0x8007D0BC);
}
