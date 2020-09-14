void *func_131f4(void *arg0) {
    f32 temp_f2;
    f32 temp_f6;
    f64 temp_f4;
    u8 temp_t6;
    void *temp_a1;
    void *temp_v0;
    f32 phi_f6;

    temp_t6 = arg0->unk3C;
    temp_f6 = (f32) temp_t6;
    phi_f6 = temp_f6;
    if ((s32) temp_t6 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    temp_f4 = (f64) func_00035680((f32) ((f64) phi_f6 * *(void *)0x800712F8));
    arg0->unk3C = (u8) (arg0->unk3C + 4);
    temp_v0 = ((arg0->unk0 & 1) * 4) + 0x8004CBE8;
    temp_f2 = (f32) (temp_f4 * *(void *)0x80071300);
    arg0->unk1C = (f32) (arg0->unk1C + arg0->unk34);
    arg0->unk18 = (f32) (arg0->unk18 + (arg0->unk30 + temp_f2));
    arg0->unk20 = (f32) (arg0->unk20 + (arg0->unk38 + temp_f2));
    temp_a1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
    temp_a1->unk0 = 0xFB000000;
    temp_a1->unk4 = (s32) (((temp_v0->unk3 | (temp_v0->unk0 << 0x18)) | (temp_v0->unk1 << 0x10)) | (temp_v0->unk2 << 8));
    return temp_v0;
}
