void func_149e0(void *arg0, void *arg1) {
    f32 sp1C;
    f32 sp18;
    f32 temp_f12;
    f64 temp_f2;
    void *temp_a2;
    f32 phi_f14;
    void *phi_a2;
    f32 phi_f12;

    temp_a2 = arg1;
    sp1C = arg0->unkC - temp_a2->unk0;
    sp18 = arg0->unk14 - temp_a2->unk8;
    if ((arg0->unk8 & 0x14) != 0) {
        arg1 = temp_a2;
        temp_f12 = func_00023210(sp1C, sp18, temp_a2) - arg0->unk54;
        temp_f2 = (f64) temp_f12;
        if (*(void *)0x80071400 < temp_f2) {
            phi_f12 = (f32) (temp_f2 - *(void *)0x80071408);
        } else {
            phi_f12 = temp_f12;
            if (temp_f2 < *(void *)0x80071410) {
                phi_f12 = (f32) (temp_f2 + *(void *)0x80071418);
            }
        }
        phi_f14 = (arg0->unk78 * phi_f12) + arg0->unk3C;
        phi_a2 = arg1;
    } else {
        phi_f14 = arg0->unk3C;
        phi_a2 = temp_a2;
    }
    arg0->unk3C = (f32) (arg0->unk7C * phi_f14);
    arg1 = phi_a2;
    arg0 = arg0;
    (void *)0x80086B90->unk0 = sp1C;
    (void *)0x80086B90->unk4 = sp18;
    func_000232F4(phi_f14, phi_f14, arg0, (void *)0x80086B90, phi_a2);
    arg0->unkC = (f32) (arg1->unk0 - (void *)0x80086B90->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x80086B90->unk4);
}
