void func_80034840(s32 arg0) {
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 temp_v0;

    if (*(void *)0x80070170 == 0) {
        __osTimerServicesInit();
        func_80033F10(0x80095190, 0x800951A8, 5);
        *(void *)0x800951C0 = (u16)0xD;
        *(void *)0x800951C2 = (u8)0;
        *(void *)0x800951C4 = 0;
        *(void *)0x800951D8 = (u16)0xE;
        *(void *)0x800951DA = (u8)0;
        *(void *)0x800951DC = 0;
        func_80033FB0(7, 0x80095190, 0x800951C0);
        func_80033FB0(3, 0x80095190, 0x800951D8);
        sp28 = -1;
        sp24 = func_8003D810(0);
        if (sp24 < arg0) {
            sp28 = sp24;
            func_8003D830(0, arg0);
        }
        temp_v0 = __osDisableInt();
        *(void *)0x80070170 = 1;
        *(void *)0x80070174 = 0x80093FE0;
        *(void *)0x80070178 = 0x80095190;
        *(void *)0x8007017C = 0x80095190;
        sp2C = temp_v0;
        *(void *)0x80070180 = 0;
        *(void *)0x80070184 = 0;
        *(void *)0x80070188 = 0;
        func_80033AE0(0x80093FE0, 0, 0x800349C8, 0x80070170, 0x80095190, arg0);
        __osViInit();
        func_80033C30(0x80093FE0);
        __osRestoreInt(sp2C);
        if (sp28 != -1) {
            func_8003D830(0, sp28);
        }
    }
}

void func_800349C8(void *arg0) {
    void *sp34;
    void *sp30;
    void *sp2C;
    s32 sp28;
    u32 sp24;
    s32 temp_t6;
    u16 temp_s0;
    u16 temp_t3;
    u16 temp_t7;
    u32 temp_t3_2;
    u32 temp_t5;
    u32 temp_t8;

    sp2C = NULL;
    sp28 = 0;
    sp34 = __osGetCurrFaultedThread();
    temp_t7 = sp34->unk2;
    *(void *)0x800951F0 = temp_t7;
    if (temp_t7 == 0) {
        *(void *)0x800951F0 = (u16)1U;
    }
    sp30 = arg0;
loop_3:
    func_80034020(sp30->unkC, &sp2C, 1);
    temp_s0 = *sp2C;
    if (temp_s0 == 0xD) {
        __osViSwapContext();
        temp_t3 = *(void *)0x800951F0 - 1;
        *(void *)0x800951F0 = temp_t3;
        if ((temp_t3 & 0xFFFF) == 0) {
            sp34 = __osGetCurrFaultedThread();
            temp_t6 = sp34->unk10;
            if (temp_t6 != 0) {
                func_80034200(temp_t6, sp34->unk14, 0);
            }
            *(void *)0x800951F0 = (u16) sp34->unk2;
        }
        *(void *)0x8009562C = (s32) (*(void *)0x8009562C + 1);
        if (sp28 != 0) {
            sp24 = func_8003ED90();
            *(void *)0x80095620 = 0;
            *(void *)0x80095624 = sp24;
            sp28 = 0;
        }
        sp24 = *(void *)0x80095628;
        *(void *)0x80095628 = func_8003ED90();
        temp_t3_2 = *(void *)0x80095624;
        temp_t8 = *(void *)0x80095628 - sp24;
        temp_t5 = temp_t8 + temp_t3_2;
        *(void *)0x80095620 = (s32) ((temp_t5 < temp_t3_2) + *(void *)0x80095620);
        sp24 = temp_t8;
        *(void *)0x80095624 = temp_t5;
        goto loop_3;
    }
    if (temp_s0 != 0xE) {
        goto loop_3;
    }
    __osTimerInterrupt();
    goto loop_3;
}
