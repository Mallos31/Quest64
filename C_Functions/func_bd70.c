void func_bd70(void *arg0) {
    f32 sp3C;
    f32 temp_f0;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f2;

    (void *)0x8007D0D0->unk0 = (f32) (void *)0x80054690->unk148;
    (void *)0x8007D0D0->unk4 = (f32) (void *)0x80054690->unk14C;
    (void *)0x8007D0D0->unk8 = (f32) arg0->unk28;
    temp_v0 = arg0->unk64;
    if (temp_v0->unk0 == 1) {
        phi_f2 = arg0->unk68->unk94;
    } else {
        phi_f2 = (f32) ((f64) arg0->unk4 + (((f64) temp_v0->unk1C * 0.5) * (f64) arg0->unk24));
    }
    sp3C = phi_f2;
    func_000177F8(*(void *)0x800547D2, *(void *)0x800547D4, arg0->unk0, phi_f2, arg0->unk8, arg0->unk10, ((void *)0x80054690->unk140 * 0xA) + 0x800C1B90, (void *)0x8007D0D0, arg0);
    temp_v0_2 = arg0->unk64;
    temp_f0 = arg0->unk24;
    func_00019354(2, 0x1E, arg0->unk0, (temp_v0_2->unk1C * temp_f0) + phi_f2, arg0->unk8, (f32) ((f64) (temp_v0_2->unk18 * temp_f0) * *(void *)0x800711C0));
}
