void *func_15f70(void *arg0, void *arg1) {
    f64 temp_f0;
    f64 temp_f0_2;
    void *temp_a2;
    void *temp_a3;
    void *temp_v0;

    temp_a3 = arg0;
    temp_a2 = arg1;
    arg1 = temp_a2;
    arg0 = temp_a3;
    (void *)0x800871D0->unk0 = 0.0f;
    *(void *)0x800871D4 = (f32) ((f64) (f32) func_00022FD0(0x14, temp_a2, temp_a3) + 20.0);
    temp_f0_2 = *(void *)0x80071490;
    func_000232F4((f32) ((((f64) (f32) func_00022FD0(0x10) * temp_f0_2) / 8.0) - temp_f0_2), 0x800871D0);
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
