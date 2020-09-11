void func_8650(void) {
    s32 temp_a0;
    u16 temp_v0_2;
    void *temp_v0;

    *(void *)0x8007BCE4 = 0;
    if ((*(void *)0x80084F10 & 1) == 0) {
        *(void *)0x8007BCB0 = (void *) (((*(void *)0x80084F1C)->unk12 * 8) + 0x800547F0);
        func_00024260(0x871900, 0x8020C0D0, 0x873F20 - 0x871900);
        func_00024260(0xA725D0, 0x802A0000, 0xA7A190 - 0xA725D0);
        temp_v0 = *(void *)0x8007BCB0;
        temp_a0 = temp_v0->unk0;
        func_00024260(temp_a0, 0x8020E6F0, temp_v0->unk4 - temp_a0);
        func_000080E8();
        temp_v0_2 = *(void *)0x8007B2E8;
        *(void *)0x8007BCB4 = (u16)0;
        if (temp_v0_2 == 1) {
            func_00008AD8(0, 0x80054828);
            func_0002E768(1);
            return;
        }
        if (temp_v0_2 == 4) {
            func_00008AD8(0, 0x80054C04);
            func_0002E768(1);
        }
    }
}
