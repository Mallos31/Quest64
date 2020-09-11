void func_2cb4(void) {
    void *sp4C;
    s32 temp_s5;
    s32 temp_v0;

    *(void *)0x8007B348 = 0;
    sp4C = NULL;
    *(void *)0x8008FD0E = (u8)0;
    if (2 == *(void *)0x8007B2E0) {
loop_2:
        func_000314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_000011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_s5 = (*(void *)0x8007B2F4 * 0xD150) + 0x80301000;
        func_00026658();
        temp_v0 = *(void *)0x8007B348;
        if (temp_v0 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0 + 1);
loop_4:
            func_00034020(0x8007B9E8, &sp4C, 1);
            if (1 != *sp4C) {
                goto loop_4;
            }
        } else {
loop_6:
            func_00034020(0x8007B9E8, &sp4C, 1);
            if (2 != *sp4C) {
                goto loop_6;
            }
        }
        func_00034200(*(void *)0x8007B9D8, temp_s5, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (2 == *(void *)0x8007B2E0) {
            goto loop_2;
        }
    }
    if (*(void *)0x8008FD0E != 0) {
        func_00002EA0();
        *(void *)0x8007B2E8 = (u16)2;
    }
    func_00026A04();
loop_11:
    func_00034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_11;
    }
}
