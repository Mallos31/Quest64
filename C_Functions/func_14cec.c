f32 func_14cec(s32 arg0, void *arg1) {
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f64 temp_f0;
    f64 temp_f0_2;
    u16 temp_a1;
    void *temp_a2;
    void *temp_t3;
    void *temp_t9;
    void *temp_v1;
    void *phi_t3;
    void *phi_t9;
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_return;

    temp_a2 = arg1;
    phi_return = (bitwise f32) (void *)0x80086DC0;
    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_a1 = (void *)0x80086DC0->unk8;
        if ((temp_a1 & 0x40) == 0) {
            phi_t3 = (void *)0x80086DC0;
            phi_t9 = (void *)0x80086B00;
loop_3:
            temp_t3 = phi_t3 + 0xC;
            temp_t9 = phi_t9 + 0xC;
            temp_t9->unk-C = (s32) *phi_t3;
            temp_t9->unk-8 = (s32) temp_t3->unk-8;
            temp_t9->unk-4 = (s32) temp_t3->unk-4;
            phi_t3 = temp_t3;
            phi_t9 = temp_t9;
            if (temp_t3 != ((void *)0x80086DC0 + 0x84)) {
                goto loop_3;
            }
            temp_t9->unk0 = (s32) temp_t3->unk0;
        }
        (void *)0x80086BC0->unk0 = (f32) temp_a2->unk0;
        (void *)0x80086BC0->unk8 = (f32) temp_a2->unk8;
        if ((temp_a2->unk5E & 4) != 0) {
            (void *)0x80086BC0->unk4 = (f32) *(void *)0x8007BAD0;
        } else {
            if (temp_a2->unk64->unk0 == 1) {
                (void *)0x80086BC0->unk4 = (f32) temp_a2->unk68->unk94;
            } else {
                (void *)0x80086BC0->unk4 = (f32) temp_a2->unk4;
            }
        }
        (void *)0x80086BC0->unk24 = (f32) temp_a2->unk24;
        (void *)0x80086BC0->unk64 = (void *) temp_a2->unk64;
        (void *)0x80086BC0->unk68 = (void *) temp_a2->unk68;
        if ((temp_a2->unk5E & 4) != 0) {
            phi_f2 = (f32) ((f64) (temp_a2->unk64->unk1C * temp_a2->unk24) + 40.0);
            phi_f14 = (bitwise f32) arg1;
        } else {
            temp_v1 = temp_a2->unk64;
            temp_f12 = temp_v1->unk1C;
            temp_f14 = temp_v1->unk18;
            if (temp_f12 < temp_f14) {
                temp_f0 = (f64) (temp_f14 * temp_a2->unk24);
                phi_f2 = (f32) ((temp_f0 + temp_f0) + 40.0);
                phi_f14 = temp_f14;
            } else {
                temp_f0_2 = (f64) (temp_f12 * temp_a2->unk24);
                phi_f2 = (f32) ((temp_f0_2 + temp_f0_2) + 40.0);
                phi_f14 = temp_f14;
            }
        }
        (void *)0x80086DC0->unk0 = 4;
        (void *)0x80086DC0->unk8 = (u16) (temp_a1 | 0x40);
        (void *)0x80086DC0->unk80 = (void *)0x80086BC0;
        if ((temp_a2->unk5E & 4) != 0) {
            (void *)0x80086DC0->unk58 = (f32) 20.0;
        } else {
            (void *)0x80086DC0->unk58 = (f32) 15.0;
        }
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk4C = phi_f2;
        (void *)0x80086DC0->unk4 = arg0;
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086B90->unk0 = 0.0f;
        (void *)0x80086B90->unk4 = (f32) ((f64) phi_f2 + 10.0);
        arg1 = temp_a2;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        func_000232F4((void *)0x80086DC0->unk54, phi_f14, (void *)0x80086BC0, (void *)0x80086B90, temp_a2, arg0);
        (void *)0x80086DC0->unkC = (f32) (arg1->unk0 + (void *)0x80086B90->unk0);
        (void *)0x80086DC0->unk10 = (f32) ((f64) (void *)0x80086BC0->unk4 + ((f64) (void *)0x80086DC0->unk58 * *(void *)0x80071420));
        (void *)0x80086DC0->unk14 = (f32) (arg1->unk8 + (void *)0x80086B90->unk4);
        temp_f0_3 = *(void *)0x8007BAD0;
        phi_return = temp_f0_3;
        if ((void *)0x80086DC0->unk10 < temp_f0_3) {
            (void *)0x80086DC0->unk10 = temp_f0_3;
            phi_return = temp_f0_3;
        }
    }
    return phi_return;
}
