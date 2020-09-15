f32 func_193f8(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f16;
    void *temp_v1;

    temp_f16 = *(void *)0x80071538;
    temp_f0 = arg0->unk30;
    temp_f2 = arg0->unk34;
    temp_f12 = arg0->unk38;
    arg0->unk18 = (f32) (arg0->unk18 + temp_f0);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f2);
    arg0->unk20 = (f32) (arg0->unk20 + temp_f12);
    arg0->unk30 = (f32) ((f64) temp_f0 * temp_f16);
    arg0->unk34 = (f32) ((f64) temp_f2 * *(void *)0x80071540);
    arg0->unk38 = (f32) ((f64) temp_f12 * temp_f16);
    temp_f14 = ((arg0->unk0 * 4) + 0x80050000)->unk-3190;
    arg0->unk2C = temp_f14;
    arg0->unk28 = temp_f14;
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0xFB000000;
    temp_v1->unk4 = (s32) ((arg0->unk0 + 0x80050000)->unk-3160 | -0x100);
    return temp_f0;
}
