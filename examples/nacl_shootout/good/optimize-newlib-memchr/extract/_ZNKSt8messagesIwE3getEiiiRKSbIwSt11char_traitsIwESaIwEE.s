  .text
  .globl _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE
  .type _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, @function

#! file-offset 0xf2740
#! rip-offset  0xb2740
#! capacity    64 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE:  #        0xb2740  0      OPC=<label>         
  movl %esi, %esi                                           #  1     0xb2740  2      OPC=movl_r32_r32    
  pushq %rbx                                                #  2     0xb2742  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                           #  3     0xb2743  2      OPC=movl_r32_r32    
  movl %esi, %esi                                           #  4     0xb2745  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                  #  5     0xb2747  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                           #  6     0xb274b  2      OPC=movl_r32_r32    
  movl %eax, %eax                                           #  7     0xb274d  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                               #  8     0xb274f  5      OPC=movl_r32_m32    
  nop                                                       #  9     0xb2754  1      OPC=nop             
  nop                                                       #  10    0xb2755  1      OPC=nop             
  nop                                                       #  11    0xb2756  1      OPC=nop             
  nop                                                       #  12    0xb2757  1      OPC=nop             
  andl $0xffffffe0, %eax                                    #  13    0xb2758  6      OPC=andl_r32_imm32  
  nop                                                       #  14    0xb275e  1      OPC=nop             
  nop                                                       #  15    0xb275f  1      OPC=nop             
  nop                                                       #  16    0xb2760  1      OPC=nop             
  addq %r15, %rax                                           #  17    0xb2761  3      OPC=addq_r64_r64    
  callq %rax                                                #  18    0xb2764  2      OPC=callq_r64       
  movl %ebx, %eax                                           #  19    0xb2766  2      OPC=movl_r32_r32    
  popq %rbx                                                 #  20    0xb2768  1      OPC=popq_r64_1      
  popq %r11                                                 #  21    0xb2769  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                   #  22    0xb276b  7      OPC=andl_r32_imm32  
  nop                                                       #  23    0xb2772  1      OPC=nop             
  nop                                                       #  24    0xb2773  1      OPC=nop             
  nop                                                       #  25    0xb2774  1      OPC=nop             
  nop                                                       #  26    0xb2775  1      OPC=nop             
  addq %r15, %r11                                           #  27    0xb2776  3      OPC=addq_r64_r64    
  jmpq %r11                                                 #  28    0xb2779  3      OPC=jmpq_r64        
  nop                                                       #  29    0xb277c  1      OPC=nop             
  nop                                                       #  30    0xb277d  1      OPC=nop             
  nop                                                       #  31    0xb277e  1      OPC=nop             
  nop                                                       #  32    0xb277f  1      OPC=nop             
  nop                                                       #  33    0xb2780  1      OPC=nop             
  nop                                                       #  34    0xb2781  1      OPC=nop             
  nop                                                       #  35    0xb2782  1      OPC=nop             
  nop                                                       #  36    0xb2783  1      OPC=nop             
  nop                                                       #  37    0xb2784  1      OPC=nop             
  nop                                                       #  38    0xb2785  1      OPC=nop             
  nop                                                       #  39    0xb2786  1      OPC=nop             
  nop                                                       #  40    0xb2787  1      OPC=nop             
  nop                                                       #  41    0xb2788  1      OPC=nop             
  nop                                                       #  42    0xb2789  1      OPC=nop             
  nop                                                       #  43    0xb278a  1      OPC=nop             
  nop                                                       #  44    0xb278b  1      OPC=nop             
  nop                                                       #  45    0xb278c  1      OPC=nop             
                                                                                                         
.size _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, .-_ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE

