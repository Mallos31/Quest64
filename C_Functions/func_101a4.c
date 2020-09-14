? func_101a4(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (!(arg3 <= arg1) || !(arg1 < arg5)) {
        if (arg5 <= arg1) {
            if (arg1 < arg3) {
block_4:
                if (arg2 <= arg0) {
                    if (arg4 < arg0) {
                        return 1;
                    }
                }
                if ((arg0 <= arg2) && (arg0 < arg4)) {

                } else {
                    if (arg3 != arg5) {
                        if ((((arg1 - arg3) * ((arg2 - arg4) / (arg3 - arg5))) + arg2) < arg0) {
                            return 1;
                        }
                    }
                }
            }
        }
    } else {
        goto block_4;
    }
    return 0;
}
