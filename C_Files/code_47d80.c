? __osSiDeviceBusy(void) {
    if ((*(void *)0xA4800018 & 3) != 0) {
        return 1;
    }
    return 0;
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

? __osLeoInterrupt(void) {
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    void *sp30;
    void *sp2C;
    s32 sp28;
    void *sp24;
    s32 temp_t9;
    void *temp_t0;
    void *temp_t3;
    void *temp_t6;
    void *temp_t7;

    temp_t6 = *(void *)0x800955D4;
    temp_t7 = temp_t6 + 0x14;
    sp3C = 0;
    sp30 = temp_t7;
    temp_t0 = temp_t7 + (temp_t6->unk1A * 0x24);
    sp2C = temp_t0 + 0x18;
    sp38 = *(void *)0xA4600010;
    if ((sp38 & 1) != 0) {
        *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 & -0x801);
        temp_t0->unk18 = 0x1D;
        _osLeoAbnormalResume();
    } else {
        sp38 = *(void *)0xA4600010;
        if ((sp38 & 3) != 0) {
loop_3:
            sp38 = *(void *)0xA4600010;
            if ((sp38 & 3) != 0) {
                goto loop_3;
            }
        }
        sp3C = *(void *)0xA5000508;
        if ((sp3C & 0x2000000) != 0) {
            sp38 = *(void *)0xA4600010;
            if ((sp38 & 3) != 0) {
loop_6:
                sp38 = *(void *)0xA4600010;
                if ((sp38 & 3) != 0) {
                    goto loop_6;
                }
            }
            *(void *)0xA5000510 = (s32) (sp30->unk10 | 0x1000000);
            sp2C->unk0 = 0;
            return 0;
        }
        if (sp30->unk0 == 2) {

        } else {
            if ((sp3C & 0x8000000) != 0) {
                sp38 = *(void *)0xA4600010;
                if ((sp38 & 3) != 0) {
loop_12:
                    sp38 = *(void *)0xA4600010;
                    if ((sp38 & 3) != 0) {
                        goto loop_12;
                    }
                }
                sp3C = *(void *)0xA5000508;
                sp2C->unk0 = 0x16;
                _osLeoAbnormalResume();
                *(void *)0xA4600010 = 2;
                *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 | 0x100401);
            } else {
                if (sp30->unk0 == 1) {
                    if ((sp3C & 0x40000000) == 0) {
                        if ((sp30->unk8 + 1) != (sp30->unk4 * 0x55)) {
                            sp2C->unk0 = 0x18;
                            __osLeoResume();
                        } else {
                            *(void *)0xA4600010 = 2;
                            *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 | 0x100401);
                            sp2C->unk0 = 0;
                            _osLeoAbnormalResume();
                        }
                    } else {
                        sp2C->unk4 = (s32) (sp2C->unk4 + sp2C->unkC);
                        sp30->unk8 = (s32) (sp30->unk8 + 1);
                        func_8003D9F0(*(void *)0x800955D4, 1, 0x5000400, sp2C->unk4, sp2C->unkC);
                    }
                } else {
                    if (sp30->unk0 == 0) {
                        if (sp30->unk4 == 3) {
                            if ((sp2C->unk10 + 0x11) < sp30->unk8) {
                                sp2C->unk0 = 0;
                                __osLeoResume();
                            } else {
                                if ((sp3C & 0x40000000) == 0) {
                                    sp2C->unk0 = 0x17;
                                    __osLeoResume();
                                } else {
block_27:
                                    sp34 = *(void *)0xA5000510;
                                    if (((sp34 & 0x200000) == 0) || ((sp34 & 0x400000) == 0)) {
                                        if ((sp34 & 0x2000000) != 0) {
block_30:
                                            if ((u32) sp2C->unk10 >= 4U) {
                                                if ((sp30->unk4 != 3) || (sp30->unk8 >= 0x53)) {
                                                    sp2C->unk0 = 0x17;
                                                    __osLeoResume();
                                                } else {
block_35:
                                                    sp2C->unk10 = (s32) (sp2C->unk10 + 1);
block_36:
                                                    if ((sp3C & 0x10000000) != 0) {
                                                        if (sp30->unk8 != 0x57) {
                                                            sp2C->unk0 = 0x18;
                                                            __osLeoResume();
                                                        }
                                                        if ((sp30->unk4 == 2) && (sp30->unk6 == 0)) {
                                                            sp30->unk6 = (u16)1U;
                                                            sp30->unk8 = -1;
                                                            sp30->unk40 = (s32) (sp30->unk40 - sp30->unk48);
                                                            sp2C->unk0 = 0x16;
                                                        } else {
                                                            *(void *)0xA4600010 = 2;
                                                            *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 | 0x100401);
                                                            sp30->unk0 = 2;
                                                            sp2C->unk0 = 0;
                                                        }
                                                        func_8003D9F0(*(void *)0x800955D4, 0, 0x5000000, sp2C->unk8, sp2C->unkC * 4);
                                                    } else {
                                                        if (((sp30->unk8 == -1) && (sp30->unk4 == 2)) && (sp30->unk6 == 1)) {
                                                            sp24 = sp30 + 0x18;
                                                            if ((sp30->unk28 == 0) && (temp_t3 = sp30->unk20, ((temp_t3->unkC | ((temp_t3->unk0 | temp_t3->unk4) | temp_t3->unk8)) != 0))) {
                                                                sp30->unk18 = 0x18;
                                                                __osLeoResume();
                                                            } else {
                                                                *sp24 = 0;
                                                                _osLeoAbnormalResume();
block_51:
                                                                sp30->unk8 = (s32) (sp30->unk8 + 1);
                                                                if ((sp3C & 0x40000000) != 0) {
                                                                    if (sp30->unk8 < 0x55) {
                                                                        func_8003D9F0(*(void *)0x800955D4, 0, 0x5000400, sp2C->unk4, sp2C->unkC);
                                                                        sp2C->unk0 = 0;
                                                                        return 1;
                                                                    }
                                                                    sp2C->unk0 = 0x18;
                                                                    __osLeoResume();
                                                                } else {
                                                                    if (sp30->unk8 < 0x55) {
                                                                        sp2C->unk0 = 0x18;
                                                                        __osLeoResume();
                                                                    } else {

                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            goto block_51;
                                                        }
                                                    }
                                                }
                                            } else {
                                                temp_t9 = sp2C->unk10;
                                                sp28 = temp_t9;
                                                (sp2C + (temp_t9 * 4))->unk14 = (s32) (sp30->unk8 + 1);
                                                goto block_35;
                                            }
                                        } else {
                                            goto block_36;
                                        }
                                    } else {
                                        goto block_30;
                                    }
                                }
                            }
                        } else {
                            sp2C->unk4 = (s32) (sp2C->unk4 + sp2C->unkC);
                            goto block_27;
                        }
                    } else {
                        sp2C->unk0 = 4;
                        __osLeoResume();
                    }
                }
            }
        }
    }
    return 1;
}

