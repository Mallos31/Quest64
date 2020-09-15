void *func_15dd4(void *arg0, void *arg1) {
    f32 temp_f12;
    f64 temp_f0;
    void *temp_a2;
    void *temp_v0;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = (f32) ((-temp_a2->unk64->unk18 * temp_a2->unk24) + arg0->unk2C->unk1C);
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_000232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}
