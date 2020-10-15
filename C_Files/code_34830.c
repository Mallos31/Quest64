void func_80033C30(void *arg0) {
    s32 temp_t0;
    u16 temp_s1;
    void *temp_t9;

    temp_s1 = arg0->unk10;
    if (temp_s1 != 1) {
        if (temp_s1 == 8) {
            arg0->unk10 = (u16)2;
            func_8003D18C(0x800709F8, arg0);
        }
    } else {
        temp_t0 = arg0->unk8;
        if ((temp_t0 == 0) || (temp_t0 == 0x800709F8)) {
            arg0->unk10 = (u16)2;
            func_8003D18C(0x800709F8, arg0);
        } else {
            arg0->unk10 = (u16)8;
            func_8003D18C(arg0->unk8, arg0);
            func_8003D18C(0x800709F8, func_8003D1D4(arg0->unk8));
        }
    }
    if (*(void *)0x80070A00 == 0) {
        func_8003D1E4();
    } else {
        temp_t9 = *(void *)0x80070A00;
        if (temp_t9->unk4 < (*(void *)0x800709F8)->unk4) {
            temp_t9->unk10 = (u16)2;
            func_8003D08C(0x800709F8);
        }
    }
    func_8003D4F0(func_8003D4D0());
}

void func_80033D80(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 temp_v0;

    if (*(void *)0x8006F420 == 0) {
        func_80033F10(arg1, arg2, arg3);
        func_80033F10(0x80093F00, 0x80093F18, 1);
        if (*(void *)0x80070A10 == 0) {
            func_8003D750();
        }
        func_80033FB0(8, 0x80093F00, 0x22222222);
        sp28 = -1;
        sp24 = func_8003D810(0);
        if (sp24 < arg0) {
            sp28 = sp24;
            func_8003D830(0, arg0);
        }
        temp_v0 = func_8003D4D0();
        *(void *)0x8006F420 = 1;
        *(void *)0x8006F424 = 0x80092D50;
        *(void *)0x8006F42C = 0x80093F00;
        *(void *)0x8006F428 = arg1;
        sp2C = temp_v0;
        *(void *)0x8006F430 = 0x800955E8;
        *(void *)0x8006F434 = 0x8003D910;
        *(void *)0x8006F438 = 0x8003D9F0;
        func_80033AE0(0x80092D50, 0, 0x8003DC20, 0x8006F420, 0x80093F00, arg0);
        func_80033C30(0x80092D50);
        func_8003D4F0(sp2C);
        if (sp28 != -1) {
            func_8003D830(0, sp28);
        }
    }
}