void __osLeoResume(void) {
    void *sp1C;
    s32 sp18;

    sp1C = *(void *)0x800955D4 + 0x14;
    sp18 = *(void *)0xA4600010;
    if ((sp18 & 3) != 0) {
loop_1:
        sp18 = *(void *)0xA4600010;
        if ((sp18 & 3) != 0) {
            goto loop_1;
        }
    }
    *(void *)0xA5000510 = (s32) (sp1C->unk10 | 0x10000000);
    sp18 = *(void *)0xA4600010;
    if ((sp18 & 3) != 0) {
loop_3:
        sp18 = *(void *)0xA4600010;
        if ((sp18 & 3) != 0) {
            goto loop_3;
        }
    }
    *(void *)0xA5000510 = (s32) sp1C->unk10;
    _osLeoAbnormalResume();
    *(void *)0xA4600010 = 2;
    *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 | 0x100401);
}

void _osLeoAbnormalResume(void) {
    void *sp2C;
    void *sp28;
    s32 sp24;
    s32 temp_hi;
    void *temp_t8;

    sp2C = (void *)0x80093F60;
    temp_t8 = (void *)0x80093F20->unk40;
    sp28 = temp_t8;
    if (temp_t8 != 0) {
        if (temp_t8->unk8 < temp_t8->unk10) {
            temp_hi = (s32) (sp28->unkC + sp28->unk8) % (s32) sp28->unk10;
            sp24 = temp_hi;
            *(sp28->unk14 + (temp_hi * 4)) = (s32) sp2C->unk4;
            sp28->unk8 = (s32) (sp28->unk8 + 1);
            if (*sp28->unk0 != 0) {
                __osEnqueueThread(0x800709F8, __osPopThread(sp28));
            }
        }
    }
}
