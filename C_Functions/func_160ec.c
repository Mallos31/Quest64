void *func_160ec(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f2;
    f32 temp_f6;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f2;
    void *phi_a2;

    temp_a2 = arg1;
    if ((temp_a2->unk5E & 1) != 0) {
        temp_v0_2 = arg0->unk28;
        temp_f6 = temp_a2->unk0;
        temp_f10 = temp_a2->unk8;
        arg1 = temp_a2;
        temp_f2 = temp_v0_2->unk0 - temp_f6;
        temp_f0 = temp_v0_2->unk8 - temp_f10;
        phi_f2 = func_00034F60((temp_f2 * temp_f2) + (temp_f0 * temp_f0), temp_a2);
        phi_a2 = arg1;
    } else {
        phi_f2 = (f32) (((f64) temp_a2->unk64->unk18 * 10.0) * (f64) temp_a2->unk24);
        phi_a2 = temp_a2;
    }
    (void *)0x800871D0->unk4 = phi_f2;
    (void *)0x800871D0->unk0 = (f32) ((f64) phi_f2 * 1.5);
    arg1 = phi_a2;
    arg0 = arg0;
    func_000232F4(phi_a2->unk10, arg0, (void *)0x800871D0, phi_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) (arg1->unk68->unk94 - (temp_v0->unk18 * arg1->unk24));
        return temp_v0;
    }
    arg0->unk10 = (f32) arg1->unk4;
    return temp_v0;
}
