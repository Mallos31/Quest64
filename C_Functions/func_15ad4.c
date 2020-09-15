void *func_15ad4(void *arg0, void *arg1) {
    void *temp_v0;

    arg0->unkC = (f32) arg1->unk0;
    arg0->unk14 = (f32) arg1->unk8;
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) arg1->unk68->unk94;
        return temp_v0;
    }
    arg0->unk10 = (f32) ((f64) arg1->unk4 + (((f64) temp_v0->unk1C * 0.5) * (f64) arg1->unk24));
    return temp_v0;
}
