f32 func_6f40(void *arg0, void *arg1) {
    f32 sp34;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    f64 temp_f0;
    void *temp_s2;
    s16 phi_v0;
    f32 phi_f2;
    f32 phi_return;

    temp_s2 = ((void *)0x80085368->unk10 * 0x18) + *(void *)0x80084F24;
    func_0000DB7C(0, 0, (void *)0x80085368->unkC, temp_s2);
    if ((((s32) *(void *)0x80085374 >> 8) & 0xF) == 3) {
        arg0->unk6 = (u16)0;
        func_0001D8B0(arg1, 0x1A, 1, 1, 0xA, 1);
        arg0->unk0 = (u16)3;
        arg0->unk4 = (u16)0x4BU;
        arg1->unkC = 0.0f;
        arg1->unk14 = 0.0f;
        arg1->unk18 = 0.0f;
        arg1->unk20 = 0.0f;
        phi_return = func_000268D4(0x1E, 9, 0xFF);
    } else {
        arg0->unk0 = (u16)9;
        arg0->unk4 = (u16)8U;
        func_0001D8B0(arg1, 1, 0xA, 1, 0xA, 1);
        if ((*(void *)0x80085374 & 1) != 0) {
            (void *)0x8007BC30->unk0 = -133.0f;
            (void *)0x8007BC30->unk4 = -92.0f;
            (void *)0x8007BC30->unk8 = 4.0f;
            phi_v0 = (u16)0x15;
        } else {
            (void *)0x8007BC30->unk0 = -119.0f;
            (void *)0x8007BC30->unk4 = 125.0f;
            (void *)0x8007BC30->unk8 = 162.0f;
            phi_v0 = (u16)0x14;
        }
        arg0->unk6 = phi_v0;
        temp_f2 = (f32) ((f64) temp_s2->unkC * *(void *)0x800710C8);
        sp34 = temp_f2;
        func_000232F4(-temp_f2, (void *)0x8007BC30);
        temp_f12 = (f32) (u32) arg0->unk4;
        arg0->unk128 = (f32) (((temp_s2->unk0 - ((void *)0x8007BC30->unk0 * arg1->unk24)) - arg1->unk0) / temp_f12);
        arg0->unk134 = temp_f2;
        arg0->unk12C = (f32) (((temp_s2->unk8 + ((void *)0x8007BC30->unk4 * arg1->unk24)) - arg1->unk8) / temp_f12);
        temp_f2_2 = (f32) ((f64) temp_f2 + ((f64) (void *)0x8007BC30->unk8 * *(void *)0x800710D0));
        temp_f0 = (f64) temp_f2_2;
        if (*(void *)0x800710D8 < temp_f0) {
            phi_f2 = (f32) (temp_f0 - *(void *)0x800710E0);
        } else {
            phi_f2 = temp_f2_2;
            if (temp_f0 < *(void *)0x800710E8) {
                phi_f2 = (f32) (temp_f0 + *(void *)0x800710F0);
            }
        }
        arg0->unk130 = phi_f2;
        arg1->unkC = 0.0f;
        arg1->unk14 = 0.0f;
        phi_return = 0.0f;
    }
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    return phi_return;
}
