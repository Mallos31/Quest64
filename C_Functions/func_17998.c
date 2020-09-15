void func_17998(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f64 temp_f20;
    f64 temp_f22;
    f64 temp_f24;
    f64 temp_f2;
    s32 temp_s2;
    s32 temp_s2_2;
    void *temp_s3;
    void *phi_s1;
    f32 phi_f28;
    f32 phi_f12;
    f32 phi_f12_2;
    f32 phi_f26;
    s32 phi_s2;
    s32 phi_s2_2;

    temp_s3 = arg0->unk24;
    if ((temp_s3->unk5E & 1) != 0) {
        arg0->unk28 = (void *)0x8007BACC;
        return;
    }
    if ((arg0->unk2C->unk2 & 8) != 0) {
        temp_f12 = arg0->unk18;
        if (0.0f == temp_f12) {
            if (0.0f != arg0->unk20) {
block_5:
                phi_f28 = func_00023210(temp_f12, arg0->unk20);
            } else {
block_6:
                phi_f28 = temp_s3->unk10;
            }
        } else {
            goto block_5;
        }
    } else {
        goto block_6;
    }
    temp_s2 = *(void *)0x8007C990;
    if (temp_s2 != 0) {
        temp_f24 = *(void *)0x800714B8;
        temp_f22 = *(void *)0x800714C0;
        temp_f20 = *(void *)0x800714C8;
        phi_s1 = (void *)0x8007C998;
        phi_f26 = *(void *)0x800714B0;
        phi_s2_2 = temp_s2;
loop_9:
        phi_s2 = phi_s2_2;
        if (-1 != phi_s1->unk74) {
            (void *)0x800871D0->unk0 = (f32) (phi_s1->unk24 - arg0->unk24->unk0);
            (void *)0x800871D0->unk4 = (f32) (phi_s1->unk2C - arg0->unk24->unk8);
            func_000232F4(phi_f28, (void *)0x800871D0);
            temp_f0 = func_00023210((void *)0x800871D0->unk0, (void *)0x800871D0->unk4);
            temp_f2 = (f64) temp_f0;
            temp_s2_2 = phi_s2_2 - 1;
            if (temp_f22 < temp_f2) {
                phi_f12 = (f32) (temp_f2 - temp_f20);
            } else {
                phi_f12 = temp_f0;
                if (temp_f2 < temp_f24) {
                    phi_f12 = (f32) (temp_f2 + temp_f20);
                }
            }
            phi_f12_2 = phi_f12;
            if (phi_f12 < 0.0f) {
                phi_f12_2 = -phi_f12;
            }
            phi_s2 = temp_s2_2;
            if (phi_f12_2 < phi_f26) {
                arg0->unk28 = (void *) (phi_s1 + 0x24);
                phi_s2 = temp_s2_2;
                phi_f26 = phi_f12_2;
            }
        }
        phi_s1 = phi_s1 + 0x128;
        phi_s2_2 = phi_s2;
        if (phi_s2 != 0) {
            goto loop_9;
        }
    }
}
