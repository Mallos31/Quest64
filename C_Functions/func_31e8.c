void func_31e8(void) {
    void *sp4C;
    s32 temp_v0;

    sp4C = NULL;
    *(void *)0x8007B348 = 0;
    func_00031CB0();
    func_00100000();
    func_000267B8(0x14);
    if (*(void *)0x8007B2E0 == 5) {
loop_2:
        func_000314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_00026658();
        func_000011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
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
        func_00034200(*(void *)0x8007B9D8, (*(void *)0x8007B2F4 * 0xD150) + 0x80301000, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (*(void *)0x8007B2E0 == 5) {
            goto loop_2;
        }
    }
    func_000267B8(-1);
    func_00026658();
    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x8000);
loop_9:
    func_00034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_9;
    }
}
