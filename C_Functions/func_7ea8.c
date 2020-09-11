void func_7ea8(void *arg0, void *arg1, s32 arg2) {
    u16 temp_v1;
    void *temp_v0;
    s32 phi_a1;
    s32 phi_a3;

    temp_v0 = arg1->unk64;
    temp_v0->unk8 = (u16) (temp_v0->unk8 - ((arg0->unk11C * 2) + 0x800C0000)->unk1B26);
    temp_v1 = arg0->unk11E;
    if (((((((s32) temp_v1 >> 8) & 0xF) * 4) + 0x800C0000)->unk1B14 + ((temp_v1 & 0xFF) * 0x44))->unk18 == 2) {
        arg0->unk8 = (u16) (arg0->unk8 | 4);
        phi_a1 = 0x17;
        phi_a3 = 0x16;
    } else {
        phi_a1 = 3;
        phi_a3 = *(void *)0x8007BC2C;
    }
    arg0->unk0 = (u16)0xE;
    arg0->unk120 = (u16)0x12;
    arg0->unk11C = (u16)0U;
    arg0->unk4 = (u16) (arg2 + (((phi_a1 * 4) - phi_a1) * 4))->unk2;
    arg1->unk18 = 0.0f;
    arg1->unk20 = 0.0f;
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    func_0001D8B0(arg1, phi_a1, 1, phi_a3, 1, 1);
    func_000140EC(0x2D, arg1);
}
