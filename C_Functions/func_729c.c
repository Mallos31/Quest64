void func_729c(u8 arg0) {
    (void *)0x8007BAB8->unk0 = (u16)0xC;
    (void *)0x8007BAB8->unk118 = arg0;
    (void *)0x8007BAB8->unk74 = (u16) ((void *)0x8007BAB8->unk74 | 1);
    (void *)0x8007BAB8->unk4 = (s16) (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00->unk116;
    func_0001D8B0(0x8007BACC, 0x17, 1, 0x16, 1, 1);
}
