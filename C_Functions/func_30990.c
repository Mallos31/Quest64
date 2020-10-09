void func_30990(s32 arg0) {
    void *sp2C;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk4 = 0;
    temp_v1->unk0 = 0xE7000000;
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk4 = -0x34;
    temp_v1_2->unk0 = 0xFB000000;
    temp_v0 = (arg0 * 0x89C) + 0x800905E0;
    if (temp_v0->unk17 != 0xFF) {
        sp2C = temp_v0;
        func_000307D8(1, temp_v0->unk4 + 0x1B, temp_v0->unk6 + 4, 0x28, 0xD);
        func_00030EA0(temp_v0->unk4 + 0x49, temp_v0->unk6 + 4, temp_v0 + 0x17);
        func_00030EA0(temp_v0->unk4 + 0x10, temp_v0->unk6 + 0x14, temp_v0 + 0x49C);
        return;
    }
    func_00030EA0(temp_v0->unk4 + 6, temp_v0->unk6 + 6, temp_v0 + 0x49C, 0x28);
}

