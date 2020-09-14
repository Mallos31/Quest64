f32 func_15034(void *arg0, void *arg1) {
    f64 temp_f6;
    s32 temp_v1;
    void *temp_a2;
    f32 phi_return;

    temp_a2 = arg1;
    (void *)0x80086DC0->unk8 = (u16)0x40;
    (void *)0x80086DC0->unk0 = (s32) arg0->unk0;
    (void *)0x80086DC0->unk4C = (f32) arg0->unk18;
    (void *)0x80086DC0->unk58 = (f32) arg0->unk14;
    (void *)0x80086DC0->unk6C = 0.0f;
    (void *)0x80086DC0->unk64 = 0.0f;
    (void *)0x80086DC0->unk80 = temp_a2;
    (void *)0x80086DC0->unk5C = (f32) arg0->unk10;
    (void *)0x80086DC0->unk68 = (f32) (void *)0x80086DC0->unk6C;
    (void *)0x80086DC0->unk60 = (f32) (void *)0x80086DC0->unk64;
    temp_v1 = arg0->unk0;
    if (temp_v1 != 0) {
        if (temp_v1 != 1) {
            phi_return = (bitwise f32) (void *)0x80086DC0;
        } else {
            (void *)0x80086DC0->unkC = (f32) arg0->unk4;
            (void *)0x80086DC0->unk10 = (f32) arg0->unk8;
            (void *)0x80086DC0->unk14 = (f32) arg0->unkC;
            phi_return = (bitwise f32) (void *)0x80086DC0;
        }
    } else {
        (void *)0x80086B90->unk0 = 0.0f;
        (void *)0x80086B90->unk4 = (f32) ((f64) arg0->unk18 + 20.0);
        temp_f6 = (f64) temp_a2->unk10 - *(void *)0x80071430;
        arg1 = temp_a2;
        func_000232F4((f32) (temp_f6 + *(void *)0x80071438), (void *)0x80086B90, temp_a2);
        (void *)0x80086DC0->unkC = (f32) (arg1->unk0 - (void *)0x80086B90->unk0);
        (void *)0x80086DC0->unk14 = (f32) (arg1->unk8 - (void *)0x80086B90->unk4);
        (void *)0x80086DC0->unk10 = (f32) (arg1->unk4 + arg0->unk14);
        phi_return = 0.0f;
    }
    (void *)0x80086DC0->unk48 = 0.0f;
    (void *)0x80086DC0->unk34 = 0.0f;
    (void *)0x80086DC0->unk3C = 0.0f;
    (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
    (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
    return phi_return;
}
