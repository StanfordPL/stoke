  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, @function

#! file-offset 0x11b480
#! rip-offset  0xdb480
#! capacity    96 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE:  #        0xdb480  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xdb480  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                            #  2     0xdb481  2      OPC=movl_r32_r32    
  movl %esi, %ecx                                            #  3     0xdb483  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                            #  4     0xdb485  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                   #  5     0xdb487  4      OPC=movl_r32_m32    
  shrq $0x20, %rsi                                           #  6     0xdb48b  4      OPC=shrq_r64_imm8   
  movl %ebx, %edi                                            #  7     0xdb48f  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %r8d                                       #  8     0xdb491  8      OPC=leal_r32_m16    
  xorl %esi, %esi                                            #  9     0xdb499  2      OPC=xorl_r32_r32    
  sarl $0x2, %r8d                                            #  10    0xdb49b  4      OPC=sarl_r32_imm8   
  nop                                                        #  11    0xdb49f  1      OPC=nop             
  subl $0xc, %eax                                            #  12    0xdb4a0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                            #  13    0xdb4a3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                   #  14    0xdb4a5  4      OPC=movl_r32_m32    
  shll $0x2, %edx                                            #  15    0xdb4a9  3      OPC=shll_r32_imm8   
  sarl $0x2, %edx                                            #  16    0xdb4ac  3      OPC=sarl_r32_imm8   
  nop                                                        #  17    0xdb4af  1      OPC=nop             
  nop                                                        #  18    0xdb4b0  1      OPC=nop             
  nop                                                        #  19    0xdb4b1  1      OPC=nop             
  nop                                                        #  20    0xdb4b2  1      OPC=nop             
  nop                                                        #  21    0xdb4b3  1      OPC=nop             
  nop                                                        #  22    0xdb4b4  1      OPC=nop             
  nop                                                        #  23    0xdb4b5  1      OPC=nop             
  nop                                                        #  24    0xdb4b6  1      OPC=nop             
  nop                                                        #  25    0xdb4b7  1      OPC=nop             
  nop                                                        #  26    0xdb4b8  1      OPC=nop             
  nop                                                        #  27    0xdb4b9  1      OPC=nop             
  nop                                                        #  28    0xdb4ba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj      #  29    0xdb4bb  5      OPC=callq_label     
  movl %ebx, %eax                                            #  30    0xdb4c0  2      OPC=movl_r32_r32    
  popq %rbx                                                  #  31    0xdb4c2  1      OPC=popq_r64_1      
  popq %r11                                                  #  32    0xdb4c3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  33    0xdb4c5  7      OPC=andl_r32_imm32  
  nop                                                        #  34    0xdb4cc  1      OPC=nop             
  nop                                                        #  35    0xdb4cd  1      OPC=nop             
  nop                                                        #  36    0xdb4ce  1      OPC=nop             
  nop                                                        #  37    0xdb4cf  1      OPC=nop             
  addq %r15, %r11                                            #  38    0xdb4d0  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  39    0xdb4d3  3      OPC=jmpq_r64        
  nop                                                        #  40    0xdb4d6  1      OPC=nop             
  nop                                                        #  41    0xdb4d7  1      OPC=nop             
  nop                                                        #  42    0xdb4d8  1      OPC=nop             
  nop                                                        #  43    0xdb4d9  1      OPC=nop             
  nop                                                        #  44    0xdb4da  1      OPC=nop             
  nop                                                        #  45    0xdb4db  1      OPC=nop             
  nop                                                        #  46    0xdb4dc  1      OPC=nop             
  nop                                                        #  47    0xdb4dd  1      OPC=nop             
  nop                                                        #  48    0xdb4de  1      OPC=nop             
  nop                                                        #  49    0xdb4df  1      OPC=nop             
  nop                                                        #  50    0xdb4e0  1      OPC=nop             
  nop                                                        #  51    0xdb4e1  1      OPC=nop             
  nop                                                        #  52    0xdb4e2  1      OPC=nop             
  nop                                                        #  53    0xdb4e3  1      OPC=nop             
  nop                                                        #  54    0xdb4e4  1      OPC=nop             
  nop                                                        #  55    0xdb4e5  1      OPC=nop             
  nop                                                        #  56    0xdb4e6  1      OPC=nop             
                                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE

