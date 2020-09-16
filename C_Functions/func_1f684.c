void func_1f684(s32 arg0) {
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    ? sp38;
    void *temp_v0;
    void *temp_v0_2;

    *(void *)0x8008C648 = 0x104;
    *(void *)0x8008C64C = 0x18;
    func_00023570(&sp38, 0, 0, *(void *)0x80086DEC);
    sp68 = (f32) (*(void *)0x8008C648 + 0x11);
    sp70 = 0.0f;
    sp6C = (f32) (*(void *)0x8008C64C + 0x11);
    func_00035200(&sp38, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x1020040;
    temp_v0->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x803A8EA0;
    temp_v0_2->unk0 = 0x6000000;
    func_000210FC(0x803A6F40, 0xD, 0xA, 0xB, 0xE, 0x93, 0, 0x400, 0x400);
}
