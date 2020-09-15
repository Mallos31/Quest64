void func_187d4(void *arg0, void *arg1) {
    void *sp44;
    ?32 sp38;
    f64 temp_f16;
    s8 temp_a1;
    u16 temp_t4;
    u16 temp_t9;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f0;
    f64 phi_f16;

    temp_v1 = arg0->unk30;
    (void *)0x800871D0->unk0 = (f32) temp_v1->unk18;
    (void *)0x800871D0->unk4 = (f32) temp_v1->unk1C;
    (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
    temp_t9 = temp_v1->unk14;
    sp38 = (?32) temp_t9;
    if ((temp_t9 & 0x10) != 0) {
        temp_t4 = arg0->unk4;
        temp_f16 = (f64) temp_t4;
        phi_f16 = temp_f16;
        if ((s32) temp_t4 < 0) {
            phi_f16 = temp_f16 + 4294967296.0;
        }
        phi_f0 = (f32) ((phi_f16 * *(void *)0x80071500) / 10.0);
    } else {
        phi_f0 = arg1->unk10;
    }
    sp44 = temp_v1;
    temp_v0 = func_000177F8(temp_v1->unk12, sp3A, arg0->unkC, arg0->unk10, arg0->unk14, phi_f0, (temp_v1->unk10 * 0xA) + 0x800C1B90, (void *)0x800871D0, arg0->unk24);
    temp_v0->unk28 = (f32) arg0->unk18;
    temp_v0->unk2C = (f32) arg0->unk1C;
    temp_v0->unk30 = (f32) arg0->unk20;
    temp_a1 = temp_v1->unk46;
    if ((s32) temp_a1 >= 0) {
        func_000268D4(temp_v1->unk47, temp_a1, 0xFF);
    }
}
