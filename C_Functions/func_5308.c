f64 func_5308(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    u16 temp_t7;
    f64 phi_f0;
    f64 phi_return;
    f32 phi_f2;

    temp_f16 = *(void *)0x80070F60;
    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_f12 = arg0->unk10;
    arg0->unk0 = (f32) (arg0->unk0 + arg1->unk128);
    arg0->unk8 = (f32) (arg0->unk8 + arg1->unk12C);
    temp_f0 = (f64) (arg1->unk130 - temp_f12);
    if (temp_f16 < temp_f0) {
        phi_f2 = (f32) (temp_f0 - *(void *)0x80070F68);
block_4:
        temp_f0_2 = (f64) phi_f2;
        phi_f0 = temp_f0_2;
        phi_return = temp_f0_2;
    } else {
        phi_f0 = temp_f0;
        phi_return = temp_f0;
        if (temp_f0 < *(void *)0x80070F70) {
            phi_f2 = (f32) (temp_f0 + *(void *)0x80070F78);
            goto block_4;
        }
    }
    temp_f14 = *(void *)0x80070F80;
    arg0->unk10 = (f32) ((f64) temp_f12 + (phi_f0 * *(void *)0x80070F88));
    temp_f2 = (f64) arg0->unk10;
    if (temp_f16 < temp_f2) {
        arg0->unk10 = (f32) (temp_f2 - temp_f14);
    } else {
        if (temp_f2 < *(void *)0x80070F90) {
            arg0->unk10 = (f32) (temp_f2 + temp_f14);
        }
    }
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0xA;
        arg1->unk4 = (u16)0x50U;
        func_0001D8B0(temp_f12, temp_f14, arg0, arg1->unk6, 1, *(void *)0x8007BC2C, 1, 1);
        func_00006720(arg0);
        func_0001D924(arg0, (arg0->unk52 * 0xC) + arg2, arg0->unk24);
        arg0->unk10 = (f32) arg1->unk134;
        phi_return = func_000268D4(0x1A, 8, 0xFF);
    }
    return phi_return;
}
