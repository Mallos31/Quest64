f32 func_1493c(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f32 phi_f0;

    arg0->unk18 = (f32) arg1->unk0;
    arg0->unk20 = (f32) arg1->unk8;
    if (*arg1->unk64 == 1) {
        phi_f0 = arg1->unk68->unk94;
    } else {
        phi_f0 = arg1->unk4;
    }
    temp_f2 = arg0->unk1C;
    temp_f0 = phi_f0 + (arg0->unk5C - temp_f2);
    arg0->unk34 = (f32) (arg0->unk34 + ((temp_f0 * arg0->unk70) * 2.0f));
    temp_f12 = arg0->unk34;
    arg0->unk1C = (f32) (temp_f2 + temp_f12);
    arg0->unk34 = (f32) ((f64) temp_f12 * ((f64) arg0->unk74 * *(void *)0x800713F8));
    return temp_f0;
}
