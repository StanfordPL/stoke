  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x6ad20
#! rip-offset  0x6ad20
#! capacity    288 bytes

# Text                              #  Line  RIP      Bytes  
._sprintf_r:                        #        0x6ad20  0      
  subl $0x148, %esp                 #  1     0x6ad20  6      
  addq %r15, %rsp                   #  2     0x6ad26  3      
  movl %esi, %esi                   #  3     0x6ad29  2      
  movl %edx, %edx                   #  4     0x6ad2b  2      
  leal 0x13f(%rsp), %eax            #  5     0x6ad2d  7      
  movq %rcx, 0xa8(%rsp)             #  6     0x6ad34  8      
  nop                               #  7     0x6ad3c  1      
  movq %r8, 0xb0(%rsp)              #  8     0x6ad3d  8      
  movq %r9, 0xb8(%rsp)              #  9     0x6ad45  8      
  leal 0x80(%rsp), %ecx             #  10    0x6ad4d  7      
  movl %edi, %edi                   #  11    0x6ad54  2      
  nop                               #  12    0x6ad56  1      
  movl %eax, %eax                   #  13    0x6ad57  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  14    0x6ad59  6      
  movl %eax, %eax                   #  15    0x6ad5f  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  16    0x6ad61  6      
  movl %eax, %eax                   #  17    0x6ad67  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  18    0x6ad69  6      
  movl %eax, %eax                   #  19    0x6ad6f  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  20    0x6ad71  6      
  movl %eax, %eax                   #  21    0x6ad77  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  22    0x6ad79  6      
  movl %eax, %eax                   #  23    0x6ad7f  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  24    0x6ad81  6      
  movl %eax, %eax                   #  25    0x6ad87  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  26    0x6ad89  6      
  movl %eax, %eax                   #  27    0x6ad8f  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  28    0x6ad91  6      
  leal 0x150(%rsp), %eax            #  29    0x6ad97  7      
  movl %esi, (%rsp)                 #  30    0x6ad9e  3      
  movl %esi, 0x10(%rsp)             #  31    0x6ada1  4      
  movl %esp, %esi                   #  32    0x6ada5  2      
  movw $0x208, 0xc(%rsp)            #  33    0x6ada7  7      
  movl %eax, 0x88(%rsp)             #  34    0x6adae  7      
  xchgw %ax, %ax                    #  35    0x6adb5  3      
  leal 0x90(%rsp), %eax             #  36    0x6adb8  7      
  movl $0x7fffffff, 0x8(%rsp)       #  37    0x6adbf  8      
  movl $0x7fffffff, 0x14(%rsp)      #  38    0x6adc7  8      
  movw $0xffff, 0xe(%rsp)           #  39    0x6adcf  7      
  xchgw %ax, %ax                    #  40    0x6add6  3      
  movl $0x18, 0x80(%rsp)            #  41    0x6add9  11     
  movl $0x30, 0x84(%rsp)            #  42    0x6ade4  11     
  movl %eax, 0x8c(%rsp)             #  43    0x6adef  7      
  nop                               #  44    0x6adf6  1      
  nop                               #  45    0x6adf7  1      
  nop                               #  46    0x6adf8  1      
  callq ._svfprintf_r               #  47    0x6adf9  5      
  movl (%rsp), %edx                 #  48    0x6adfe  3      
  movl %edx, %edx                   #  49    0x6ae01  2      
  movb $0x0, (%r15,%rdx,1)          #  50    0x6ae03  5      
  addl $0x148, %esp                 #  51    0x6ae08  6      
  addq %r15, %rsp                   #  52    0x6ae0e  3      
  popq %r11                         #  53    0x6ae11  3      
  andl $0xffffffe0, %r11d           #  54    0x6ae14  7      
  addq %r15, %r11                   #  55    0x6ae1b  3      
  jmpq %r11                         #  56    0x6ae1e  3      
  nop                               #  57    0x6ae21  1      
                                                             
.size _sprintf_r, .-_sprintf_r

