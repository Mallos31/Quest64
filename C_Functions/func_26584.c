void func_26584(s32 arg0) {
    s32 sp1C;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 phi_a2;

    temp_a2 = arg0;
    *(void *)0x8005397C = temp_a2;
    if (temp_a2 == 1) {
        if (*(void *)0x80053980 == 0xFF) {
            if (func_000263A8(0, temp_a2) != 0) {

            } else {
block_6:
                *(void *)0x80053978 = 1;
                func_000368E0(0x8008FB30, 0x7FFF);
                *(void *)0x80053988 = 0x7FFF;
                func_00025364(1);
                *(void *)0x8005397C = 0xFF;
            }
        } else {
            if (*(void *)0x8008F9C0 != 0) {
                func_000390C0(0x8008F994, temp_a2);
                return;
            }
            goto block_6;
        }
    } else {
        *(void *)0x80053978 = 0;
        arg0 = temp_a2;
        func_000390C0(0x8008FB30, temp_a2);
        temp_a2_2 = arg0;
        if (temp_a2_2 >= 0x50) {
            temp_v0 = temp_a2_2 - 0x50;
            sp1C = temp_v0;
            if ((temp_v0 == *(void *)0x80053980) || (func_000263A8(temp_v0, temp_a2_2) == 0)) {
                func_00025364(0);
                func_000368E0(0x8008F994, 0);
                *(void *)0x80053984 = 0;
                *(void *)0x80053990 = 0x100;
                *(void *)0x80053980 = sp1C;
                *(void *)0x8005397C = 0xFF;
            }
        } else {
            temp_a0 = temp_a2_2;
            phi_a2 = temp_a2_2;
            if ((temp_a2_2 == *(void *)0x80053980) || (arg0 = temp_a2_2, phi_a2 = arg0, (func_000263A8(temp_a0, temp_a2_2) == 0))) {
                arg0 = phi_a2;
                func_00025364(0, phi_a2);
                func_000368E0(0x8008F994, 0x7FFF);
                *(void *)0x80053984 = 0x7FFF;
                *(void *)0x80053980 = arg0;
                *(void *)0x8005397C = 0xFF;
            }
        }
    }
}

