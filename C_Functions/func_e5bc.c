void *func_e5bc(s32 arg0) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    func_00023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, 0, 0, 1.0f, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10 - 10.0f, (void *)0x80086DC0->unk14);
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x1020040;
    temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk0 = 0xFB000000;
    temp_v0_3->unk4 = (s32) ((((*(void *)0x80085BB0 << 0x18) | ((*(void *)0x80085BB4 & 0xFF) << 0x10)) | ((*(void *)0x80085BB8 & 0xFF) << 8)) | 0xFF);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = (s32) (((*(void *)0x800859E4)->unk1C * 8) + 0x80060000)->unk-1054;
    return temp_v0;
}
