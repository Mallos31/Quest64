void func_80034BA0(s32 arg0) {
    s32 temp_v0;
    void *temp_t0;

    temp_v0 = func_8003D4D0();
    (*(void *)0x80070A84)->unk8 = arg0;
    (*(void *)0x80070A84)->unk0 = (u16)1;
    temp_t0 = *(void *)0x80070A84;
    temp_t0->unkC = (s32) temp_t0->unk8->unk4;
    func_8003D4F0(temp_v0);
}
