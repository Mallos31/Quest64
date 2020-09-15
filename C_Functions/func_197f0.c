s32 func_197f0(void *arg0) {
    f64 temp_f0;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a3;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_return;

    temp_f0 = *(void *)0x80071578;
    arg0->unk18 = (f32) (arg0->unk18 + arg0->unk30);
    arg0->unk1C = (f32) (arg0->unk1C + arg0->unk34);
    arg0->unk20 = (f32) (arg0->unk20 + arg0->unk38);
    arg0->unk28 = (f32) ((f64) arg0->unk28 + temp_f0);
    arg0->unk2C = (f32) ((f64) arg0->unk2C + temp_f0);
    temp_v0 = *(void *)0x80085BBC + 0x40;
    temp_v1 = *(void *)0x80085BC0 + 0x40;
    temp_a1 = *(void *)0x80085BC4 + 0x40;
    phi_v0 = temp_v0;
    phi_return = temp_v0;
    if (temp_v0 >= 0x100) {
        phi_v0 = 0xFF;
        phi_return = 0xFF;
    }
    phi_v1 = temp_v1;
    if (temp_v1 >= 0x100) {
        phi_v1 = 0xFF;
    }
    phi_a1 = temp_a1;
    if (temp_a1 >= 0x100) {
        phi_a1 = 0xFF;
    }
    temp_a3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a3 + 8);
    temp_a3->unk0 = 0xFB000000;
    temp_a3->unk4 = (s32) ((((arg0->unk0 + 0x80050000)->unk-3114 | (phi_v0 << 0x18)) | ((phi_v1 & 0xFF) << 0x10)) | ((phi_a1 & 0xFF) << 8));
    return phi_return;
}
