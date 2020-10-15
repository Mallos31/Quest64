s32 func_80036510(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 phi_v0;

    if (*(void *)0x8006F420 == 0) {
        return -1;
    }
    if (arg2 == 0) {
        arg0->unk0 = (u16)0xB;
    } else {
        arg0->unk0 = (u16)0xC;
    }
    arg0->unk2 = (s8) arg1;
    arg0->unk4 = arg6;
    arg0->unk8 = arg4;
    arg0->unkC = arg3;
    arg0->unk10 = arg5;
    arg0->unk14 = 0;
    if (arg1 == 1) {
        phi_v0 = func_8003FBC0(func_8003FD10(), arg0, 0);
    } else {
        phi_v0 = func_80034200(func_8003FD10(), arg0, 0);
    }
    return phi_v0;
}

s32 func_80036620(void *arg0, s32 arg1, ?32 arg2) {
    s32 temp_v0;

    temp_v0 = 0x10 - (arg1 & 0xF);
    if (0x10 != temp_v0) {
        arg0->unk0 = (s32) (arg1 + temp_v0);
    } else {
        arg0->unk0 = arg1;
    }
    arg0->unk8 = arg2;
    arg0->unkC = 0;
    arg0->unk4 = (s32) arg0->unk0;
    return temp_v0;
}
