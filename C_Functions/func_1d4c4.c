void func_1d4c4(void) {
    s32 temp_v0;
    s32 phi_v0;

    temp_v0 = *(void *)0x8007D1A0;
    if (temp_v0 == 7) {
        *(void *)0x8008C59C = 0.0f;
        *(void *)0x8008C5A0 = 0.0f;
    } else {
        *(void *)0x8008C59C = (f32) *(void *)0x8007D1CC;
        *(void *)0x8008C5A0 = (f32) *(void *)0x8007D1D4;
    }
    *(void *)0x8008C592 = (u16)0x305;
    *(void *)0x8008C596 = (u16)0;
    *(void *)0x8008C594 = (u16)0;
    *(void *)0x8008C568 = (s32) *(void *)0x8007D0A8;
    *(void *)0x8008C56C = (s32) *(void *)0x8007D0AC;
    *(void *)0x8008C570 = temp_v0;
    *(void *)0x8007D0A8 = 0x803AA164;
    *(void *)0x8007D0AC = 0x803AABB8;
    func_0000B7DC(temp_v0 - 1, (bitwise s32) *(void *)0x8008C59C, (bitwise s32) *(void *)0x8008C5A0, *(void *)0x8007D1DC, 0x8007C998);
    func_0000B2B8();
    *(void *)0x8007D1A0 = 0;
    *(void *)0x8007C990 = 1;
    *(void *)0x8008C59A = (u16) 1;
    func_00009260();
    *(void *)0x8008C558 = 1;
    *(void *)0x8008C538 = 0x8007C9BC;
    *(void *)0x8008C58C = (s16) 1;
    *(void *)0x8008C58E = (s16) 1;
    *(void *)0x8008C590 = (u16)0;
    *(void *)0x8008C598 = (s16) (*(void *)0x8008C59A - 1);
    phi_v0 = 0x29;
    if (*(void *)0x8008C570 != 8) {
        phi_v0 = 0;
    }
    func_000267B8((s32) (phi_v0 << 0x18) >> 0x18);
    func_00003A1C();
    func_00020888();
    *(void *)0x8008C434 = (f32) ((*(void *)0x8008C570 * 4) + 0x80050000)->unk-2D74;
    *(void *)0x8008C55C = func_00019A98(0, (bitwise s32) *(void *)0x8008C59C, *(void *)0x8007D1D0, (bitwise s32) *(void *)0x8008C5A0, (f32) ((f64) *(void *)0x8008C434 * *(void *)0x80071618));
}
