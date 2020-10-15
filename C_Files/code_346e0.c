void func_80033AE0(void *arg0, s32 arg1, s32 arg2, s32 arg3, u32 arg4, s32 arg5) {
    s32 sp20;
    s32 temp_s0;

    arg0->unk14 = arg1;
    arg0->unk4 = arg5;
    arg0->unk0 = 0;
    arg0->unk8 = 0;
    arg0->unk11C = arg2;
    arg0->unk38 = (s32) (arg3 >> 0x1F);
    arg0->unk3C = arg3;
    arg0->unkF4 = (s32) (arg4 - 0x10);
    arg0->unkF0 = (s32) (((s32) arg4 >> 0x1F) - (arg4 < 0x10U));
    arg0->unk100 = (s32) (0x8003D360 >> 0x1F);
    arg0->unk104 = 0x8003D360;
    sp20 = 0x3FFF01;
    arg0->unk118 = 0xFF03;
    arg0->unk128 = (u32) ((u32) (sp20 & 0x3F0000) >> 0x10);
    arg0->unk12C = 0x1000800;
    arg0->unk18 = 0;
    arg0->unk10 = (u16)1;
    arg0->unk12 = (u16)0;
    temp_s0 = func_8003D4D0();
    arg0->unkC = (void *) *(void *)0x800709FC;
    *(void *)0x800709FC = arg0;
    func_8003D4F0(temp_s0);
}
