  .text
  .globl AddIfSatisfiedInput
  .type AddIfSatisfiedInput, @function

#! file-offset 0x679a0
#! rip-offset  0x279a0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.AddIfSatisfiedInput:           #        0x279a0  0      OPC=<label>         
  movl %edi, %esi               #  1     0x279a0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x279a2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %r10d  #  3     0x279a4  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  4     0x279a9  3      OPC=testl_r32_r32   
  je .L_279e0                   #  5     0x279ac  2      OPC=je_label        
  movl %esi, %esi               #  6     0x279ae  2      OPC=movl_r32_r32    
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  7     0x279b0  6      OPC=cmpb_m8_imm8    
  je .L_279e0                   #  8     0x279b6  2      OPC=je_label        
  movl 0x1004978a(%rip), %edi   #  9     0x279b8  6      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  10    0x279be  2      OPC=xchgw_ax_r16    
  jmpq .List_Add                #  11    0x279c0  5      OPC=jmpq_label_1    
  nop                           #  12    0x279c5  1      OPC=nop             
  nop                           #  13    0x279c6  1      OPC=nop             
  nop                           #  14    0x279c7  1      OPC=nop             
  nop                           #  15    0x279c8  1      OPC=nop             
  nop                           #  16    0x279c9  1      OPC=nop             
  nop                           #  17    0x279ca  1      OPC=nop             
  nop                           #  18    0x279cb  1      OPC=nop             
  nop                           #  19    0x279cc  1      OPC=nop             
  nop                           #  20    0x279cd  1      OPC=nop             
  nop                           #  21    0x279ce  1      OPC=nop             
  nop                           #  22    0x279cf  1      OPC=nop             
  nop                           #  23    0x279d0  1      OPC=nop             
  nop                           #  24    0x279d1  1      OPC=nop             
  nop                           #  25    0x279d2  1      OPC=nop             
  nop                           #  26    0x279d3  1      OPC=nop             
  nop                           #  27    0x279d4  1      OPC=nop             
  nop                           #  28    0x279d5  1      OPC=nop             
  nop                           #  29    0x279d6  1      OPC=nop             
  nop                           #  30    0x279d7  1      OPC=nop             
  nop                           #  31    0x279d8  1      OPC=nop             
  nop                           #  32    0x279d9  1      OPC=nop             
  nop                           #  33    0x279da  1      OPC=nop             
  nop                           #  34    0x279db  1      OPC=nop             
  nop                           #  35    0x279dc  1      OPC=nop             
  nop                           #  36    0x279dd  1      OPC=nop             
  nop                           #  37    0x279de  1      OPC=nop             
  nop                           #  38    0x279df  1      OPC=nop             
.L_279e0:                       #        0x279e0  0      OPC=<label>         
  popq %r11                     #  39    0x279e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  40    0x279e2  7      OPC=andl_r32_imm32  
  nop                           #  41    0x279e9  1      OPC=nop             
  nop                           #  42    0x279ea  1      OPC=nop             
  nop                           #  43    0x279eb  1      OPC=nop             
  nop                           #  44    0x279ec  1      OPC=nop             
  addq %r15, %r11               #  45    0x279ed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  46    0x279f0  3      OPC=jmpq_r64        
  nop                           #  47    0x279f3  1      OPC=nop             
  nop                           #  48    0x279f4  1      OPC=nop             
  nop                           #  49    0x279f5  1      OPC=nop             
  nop                           #  50    0x279f6  1      OPC=nop             
  nop                           #  51    0x279f7  1      OPC=nop             
  nop                           #  52    0x279f8  1      OPC=nop             
  nop                           #  53    0x279f9  1      OPC=nop             
  nop                           #  54    0x279fa  1      OPC=nop             
  nop                           #  55    0x279fb  1      OPC=nop             
  nop                           #  56    0x279fc  1      OPC=nop             
  nop                           #  57    0x279fd  1      OPC=nop             
  nop                           #  58    0x279fe  1      OPC=nop             
  nop                           #  59    0x279ff  1      OPC=nop             
  nop                           #  60    0x27a00  1      OPC=nop             
  nop                           #  61    0x27a01  1      OPC=nop             
  nop                           #  62    0x27a02  1      OPC=nop             
  nop                           #  63    0x27a03  1      OPC=nop             
  nop                           #  64    0x27a04  1      OPC=nop             
  nop                           #  65    0x27a05  1      OPC=nop             
  nop                           #  66    0x27a06  1      OPC=nop             
                                                                             
.size AddIfSatisfiedInput, .-AddIfSatisfiedInput

