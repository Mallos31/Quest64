f64 func_4b98(void *arg0, void *arg1, ? arg2) {
    f64 temp_f0;
    u16 temp_t7;
    void *temp_a1;
    void *temp_a2;

    temp_a2 = arg1;
    temp_a1 = arg0;
    arg0 = temp_a1;
    arg1 = temp_a2;
    func_00005748(0xA01, temp_a1, temp_a2);
    temp_f0 = *(void *)0x80070F50;
    arg0->unk18 = (f32) ((f64) arg0->unk18 * temp_f0);
    arg0->unk20 = (f32) ((f64) arg0->unk20 * temp_f0);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk20 = 0.0f;
        arg0->unk18 = 0.0f;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
    }
    return temp_f0;
}
