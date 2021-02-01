void func_80034C10(s32 arg0) {
    s32 temp_a0;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t1;
    void *temp_t3;
    void *temp_t4;
    void *temp_t5;
    void *temp_t5_2;
    void *temp_t6;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t9;

    if ((arg0 & 1) != 0) {
        temp_t8 = *(void *)0x80070A84;
        temp_t8->unkC = (s32) (temp_t8->unkC | 8);
    }
    if ((arg0 & 2) != 0) {
        temp_t3 = *(void *)0x80070A84;
        temp_t3->unkC = (s32) (temp_t3->unkC & -9);
    }
    if ((arg0 & 4) != 0) {
        temp_t9 = *(void *)0x80070A84;
        temp_t9->unkC = (s32) (temp_t9->unkC | 4);
    }
    if ((arg0 & 8) != 0) {
        temp_t4 = *(void *)0x80070A84;
        temp_t4->unkC = (s32) (temp_t4->unkC & -5);
    }
    if ((arg0 & 0x10) != 0) {
        temp_t0 = *(void *)0x80070A84;
        temp_t0->unkC = (s32) (temp_t0->unkC | 0x10);
    }
    if ((arg0 & 0x20) != 0) {
        temp_t5 = *(void *)0x80070A84;
        temp_t5->unkC = (s32) (temp_t5->unkC & -0x11);
    }
    if ((arg0 & 0x40) != 0) {
        temp_t8_2 = *(void *)0x80070A84;
        temp_t8_2->unkC = (s32) (temp_t8_2->unkC | 0x10000);
        temp_t1 = *(void *)0x80070A84;
        temp_t1->unkC = (s32) (temp_t1->unkC & -0x301);
    }
    if ((arg0 & 0x80) != 0) {
        temp_t6 = *(void *)0x80070A84;
        temp_t6->unkC = (s32) (temp_t6->unkC & 0xFFFEFFFF);
        temp_t0_2 = *(void *)0x80070A84;
        temp_t0_2->unkC = (s32) (temp_t0_2->unkC | (temp_t0_2->unk8->unk4 & 0x300));
    }
    temp_t5_2 = *(void *)0x80070A84;
    temp_a0 = __osDisableInt();
    temp_t5_2->unk0 = (u16) (temp_t5_2->unk0 | 8);
    __osRestoreInt(temp_a0);
}
