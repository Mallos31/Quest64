void func_80034380(void) {
    func_8003E1F0(0x400);
}

s32 func_800343A0(void *arg0) {
    s32 sp1C;
    s32 sp18;

    sp1C = func_8003E200();
    if ((sp1C & 0x100) != 0) {
        sp18 = 1;
    } else {
        sp18 = 0;
    }
    if ((sp1C & 0x80) != 0) {
        arg0->unk4 = (s32) (arg0->unk4 | sp18);
        arg0->unk4 = (s32) (arg0->unk4 & -3);
    }
    return sp18;
}

? func_80034420(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;

    func_8003E210(0x80093FA0, 0x40);
    temp_a0 = *(void *)0x80093FB0;
    if (temp_a0 != 0) {
        *(void *)0x80093FB0 = func_80034DD0(temp_a0);
    }
    temp_a0_2 = *(void *)0x80093FB8;
    if (temp_a0_2 != 0) {
        *(void *)0x80093FB8 = func_80034DD0(temp_a0_2);
    }
    temp_a0_3 = *(void *)0x80093FC0;
    if (temp_a0_3 != 0) {
        *(void *)0x80093FC0 = func_80034DD0(temp_a0_3);
    }
    temp_a0_4 = *(void *)0x80093FC8;
    if (temp_a0_4 != 0) {
        *(void *)0x80093FC8 = func_80034DD0(temp_a0_4);
    }
    temp_a0_5 = *(void *)0x80093FCC;
    if (temp_a0_5 != 0) {
        *(void *)0x80093FCC = func_80034DD0(temp_a0_5);
    }
    temp_a0_6 = *(void *)0x80093FD0;
    if (temp_a0_6 != 0) {
        *(void *)0x80093FD0 = func_80034DD0(temp_a0_6);
    }
    temp_a0_7 = *(void *)0x80093FD8;
    if (temp_a0_7 != 0) {
        *(void *)0x80093FD8 = func_80034DD0(temp_a0_7);
    }
    return 0x80093FA0;
}

void func_8003452C(void *arg0) {
    void *temp_v0;

    temp_v0 = func_80034420();
    if ((temp_v0->unk4 & 1) != 0) {
        temp_v0->unk18 = (s32) temp_v0->unk38;
        temp_v0->unk1C = (s32) temp_v0->unk3C;
        arg0->unk4 = (s32) (arg0->unk4 & -2);
        if ((temp_v0->unk4 & 4) != 0) {
            temp_v0->unk10 = (s32) *((arg0->unk38 + 0xBFC) | 0xA0000000);
        }
    }
    func_80034E50(temp_v0, 0x40);
    func_8003E1F0(0x2B00);
    if (func_8003E520(0x4001000) == -1) {
loop_4:
        if (func_8003E520(0x4001000) == -1) {
            goto loop_4;
        }
    }
    if (func_8003E560(1, 0x4000FC0, temp_v0, 0x40) == -1) {
loop_6:
        if (func_8003E560(1, 0x4000FC0, temp_v0, 0x40) == -1) {
            goto loop_6;
        }
    }
    if (func_8003E5F0() != 0) {
loop_8:
        if (func_8003E5F0() != 0) {
            goto loop_8;
        }
    }
    if (func_8003E560(1, 0x4001000, temp_v0->unk8, temp_v0->unkC) == -1) {
loop_10:
        if (func_8003E560(1, 0x4001000, temp_v0->unk8, temp_v0->unkC) == -1) {
            goto loop_10;
        }
    }
}

void func_80034694(s32 arg0) {
    if (func_8003E5F0() != 0) {
loop_1:
        if (func_8003E5F0() != 0) {
            goto loop_1;
        }
    }
    func_8003E1F0(0x125);
}
