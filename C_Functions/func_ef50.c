f32 func_ef50(void *arg0) {
    f32 temp_f0;
    void *temp_v1;

    temp_f0 = arg0->unk34;
    arg0->unk1C = (f32) (arg0->unk1C + (temp_f0 / 2.0f));
    arg0->unk34 = (f32) ((f64) temp_f0 - *(void *)0x80071238);
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0xFB000000;
    temp_v1->unk4 = (s32) (((arg0->unk0 * 5) & 0xFF) | -0x100);
    return temp_f0;
}
