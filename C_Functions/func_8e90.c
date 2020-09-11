void *func_8e90(f32 arg0, f32 arg1, void *arg2) {
    func_0000835C(&arg0, &arg1, arg2);
    arg2->unk18 = arg0;
    arg2->unk20 = arg1;
    arg2->unk0 = (f32) (arg2->unk0 + arg0);
    arg2->unk8 = (f32) (arg2->unk8 + arg1);
    (void *)0x8007BCC8->unk0 = 4.0f;
    func_0000EE60(arg2->unk0, arg2->unk4, (bitwise s32) arg2->unk8, 0xA01, (void *)0x8007BCC8);
    arg2->unk0 = (f32) (void *)0x8007BCC8->unk0;
    arg2->unk4 = (f32) (void *)0x8007BCC8->unk4;
    arg2->unk8 = (f32) (void *)0x8007BCC8->unk8;
    arg2->unk2C = (f32) (void *)0x8007BCC8->unkC;
    arg2->unk30 = (f32) (void *)0x8007BCC8->unk10;
    arg2->unk34 = (f32) (void *)0x8007BCC8->unk14;
    return (void *)0x8007BCC8;
}
