void *func_6348(u16 arg0, void *arg1, void *arg2) {
    f32 sp30;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f2;
    f32 temp_f2_2;
    u16 temp_v0;
    void *temp_a2;
    void *temp_v1;

    temp_v0 = *(void *)0x8008C592;
    if ((temp_v0 & 1) != 0) {
        if ((temp_v0 & 6) == 0) {
            temp_f20 = (arg1->unk0 + arg1->unk18) - *(void *)0x8008C5A4;
            temp_f2 = (arg1->unk8 + arg1->unk20) - *(void *)0x8008C430;
            sp30 = temp_f2;
            temp_f0 = func_00034F60((temp_f20 * temp_f20) + (temp_f2 * temp_f2));
            temp_a2 = arg2;
            temp_f12 = temp_a2->unkC * temp_a2->unk110;
            if (temp_f12 < temp_f0) {
                arg1->unk18 = (f32) ((((temp_f12 * temp_f20) / temp_f0) - arg1->unk0) + *(void *)0x8008C5A4);
                arg1->unk20 = (f32) ((((temp_f12 * temp_f2) / temp_f0) - arg1->unk8) + *(void *)0x8008C430);
            }
            temp_f20_2 = (arg1->unk0 + arg1->unk18) - *(void *)0x8008C59C;
            arg2 = temp_a2;
            temp_f2_2 = (arg1->unk8 + arg1->unk20) - *(void *)0x8008C5A0;
            sp30 = temp_f2_2;
            temp_f0_2 = func_00034F60((temp_f20_2 * temp_f20_2) + (temp_f2_2 * temp_f2_2), temp_a2);
            if ((*(void *)0x8008C592 & 0x100) != 0) {
                temp_f12_2 = *(void *)0x8008C434;
                if (temp_f12_2 < temp_f0_2) {
                    arg1->unk18 = (f32) ((((temp_f12_2 * temp_f20_2) / temp_f0_2) - arg1->unk0) + *(void *)0x8008C59C);
                    arg1->unk20 = (f32) ((((*(void *)0x8008C434 * temp_f2_2) / temp_f0_2) - arg1->unk8) + *(void *)0x8008C5A0);
                }
            } else {
                if (*(void *)0x8008C434 < temp_f0_2) {
                    arg2->unk8 = (u16) (arg2->unk8 | 0x20);
                } else {
                    arg2->unk8 = (u16) (arg2->unk8 & 0xFFDF);
                }
            }
        }
    }
    func_00005C6C(arg1 + 0x18, arg1 + 0x20, arg1);
    *(void *)0x8007BA54 = (f32) arg1->unk18;
    *(void *)0x8007BA58 = (f32) arg1->unk20;
    temp_v1 = arg1->unk64;
    (void *)0x8007BC40->unk0 = (f32) (temp_v1->unk18 * temp_v1->unk20);
    func_0000EE60(arg1->unk0 + arg1->unk18, arg1->unk4, arg1->unk8 + arg1->unk20, arg0, (void *)0x8007BC40);
    arg1->unk18 = (f32) ((void *)0x8007BC40->unk0 - arg1->unk0);
    arg1->unk20 = (f32) ((void *)0x8007BC40->unk8 - arg1->unk8);
    arg1->unk0 = (f32) (void *)0x8007BC40->unk0;
    arg1->unk4 = (f32) (void *)0x8007BC40->unk4;
    arg1->unk8 = (f32) (void *)0x8007BC40->unk8;
    arg1->unk2C = (f32) (void *)0x8007BC40->unkC;
    arg1->unk30 = (f32) (void *)0x8007BC40->unk10;
    arg1->unk34 = (f32) (void *)0x8007BC40->unk14;
    arg1->unk62 = (u16) (void *)0x8007BC40->unk18;
    return (void *)0x8007BC40;
}
