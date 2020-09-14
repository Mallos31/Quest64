void *func_ee24(void *arg0) {
    f32 temp_f0;
    void *temp_v0;
    s32 phi_v1;

    temp_f0 = arg0->unk34;
    arg0->unk18 = (f32) (arg0->unk18 + arg0->unk30);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f0);
    arg0->unk20 = (f32) (arg0->unk20 + arg0->unk38);
    arg0->unk34 = (f32) ((f64) temp_f0 - *(void *)0x80071230);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0xFB000000;
    phi_v1 = 0x78;
    if ((*(void *)0x80084ED0 & 1) != 0) {
        phi_v1 = 0xDC;
    }
    temp_v0->unk4 = (s32) ((phi_v1 & 0xFF) | -0x100);
    return temp_v0;
}
