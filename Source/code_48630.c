void func_80047A30(void *arg0) {
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_t0;
    void *phi_s2;
    void *phi_s1;

    if (arg0 == 0) {
        arg0 = *(void *)0x80070A00;
    } else {
        if (arg0->unk10 != 1) {
            __osDequeueThread(arg0->unk8, arg0);
        }
    }
    temp_t0 = *(void *)0x800709FC;
    if (temp_t0 == arg0) {
        *(void *)0x800709FC = (void *) temp_t0->unkC;
    } else {
        temp_s1 = *(void *)0x800709FC;
        temp_s2 = temp_s1->unkC;
        phi_s2 = temp_s2;
        phi_s1 = temp_s1;
        if (temp_s2 != 0) {
loop_7:
            if (phi_s2 == arg0) {
                phi_s1->unkC = (s32) arg0->unkC;
            } else {
                temp_s1_2 = phi_s2;
                temp_s2_2 = temp_s1_2->unkC;
                phi_s2 = temp_s2_2;
                phi_s1 = temp_s1_2;
                if (temp_s2_2 != 0) {
                    goto loop_7;
                }
            }
        }
    }
    if (arg0 == *(void *)0x80070A00) {
        __osDispatchThread();
    }
    __osRestoreInt(__osDisableInt());
}
