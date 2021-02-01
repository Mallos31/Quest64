? func_8003D650(void) {
    s32 sp1C;
    s32 temp_v0;

    *(void *)0x80095564 = (u8)2;
    *(void *)0x8009556C = 0xA5000000;
    *(void *)0x80095565 = (u8)3;
    *(void *)0x80095568 = (u8)6U;
    *(void *)0x80095566 = (u8)6U;
    *(void *)0x80095567 = (u8)2U;
    *(void *)0x80095569 = (u8)1;
    *(void *)0xA4600024 = 3;
    *(void *)0xA4600028 = (?32) *(void *)0x80095568;
    *(void *)0xA460002C = (?32) *(void *)0x80095566;
    *(void *)0xA4600030 = (?32) *(void *)0x80095567;
    *(void *)0x80095570 = 0;
    bzero(0x80095574, 0x60);
    temp_v0 = __osDisableInt();
    *(void *)0x80095560 = (s32) *(void *)0x8006F43C;
    *(void *)0x8006F43C = 0x80095560;
    sp1C = temp_v0;
    *(void *)0x800955D4 = 0x80095560;
    __osRestoreInt(sp1C);
    return 0x80095560;
}

void __osSiCreateAccessQueue(void) {
    *(void *)0x80070A10 = 1;
    func_80033F10(0x800955E8, 0x800955E0, 1);
    func_80034200(0x800955E8, 0, 0);
}

void __osSiGetAccess(void) {
    ? sp1C;

    if (*(void *)0x80070A10 == 0) {
        __osSiCreateAccessQueue();
    }
    func_80034020(0x800955E8, &sp1C, 1);
}

void __osSiRelAccess(void) {
    func_80034200(0x800955E8, 0, 0);
}

s32 func_8003D810(void *arg0) {
    void *phi_a0;

    phi_a0 = arg0;
    if (arg0 == 0) {
        phi_a0 = *(void *)0x80070A00;
    }
    return phi_a0->unk4;
}
