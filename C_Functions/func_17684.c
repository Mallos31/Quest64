void func_17684(void *arg0, void *arg1) {
    void *temp_a3;
    void *temp_v1;

    temp_a3 = arg0;
    if (temp_a3->unk2C->unk18 != 2) {
        if ((arg1->unk5E & 1) != 0) {
            arg0 = temp_a3;
            func_0000ACC0(func_0000B140(arg1, temp_a3), 0, 0, 4, arg0->unk24);
            temp_v1 = *(void *)0x8007BAC8;
            temp_v1->unk2A = (u16) (temp_v1->unk2A + 1);
            return;
        }
        func_00006BEC(0, 4, temp_a3->unk24, temp_a3);
    }
}
