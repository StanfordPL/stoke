  .text
  .globl AddIfSatisfiedInput
  .type AddIfSatisfiedInput, @function

#! file-offset 0x67440
#! rip-offset  0x27440
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.AddIfSatisfiedInput:           #        0x27440  0      OPC=<label>         
  movl %edi, %esi               #  1     0x27440  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x27442  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %r10d  #  3     0x27444  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  4     0x27449  3      OPC=testl_r32_r32   
  je .L_27480                   #  5     0x2744c  2      OPC=je_label        
  movl %esi, %esi               #  6     0x2744e  2      OPC=movl_r32_r32    
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  7     0x27450  6      OPC=cmpb_m8_imm8    
  je .L_27480                   #  8     0x27456  2      OPC=je_label        
  movl 0x10049cea(%rip), %edi   #  9     0x27458  6      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  10    0x2745e  2      OPC=xchgw_ax_r16    
  jmpq .List_Add                #  11    0x27460  5      OPC=jmpq_label_1    
  nop                           #  12    0x27465  1      OPC=nop             
  nop                           #  13    0x27466  1      OPC=nop             
  nop                           #  14    0x27467  1      OPC=nop             
  nop                           #  15    0x27468  1      OPC=nop             
  nop                           #  16    0x27469  1      OPC=nop             
  nop                           #  17    0x2746a  1      OPC=nop             
  nop                           #  18    0x2746b  1      OPC=nop             
  nop                           #  19    0x2746c  1      OPC=nop             
  nop                           #  20    0x2746d  1      OPC=nop             
  nop                           #  21    0x2746e  1      OPC=nop             
  nop                           #  22    0x2746f  1      OPC=nop             
  nop                           #  23    0x27470  1      OPC=nop             
  nop                           #  24    0x27471  1      OPC=nop             
  nop                           #  25    0x27472  1      OPC=nop             
  nop                           #  26    0x27473  1      OPC=nop             
  nop                           #  27    0x27474  1      OPC=nop             
  nop                           #  28    0x27475  1      OPC=nop             
  nop                           #  29    0x27476  1      OPC=nop             
  nop                           #  30    0x27477  1      OPC=nop             
  nop                           #  31    0x27478  1      OPC=nop             
  nop                           #  32    0x27479  1      OPC=nop             
  nop                           #  33    0x2747a  1      OPC=nop             
  nop                           #  34    0x2747b  1      OPC=nop             
  nop                           #  35    0x2747c  1      OPC=nop             
  nop                           #  36    0x2747d  1      OPC=nop             
  nop                           #  37    0x2747e  1      OPC=nop             
  nop                           #  38    0x2747f  1      OPC=nop             
.L_27480:                       #        0x27480  0      OPC=<label>         
  popq %r11                     #  39    0x27480  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  40    0x27482  7      OPC=andl_r32_imm32  
  nop                           #  41    0x27489  1      OPC=nop             
  nop                           #  42    0x2748a  1      OPC=nop             
  nop                           #  43    0x2748b  1      OPC=nop             
  nop                           #  44    0x2748c  1      OPC=nop             
  addq %r15, %r11               #  45    0x2748d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  46    0x27490  3      OPC=jmpq_r64        
  nop                           #  47    0x27493  1      OPC=nop             
  nop                           #  48    0x27494  1      OPC=nop             
  nop                           #  49    0x27495  1      OPC=nop             
  nop                           #  50    0x27496  1      OPC=nop             
  nop                           #  51    0x27497  1      OPC=nop             
  nop                           #  52    0x27498  1      OPC=nop             
  nop                           #  53    0x27499  1      OPC=nop             
  nop                           #  54    0x2749a  1      OPC=nop             
  nop                           #  55    0x2749b  1      OPC=nop             
  nop                           #  56    0x2749c  1      OPC=nop             
  nop                           #  57    0x2749d  1      OPC=nop             
  nop                           #  58    0x2749e  1      OPC=nop             
  nop                           #  59    0x2749f  1      OPC=nop             
  nop                           #  60    0x274a0  1      OPC=nop             
  nop                           #  61    0x274a1  1      OPC=nop             
  nop                           #  62    0x274a2  1      OPC=nop             
  nop                           #  63    0x274a3  1      OPC=nop             
  nop                           #  64    0x274a4  1      OPC=nop             
  nop                           #  65    0x274a5  1      OPC=nop             
  nop                           #  66    0x274a6  1      OPC=nop             
                                                                             
.size AddIfSatisfiedInput, .-AddIfSatisfiedInput

