s32 __osSpRawStartDma(s32 direction, s32 devAddr, s32 dramAddr, s32 size) {
    if (__osSpDeviceBusy() != 0) {
        return -1;
    }
    *(void *)SP_MEM_ADDR_REG = devAddr;
    *(void *)SP_DRAM_ADDR_REG = osVirtualToPhysical(dramAddr);
    if (direction == OS_READ) {
        *(void *)SP_WR_LEN_REG = (s32) (size - 1);
    } else {
        *(void *)SP_RD_LEN_REG = (s32) (size - 1);
    }
    return 0;
}

