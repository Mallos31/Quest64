void func_80033F10(void *arg0, ?32 arg1, ?32 arg2) {
    arg0->unk0 = 0x800709F0;
    arg0->unk4 = 0x800709F0;
    arg0->unk8 = 0;
    arg0->unkC = 0;
    arg0->unk10 = arg2;
    arg0->unk14 = arg1;
}

void func_80033F40(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;

    temp_v0 = func_8003D4D0();
    (*(void *)0x80070A84)->unk10 = arg0;
    (*(void *)0x80070A84)->unk14 = arg1;
    (*(void *)0x80070A84)->unk2 = (s16) arg2;
    func_8003D4F0(temp_v0);
}
