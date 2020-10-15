void func_8003D830(void *arg0, s32 arg1) {
    void *temp_t5;

    if (arg0 == 0) {
        arg0 = *(void *)0x80070A00;
    }
    if (arg0->unk4 != arg1) {
        arg0->unk4 = arg1;
        if (arg0 != *(void *)0x80070A00) {
            if (arg0->unk10 != 1) {
                func_8003D510(arg0->unk8, arg0);
                func_8003D18C(arg0->unk8, arg0);
            }
        }
        temp_t5 = *(void *)0x80070A00;
        if (temp_t5->unk4 < (*(void *)0x800709F8)->unk4) {
            temp_t5->unk10 = (u16)2;
            func_8003D08C(0x800709F8);
        }
    }
    func_8003D4F0(func_8003D4D0());
}

? func_8003D910(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if ((*(void *)0xA4600010 & 3) != 0) {
loop_1:
        if ((*(void *)0xA4600010 & 3) != 0) {
            goto loop_1;
        }
    }
    *(void *)0xA4600000 = func_80034DD0(arg2);
    *(void *)0xA4600004 = (s32) ((*(void *)0x80000308 | arg1) & 0x1FFFFFFF);
    if (arg0 != 0) {
        if (arg0 != 1) {
            return -1;
        }
        *(void *)0xA4600008 = (s32) (arg3 - 1);
    } else {
        *(void *)0xA460000C = (s32) (arg3 - 1);
    }
    return 0;
}

? func_8003D9F0(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp2C;
    s32 sp28;
    void *sp24;
    s32 temp_t7;
    u8 temp_t4;
    u8 temp_t5;
    u8 temp_t5_2;
    u8 temp_t5_3;
    u8 temp_t5_4;
    u8 temp_t8;
    u8 temp_t8_2;
    u8 temp_t8_3;
    u8 temp_t8_4;
    void *temp_t6;

    temp_t7 = *(void *)0xA4600010;
    sp2C = temp_t7;
    if ((temp_t7 & 3) != 0) {
loop_1:
        sp2C = *(void *)0xA4600010;
        if ((sp2C & 3) != 0) {
            goto loop_1;
        }
    }
    temp_t4 = arg0->unk9;
    temp_t6 = ((temp_t4 * 4) + 0x80070000)->unk-BC0;
    sp28 = (s32) temp_t4;
    if (temp_t6 != arg0) {
        sp24 = temp_t6;
        if (temp_t4 == 0) {
            temp_t8 = arg0->unk5;
            if (temp_t6->unk5 != temp_t8) {
                *(void *)0xA4600014 = (?32) temp_t8;
            }
            temp_t5 = arg0->unk6;
            if (sp24->unk6 != temp_t5) {
                *(void *)0xA460001C = (?32) temp_t5;
            }
            temp_t8_2 = arg0->unk7;
            if (sp24->unk7 != temp_t8_2) {
                *(void *)0xA4600020 = (?32) temp_t8_2;
            }
            temp_t5_2 = arg0->unk8;
            if (sp24->unk8 != temp_t5_2) {
                *(void *)0xA4600018 = (?32) temp_t5_2;
            }
        } else {
            temp_t8_3 = arg0->unk5;
            if (sp24->unk5 != temp_t8_3) {
                *(void *)0xA4600024 = (?32) temp_t8_3;
            }
            temp_t5_3 = arg0->unk6;
            if (sp24->unk6 != temp_t5_3) {
                *(void *)0xA460002C = (?32) temp_t5_3;
            }
            temp_t8_4 = arg0->unk7;
            if (sp24->unk7 != temp_t8_4) {
                *(void *)0xA4600030 = (?32) temp_t8_4;
            }
            temp_t5_4 = arg0->unk8;
            if (sp24->unk8 != temp_t5_4) {
                *(void *)0xA4600028 = (?32) temp_t5_4;
            }
        }
        ((sp28 * 4) + 0x80070000)->unk-BC0 = arg0;
    }
    *(void *)0xA4600000 = func_80034DD0(arg3);
    *(void *)0xA4600004 = (s32) ((arg0->unkC | arg2) & 0x1FFFFFFF);
    if (arg1 != 0) {
        if (arg1 != 1) {
            return -1;
        }
        *(void *)0xA4600008 = (s32) (arg4 - 1);
    } else {
        *(void *)0xA460000C = (s32) (arg4 - 1);
    }
    return 0;
}
