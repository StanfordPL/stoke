

.text

.global Fld1_a
.type Fld1_a,  @function
Fld1_a:
    fld1
	fld1
	fld1
    ret


.global Fld1_b
.type Fld1_b,  @function
Fld1_b:
    fld1
	fld1
	fld1
    ret


.global FldzToTop3_a
.type FldzToTop3_a,  @function
FldzToTop3_a:
    fstp %st(0)
	fstp %st(0)
	fstp %st(0)
	fldz
	fldz
	fldz
    ret

.global mmx_save
.type mmx_save,  @function
mmx_save:
  fxsave (%rdi)
  RET


.global mmx_restore
.type mmx_restore,  @function
mmx_restore:
  fxrstor (%rdi)
  RET



