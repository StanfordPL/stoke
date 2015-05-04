  .text
  .globl _Unwind_Backtrace
  .type _Unwind_Backtrace, @function

#! file-offset 0x5d080
#! rip-offset  0x5d080
#! capacity    352 bytes

# Text                       #  Line  RIP      Bytes  
._Unwind_Backtrace:          #        0x5d080  0      
  pushq %rbp                 #  1     0x5d080  2      
  movq %rsp, %rbp            #  2     0x5d082  3      
  pushq %r14                 #  3     0x5d085  3      
  leal 0x10(%rbp), %eax      #  4     0x5d088  3      
  pushq %r13                 #  5     0x5d08b  3      
  movl %edi, %r13d           #  6     0x5d08e  3      
  pushq %r12                 #  7     0x5d091  3      
  movl %esi, %r12d           #  8     0x5d094  3      
  movl %eax, %esi            #  9     0x5d097  2      
  pushq %rbx                 #  10    0x5d099  2      
  leal -0xb0(%rbp), %ebx     #  11    0x5d09b  6      
  nop                        #  12    0x5d0a1  1      
  subl $0x210, %esp          #  13    0x5d0a2  6      
  addq %r15, %rsp            #  14    0x5d0a8  3      
  movl 0x8(%rbp), %edx       #  15    0x5d0ab  3      
  movl %ebx, %edi            #  16    0x5d0ae  2      
  nop                        #  17    0x5d0b0  1      
  callq .uw_init_context_1   #  18    0x5d0b1  5      
  leal -0x220(%rbp), %eax    #  19    0x5d0b6  6      
  movq %rax, -0x228(%rbp)    #  20    0x5d0bc  7      
  nop                        #  21    0x5d0c3  1      
  nop                        #  22    0x5d0c4  1      
.L_5d0e0:                    #        0x5d0c5  0      
  movl -0x228(%rbp), %esi    #  23    0x5d0c5  6      
  movl %ebx, %edi            #  24    0x5d0cb  2      
  nop                        #  25    0x5d0cd  1      
  nop                        #  26    0x5d0ce  1      
  callq .uw_frame_state_for  #  27    0x5d0cf  5      
  cmpl $0x5, %eax            #  28    0x5d0d4  3      
  movl %eax, %r14d           #  29    0x5d0d7  3      
  je .L_5d180                #  30    0x5d0da  6      
  testl %eax, %eax           #  31    0x5d0e0  2      
  je .L_5d180                #  32    0x5d0e2  6      
  nop                        #  33    0x5d0e8  1      
  nop                        #  34    0x5d0e9  1      
.L_5d120:                    #        0x5d0ea  0      
  movl $0x3, %r14d           #  35    0x5d0ea  6      
  nop                        #  36    0x5d0f0  1      
  nop                        #  37    0x5d0f1  1      
.L_5d140:                    #        0x5d0f2  0      
  addl $0x210, %esp          #  38    0x5d0f2  6      
  addq %r15, %rsp            #  39    0x5d0f8  3      
  movl %r14d, %eax           #  40    0x5d0fb  3      
  popq %rbx                  #  41    0x5d0fe  2      
  popq %r12                  #  42    0x5d100  3      
  popq %r13                  #  43    0x5d103  3      
  popq %r14                  #  44    0x5d106  3      
  popq %r11                  #  45    0x5d109  3      
  movl %r11d, %ebp           #  46    0x5d10c  3      
  addq %r15, %rbp            #  47    0x5d10f  3      
  popq %r11                  #  48    0x5d112  3      
  nop                        #  49    0x5d115  1      
  andl $0xffffffe0, %r11d    #  50    0x5d116  7      
  addq %r15, %r11            #  51    0x5d11d  3      
  jmpq %r11                  #  52    0x5d120  3      
  nop                        #  53    0x5d123  1      
  nop                        #  54    0x5d124  1      
.L_5d180:                    #        0x5d125  0      
  movl %r12d, %esi           #  55    0x5d125  3      
  movl %ebx, %edi            #  56    0x5d128  2      
  xchgw %ax, %ax             #  57    0x5d12a  3      
  nop                        #  58    0x5d12d  1      
  andl $0xffffffe0, %r13d    #  59    0x5d12e  7      
  addq %r15, %r13            #  60    0x5d135  3      
  callq %r13                 #  61    0x5d138  3      
  testl %eax, %eax           #  62    0x5d13b  2      
  jne .L_5d120               #  63    0x5d13d  6      
  cmpl $0x5, %r14d           #  64    0x5d143  4      
  je .L_5d140                #  65    0x5d147  6      
  movl -0x228(%rbp), %esi    #  66    0x5d14d  6      
  movl %ebx, %edi            #  67    0x5d153  2      
  nop                        #  68    0x5d155  1      
  callq .uw_update_context   #  69    0x5d156  5      
  jmpq .L_5d0e0              #  70    0x5d15b  5      
  nop                        #  71    0x5d160  1      
  nop                        #  72    0x5d161  1      
                                                      
.size _Unwind_Backtrace, .-_Unwind_Backtrace

