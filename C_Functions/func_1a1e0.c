u16 func_1a1e0(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f64 temp_f14;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;

    temp_f14 = *(void *)0x80071598;
    temp_f0 = arg0->unk30;
    temp_f2 = arg0->unk34;
    temp_f12 = arg0->unk38;
    arg0->unk18 = (f32) (arg0->unk18 + temp_f0);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f2);
    arg0->unk20 = (f32) (arg0->unk20 + temp_f12);
    arg0->unk30 = (f32) ((f64) temp_f0 * temp_f14);
    arg0->unk34 = (f32) ((f64) temp_f2 * temp_f14);
    arg0->unk38 = (f32) ((f64) temp_f12 * temp_f14);
    arg0->unk24 = (f32) ((f64) arg0->unk24 + *(void *)0x800715A0);
    if ((s32) arg0->unk0 < 0xA) {
        arg0->unk2C = 1.0f;
        arg0->unk28 = 1.0f;
    }
    temp_v1 = (arg0->unk3C * 4) + 0x800EBD1C;
    if ((arg0->unk0 & 1) != 0) {
        temp_a0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
        temp_a0->unk0 = 0xFB000000;
        temp_a0->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0xDC);
        return arg0->unk0;
    }
    temp_a0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a0_2 + 8);
    temp_a0_2->unk0 = 0xFB000000;
    temp_a0_2->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0x20);
    return arg0->unk0;
}
