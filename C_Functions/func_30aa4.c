void func_30aa4(s32 arg0) {
    s16 temp_s1;
    s16 temp_s2;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -0x34;
    temp_v0_2->unk0 = 0xFB000000;
    temp_s0 = (arg0 * 0x89C) + 0x800905E0;
    func_000307D8(0, temp_s0->unk4, temp_s0->unk6, temp_s0->unk8, (?32) temp_s0->unkA);
    func_000307D8(3, temp_s0->unk8 + temp_s0->unk4, temp_s0->unk6 + 2, 2, (?32) temp_s0->unkA);
    func_000307D8(3, temp_s0->unk4 + 2, temp_s0->unkA + temp_s0->unk6, temp_s0->unk8, 2);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = -1;
    temp_v0_4->unk0 = 0xFB000000;
    temp_s1 = temp_s0->unk4;
    temp_s2 = temp_s0->unk6;
    func_000307D8(3, temp_s1, temp_s2, temp_s0->unk8, 1);
    func_000307D8(3, temp_s1, (temp_s0->unkA + temp_s2) - 1, temp_s0->unk8, 1);
    func_000307D8(3, temp_s1, temp_s2, 1, (?32) temp_s0->unkA);
    func_000307D8(3, (temp_s0->unk8 + temp_s1) - 1, temp_s2, 1, (?32) temp_s0->unkA);
}

