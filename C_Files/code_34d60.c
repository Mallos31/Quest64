s32 func_80034160(s32 arg0) {
    s32 temp_t2;
    s32 temp_v0;
    u32 temp_t3;
    s32 phi_t2;

    temp_t3 = *(void *)0x8006F410;
    temp_t2 = *(void *)0xA430000C;
    phi_t2 = temp_t2;
    if (temp_t2 != 0) {
        phi_t2 = temp_t2 | (((temp_t3 >> 0x10) ^ -1) & 0x3F);
    }
    temp_v0 = ((ERROR(unknown instruction: mfc0 $t4, $12) & 0xFF01) | ((temp_t3 ^ -1) & 0xFF00)) | (phi_t2 << 0x10);
    *(void *)0xA430000C = (s32) (((u32) ((arg0 & 0x3F0000) & temp_t3) >> 0xF) + 0x80070000)->unk1AB0;
    ERROR(unknown instruction: mtc0 $t4, $12);
    return temp_v0;
}

? func_80034200(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_s0;

    temp_s0 = func_8003D4D0();
    if (arg0->unk8 >= arg0->unk10) {
loop_1:
        if (arg2 != 1) {
            func_8003D4F0(temp_s0);
            return -1;
        }
        (*(void *)0x80070A00)->unk10 = (u16)8;
        func_8003D08C(arg0 + 4);
        if (arg0->unk8 >= arg0->unk10) {
            goto loop_1;
        }
    }
    *(arg0->unk14 + (((s32) (arg0->unkC + arg0->unk8) % (s32) arg0->unk10) * 4)) = arg1;
    arg0->unk8 = (s32) (arg0->unk8 + 1);
    if (*arg0->unk0 != 0) {
        func_80033C30(func_8003D1D4(arg0));
    }
    func_8003D4F0(temp_s0);
    return 0;
}

void func_80034350(void) {
    u32 phi_t0;

    phi_t0 = 0x80000000U;
loop_1:
    ERROR(unknown instruction: cache 0x1, ($t0));
    phi_t0 = phi_t0 + 0x10;
    if (phi_t0 < 0x80001FF0U) {
        goto loop_1;
    }
}
