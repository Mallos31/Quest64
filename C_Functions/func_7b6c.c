void func_7b6c(void) {
    if (*(void *)0x8007BAB8 != 6) {
        if ((*(void *)0x8007BAC8)->unk4 != 0) {
            *(void *)0x8007BAB8 = (u16)3U;
            *(void *)0x8007BABC = (s16) ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00->unk56;
            *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 3);
            func_0001D8B0(0x8007BACC, 7, 1, *(void *)0x8007BC2C, 1, 1);
            func_000208B8(0x8007BACC);
            func_000268D4(0, 0x17, 0xFF);
        }
    }
}
