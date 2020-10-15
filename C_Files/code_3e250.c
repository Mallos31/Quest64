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
    func_8003D430(0x80095574, 0x60);
    temp_v0 = func_8003D4D0();
    *(void *)0x80095560 = (s32) *(void *)0x8006F43C;
    *(void *)0x8006F43C = 0x80095560;
    sp1C = temp_v0;
    *(void *)0x800955D4 = 0x80095560;
    func_8003D4F0(sp1C);
    return 0x80095560;
}

void func_8003D750(void) {
    *(void *)0x80070A10 = 1;
    func_80033F10(0x800955E8, 0x800955E0, 1);
    func_80034200(0x800955E8, 0, 0);
}

void func_8003D7A0(void) {
    ? sp1C;

    if (*(void *)0x80070A10 == 0) {
        func_8003D750();
    }
    func_80034020(0x800955E8, &sp1C, 1);
}

void func_8003D7E4(void) {
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
