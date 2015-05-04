  .text
  .globl _ZN2pp9URLLoaderC2Ei
  .type _ZN2pp9URLLoaderC2Ei, @function

#! file-offset 0x273c0
#! rip-offset  0x273c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2Ei:             #        0x273c0  0      
  pushq %rbx                       #  1     0x273c0  2      
  movl %edi, %ebx                  #  2     0x273c2  2      
  movl %ebx, %edi                  #  3     0x273c4  2      
  nop                              #  4     0x273c6  1      
  nop                              #  5     0x273c7  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x273c8  5      
  movl %ebx, %ebx                  #  7     0x273cd  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  8     0x273cf  8      
  popq %rbx                        #  9     0x273d7  2      
  popq %r11                        #  10    0x273d9  3      
  andl $0xffffffe0, %r11d          #  11    0x273dc  7      
  addq %r15, %r11                  #  12    0x273e3  3      
  jmpq %r11                        #  13    0x273e6  3      
  nop                              #  14    0x273e9  1      
  nop                              #  15    0x273ea  1      
                                                            
.size _ZN2pp9URLLoaderC2Ei, .-_ZN2pp9URLLoaderC2Ei

