void func_30fe8(s32 arg0) {
    s32 sp6C;
    ? sp64;
    ? sp5C;
    ? sp54;
    void *sp24;
    s32 temp_t2;
    u8 temp_v0_12;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp64.unk0 = (s32) (void *)0x8005FA08->unk0;
    sp64.unk4 = (s32) (void *)0x8005FA08->unk4;
    sp5C.unk0 = (s32) (void *)0x8005FA10->unk0;
    sp5C.unk4 = (s32) (void *)0x8005FA10->unk4;
    sp54.unk0 = (s32) (void *)0x8005FA18->unk0;
    sp54.unk4 = (s32) (void *)0x8005FA18->unk4;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -1;
    temp_v0_2->unk0 = 0xFB000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0x8000;
    temp_v0_4->unk0 = 0xBA000E02;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0x8005FB80;
    temp_v0_6->unk0 = 0xFD100000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE8000000;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0x7000000;
    temp_v0_8->unk0 = 0xF5000100;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = 0;
    temp_v0_9->unk0 = 0xE6000000;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0x73FC000;
    temp_v0_10->unk0 = 0xF0000000;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE7000000;
    temp_t0 = (arg0 * 0x89C) + 0x800905E0;
    temp_t0->unkC = (s16) (temp_t0->unkC + 1);
    temp_t2 = ((s32) temp_t0->unkC >> 1) & 7;
    sp6C = temp_t2;
    sp24 = temp_t0;
    func_000307D8(3, ((temp_t0->unk8 + temp_t0->unk4) - 0xB) - (sp + temp_t2)->unk54, (temp_t0->unkA + temp_t0->unk6) - 3, (sp + temp_t2)->unk5C, 1);
    temp_v0_12 = (sp + temp_t2)->unk64;
    func_000307D8(2, temp_v0_12 + ((temp_t0->unk8 + temp_t0->unk4) - 0xC), ((temp_t0->unkA + temp_t0->unk6) - 0xF) - temp_v0_12, 0xC, 0xC);
}

