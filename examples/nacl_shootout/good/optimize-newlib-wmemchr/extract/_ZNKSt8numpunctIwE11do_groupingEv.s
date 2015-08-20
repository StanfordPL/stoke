  .text
  .globl _ZNKSt8numpunctIwE11do_groupingEv
  .type _ZNKSt8numpunctIwE11do_groupingEv, @function

#! file-offset 0xf7000
#! rip-offset  0xb7000
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE11do_groupingEv:  #        0xb7000  0      OPC=<label>         
  pushq %rbx                         #  1     0xb7000  1      OPC=pushq_r64_1     
  movl %esi, %esi                    #  2     0xb7001  2      OPC=movl_r32_r32    
  movl %edi, %ebx                    #  3     0xb7003  2      OPC=movl_r32_r32    
  movl %ebx, %edi                    #  4     0xb7005  2      OPC=movl_r32_r32    
  subl $0x10, %esp                   #  5     0xb7007  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xb700a  3      OPC=addq_r64_r64    
  movl %esi, %esi                    #  7     0xb700d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax        #  8     0xb700f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx               #  9     0xb7014  4      OPC=leal_r32_m16    
  movl %eax, %eax                    #  10    0xb7018  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi        #  11    0xb701a  5      OPC=movl_r32_m32    
  nop                                #  12    0xb701f  1      OPC=nop             
  nop                                #  13    0xb7020  1      OPC=nop             
  nop                                #  14    0xb7021  1      OPC=nop             
  nop                                #  15    0xb7022  1      OPC=nop             
  nop                                #  16    0xb7023  1      OPC=nop             
  nop                                #  17    0xb7024  1      OPC=nop             
  nop                                #  18    0xb7025  1      OPC=nop             
  nop                                #  19    0xb7026  1      OPC=nop             
  nop                                #  20    0xb7027  1      OPC=nop             
  nop                                #  21    0xb7028  1      OPC=nop             
  nop                                #  22    0xb7029  1      OPC=nop             
  nop                                #  23    0xb702a  1      OPC=nop             
  nop                                #  24    0xb702b  1      OPC=nop             
  nop                                #  25    0xb702c  1      OPC=nop             
  nop                                #  26    0xb702d  1      OPC=nop             
  nop                                #  27    0xb702e  1      OPC=nop             
  nop                                #  28    0xb702f  1      OPC=nop             
  nop                                #  29    0xb7030  1      OPC=nop             
  nop                                #  30    0xb7031  1      OPC=nop             
  nop                                #  31    0xb7032  1      OPC=nop             
  nop                                #  32    0xb7033  1      OPC=nop             
  nop                                #  33    0xb7034  1      OPC=nop             
  nop                                #  34    0xb7035  1      OPC=nop             
  nop                                #  35    0xb7036  1      OPC=nop             
  nop                                #  36    0xb7037  1      OPC=nop             
  nop                                #  37    0xb7038  1      OPC=nop             
  nop                                #  38    0xb7039  1      OPC=nop             
  nop                                #  39    0xb703a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE          #  40    0xb703b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0xb7040  2      OPC=movl_r32_r32    
  addl $0x10, %esp                   #  42    0xb7042  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  43    0xb7045  3      OPC=addq_r64_r64    
  popq %rbx                          #  44    0xb7048  1      OPC=popq_r64_1      
  popq %r11                          #  45    0xb7049  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  46    0xb704b  7      OPC=andl_r32_imm32  
  nop                                #  47    0xb7052  1      OPC=nop             
  nop                                #  48    0xb7053  1      OPC=nop             
  nop                                #  49    0xb7054  1      OPC=nop             
  nop                                #  50    0xb7055  1      OPC=nop             
  addq %r15, %r11                    #  51    0xb7056  3      OPC=addq_r64_r64    
  jmpq %r11                          #  52    0xb7059  3      OPC=jmpq_r64        
  nop                                #  53    0xb705c  1      OPC=nop             
  nop                                #  54    0xb705d  1      OPC=nop             
  nop                                #  55    0xb705e  1      OPC=nop             
  nop                                #  56    0xb705f  1      OPC=nop             
  nop                                #  57    0xb7060  1      OPC=nop             
  nop                                #  58    0xb7061  1      OPC=nop             
  nop                                #  59    0xb7062  1      OPC=nop             
  nop                                #  60    0xb7063  1      OPC=nop             
  nop                                #  61    0xb7064  1      OPC=nop             
  nop                                #  62    0xb7065  1      OPC=nop             
  nop                                #  63    0xb7066  1      OPC=nop             
  movl %eax, %edi                    #  64    0xb7067  2      OPC=movl_r32_r32    
  nop                                #  65    0xb7069  1      OPC=nop             
  nop                                #  66    0xb706a  1      OPC=nop             
  nop                                #  67    0xb706b  1      OPC=nop             
  nop                                #  68    0xb706c  1      OPC=nop             
  nop                                #  69    0xb706d  1      OPC=nop             
  nop                                #  70    0xb706e  1      OPC=nop             
  nop                                #  71    0xb706f  1      OPC=nop             
  nop                                #  72    0xb7070  1      OPC=nop             
  nop                                #  73    0xb7071  1      OPC=nop             
  nop                                #  74    0xb7072  1      OPC=nop             
  nop                                #  75    0xb7073  1      OPC=nop             
  nop                                #  76    0xb7074  1      OPC=nop             
  nop                                #  77    0xb7075  1      OPC=nop             
  nop                                #  78    0xb7076  1      OPC=nop             
  nop                                #  79    0xb7077  1      OPC=nop             
  nop                                #  80    0xb7078  1      OPC=nop             
  nop                                #  81    0xb7079  1      OPC=nop             
  nop                                #  82    0xb707a  1      OPC=nop             
  nop                                #  83    0xb707b  1      OPC=nop             
  nop                                #  84    0xb707c  1      OPC=nop             
  nop                                #  85    0xb707d  1      OPC=nop             
  nop                                #  86    0xb707e  1      OPC=nop             
  nop                                #  87    0xb707f  1      OPC=nop             
  nop                                #  88    0xb7080  1      OPC=nop             
  nop                                #  89    0xb7081  1      OPC=nop             
  callq ._Unwind_Resume              #  90    0xb7082  5      OPC=callq_label     
                                                                                  
.size _ZNKSt8numpunctIwE11do_groupingEv, .-_ZNKSt8numpunctIwE11do_groupingEv

