? func_80046EE0(void *arg0, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    u32 sp1C;
    s32 sp18;
    s32 temp_ret;
    u32 temp_v1;

    arg0->unk0 = 0;
    arg0->unk4 = 0;
    arg0->unkC = arg5;
    arg0->unk8 = arg4;
    if ((arg2 != 0) || (arg3 != 0)) {
        arg0->unk10 = arg2;
        arg0->unk14 = arg3;
    } else {
        arg0->unk10 = arg4;
        arg0->unk14 = arg5;
    }
    arg0->unk18 = arg6;
    arg0->unk1C = arg7;
    temp_ret = func_8003E898(arg0);
    temp_v1 = (u32) (u64) temp_ret;
    sp18 = temp_ret;
    sp1C = temp_v1;
    if (**(void *)0x80070A90 == arg0) {
        func_8003E824(sp18, sp1C);
    }
    return 0;
}
