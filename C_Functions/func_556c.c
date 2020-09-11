void func_556c(void *arg0, void *arg1, ? arg2) {
    s32 temp_a1;
    u16 temp_t9;

    if (arg1->unk4 != 0) {
        func_000056D0(arg0, arg2, 0x8007BC30, arg2);
        arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
        func_00005748(0xA00, arg0, arg1);
        if (arg1->unk4 == 0x20) {
            func_000120C0(arg1->unk118);
            func_0002E768(1);
            func_000212A0(arg1->unk118);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
            func_000268D4(0, 0x3B, 0xFF);
        }
        temp_t9 = arg1->unk4 - 1;
        arg1->unk4 = temp_t9;
        if ((temp_t9 & 0xFFFF) == 0) {
            arg0->unk10 = (f32) arg1->unk134;
            temp_a1 = *(void *)0x8007BC2C;
            func_0001D8B0(arg0, temp_a1, 1, temp_a1, 1, 1);
            return;
        }
    } else {
        if (*(void *)0x800905C0 == 0) {
            arg1->unk0 = (u16)0;
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -3);
            *(void *)0x8007BA74 = 0;
        }
    }
}
