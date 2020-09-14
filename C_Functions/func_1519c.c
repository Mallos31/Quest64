f32 func_1519c(void) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 phi_f2;
    f64 phi_f2_2;
    f64 phi_f2_3;
    f64 phi_f16;
    f32 phi_f0;
    f32 phi_return;
    f32 phi_f0_2;

    temp_f12 = *(void *)0x80071440;
    temp_f2 = (f64) ((void *)0x80086DC0->unk28 - *(void *)0x8007BADC);
    if (temp_f2 < temp_f12) {
        phi_f0_2 = (f32) (temp_f2 + *(void *)0x80071448);
        phi_f16 = *(void *)0x80071450;
block_4:
        phi_f2 = (f64) phi_f0_2;
    } else {
        temp_f16 = *(void *)0x80071458;
        phi_f2 = temp_f2;
        phi_f16 = temp_f16;
        if (temp_f16 < temp_f2) {
            phi_f0_2 = (f32) (temp_f2 - *(void *)0x80071460);
            phi_f16 = temp_f16;
            goto block_4;
        }
    }
    temp_f14 = *(void *)0x80071468;
    phi_f2_2 = phi_f2;
    if (*(void *)0x80071470 < phi_f2) {
        phi_f2_2 = (f64) *(void *)0x80071478;
    }
    phi_f2_3 = phi_f2_2;
    if (phi_f2_2 < *(void *)0x80071480) {
        phi_f2_3 = (f64) *(void *)0x80071488;
    }
    temp_f0 = (f32) (phi_f2_3 + phi_f16);
    temp_f2_2 = (f64) temp_f0;
    if (temp_f2_2 < temp_f12) {
        temp_f0_2 = (f32) (temp_f2_2 + temp_f14);
        phi_f0 = temp_f0_2;
        phi_return = temp_f0_2;
    } else {
        phi_f0 = temp_f0;
        phi_return = temp_f0;
        if (phi_f16 < temp_f2_2) {
            temp_f0_3 = (f32) (temp_f2_2 - temp_f14);
            phi_f0 = temp_f0_3;
            phi_return = temp_f0_3;
        }
    }
    (void *)0x80086DC0->unk84 = phi_f0;
    (void *)0x80086DC0->unk54 = (f32) ((f64) *(void *)0x8008537C + phi_f16);
    temp_f2_3 = (f64) (void *)0x80086DC0->unk54;
    if (phi_f16 < temp_f2_3) {
        (void *)0x80086DC0->unk54 = (f32) (temp_f2_3 - temp_f14);
    } else {
        if (temp_f2_3 < temp_f12) {
            (void *)0x80086DC0->unk54 = (f32) (temp_f2_3 + temp_f14);
        }
    }
    (void *)0x80086DC0->unk8 = (u16) ((void *)0x80086DC0->unk8 | 0x10);
    return phi_return;
}
