void func_4470(s32 arg0) {
    s32 sp34;
    s32 sp28;
    u16 temp_t9;
    void *temp_v1;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = 0x10000A0;
    func_000111F8(*(void *)0x8007BC08, (void *)0x8007B2FC);
    temp_t9 = *(void *)0x8007BAB8;
    if ((temp_t9 == 0xA) || (temp_t9 == 0xB)) {
        sp34 = 1;
    } else {
        sp34 = 0;
    }
    sp28 = ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00;
    func_00006720(0x8007BACC);
    func_0001DB38(sp34, 0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp28, arg0);
    func_0001E0AC(*(void *)0x8007BB24, 0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp28);
    func_00006720(0x8007BACC);
    func_0000EE60((void *)0x8008C5B0->unk0, *(void *)0x8007BAD0, (void *)0x8008C5B0->unk8, 0xA00, 0x8007BC40);
    (void *)0x8007BBF0->unk0 = (f32) (void *)0x8008C5B0->unk0;
    (void *)0x8007BBF0->unk4 = (f32) *(void *)0x8007BC44;
    (void *)0x8007BBF0->unk8 = (bitwise f32) (void *)0x8008C5B0->unk8;
    func_00011860((void *)0x8007BBF0->unk0, (void *)0x8007BBF0->unk4, (bitwise s32) (void *)0x8007BBF0->unk8, *(void *)0x8007BAF8, *(void *)0x8007BAFC, *(void *)0x8007BB00, *(void *)0x8007BAF4 * *(void *)0x8007BAF0);
}
