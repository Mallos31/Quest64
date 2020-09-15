void *func_15b48(void *arg0, void *arg1) {
    f64 temp_f0;
    void *temp_v0;

    arg0->unkC = (f32) arg1->unk0;
    arg0->unk14 = (f32) arg1->unk8;
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}
