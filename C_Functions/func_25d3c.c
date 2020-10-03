void func_25d3c(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4) {
    ?32 sp10;
    s32 temp_s0;
    s32 temp_s0_2;
    void *temp_v0;

    sp10 = 0x8000;
    (void *)0x8008F978->unk190 = func_00036660(0, 0, 0x8008F240, 1);
    sp10 = 0x8000;
    (void *)0x8008F978->unk32C = func_00036660(0, 0, 0x8008F240, 1);
    (void *)0x8008F978->unk0 = 0x40;
    (void *)0x8008F978->unk4 = 0x40;
    (void *)0x8008F978->unk8 = (u8)0x10;
    (void *)0x8008F978->unkC = 0x8008F240;
    (void *)0x8008F978->unk10 = 0;
    (void *)0x8008F978->unk14 = 0;
    (void *)0x8008F978->unk18 = 0;
    (void *)0x8008F978->unk9 = (u8)0;
    func_00038190(0x8008F994, (void *)0x8008F978);
    (void *)0x8008F978->unk19C = 0x40;
    (void *)0x8008F978->unk1A0 = 0x40;
    (void *)0x8008F978->unk1A4 = (u8)0x10;
    (void *)0x8008F978->unk1A8 = 0x8008F240;
    (void *)0x8008F978->unk1AC = 0;
    (void *)0x8008F978->unk1B0 = 0;
    (void *)0x8008F978->unk1B4 = 0;
    (void *)0x8008F978->unk1A5 = (u8)0;
    func_00038190(0x8008FB30, 0x8008FB14);
    func_00025040(arg2);
    func_00038508(*(void *)0x800538F0, arg2);
    temp_s0 = arg1 - arg0;
    sp10 = temp_s0;
    temp_v0 = func_00036660(0, 0, 0x8008F240, 1);
    *(void *)0x800538E8 = temp_v0;
    func_00024690(arg0, temp_v0, temp_s0);
    func_00038404(*(void *)0x800538E8, arg4);
    temp_s0_2 = (*(void *)0x800538E8)->unk4;
    func_00038550(0x8008F994, temp_s0_2);
    func_00038550(0x8008FB30, temp_s0_2);
}

